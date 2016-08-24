/*
 * generated by Xtext 2.10.0
 */
package org.xtext.smdl.tests

import com.google.inject.Inject
import org.eclipse.xtext.junit4.InjectWith
import org.eclipse.xtext.junit4.XtextRunner
import org.eclipse.xtext.junit4.util.ParseHelper
import org.junit.Assert
import org.junit.Test
import org.junit.runner.RunWith
import org.xtext.smdl.smdl.Book
import org.eclipse.xtext.junit4.validation.ValidationTestHelper
import org.xtext.smdl.smdl.SmdlPackage

@RunWith(XtextRunner)
@InjectWith(SmdlInjectorProvider)
class QuireTests {

	@Inject extension
	ParseHelper<Book> parseHelper
	
	@Inject extension
	ValidationTestHelper validation;

	@Test 
	def void load () {
		var result = '''
book
  key "value"
  quire end
end
		'''.parse
		
		var book = new org.xtext.smdl.generator.Book(result)
		Assert::assertEquals(1, book.getQuires().size())
	}

	@Test 
	def void loadMultipleQuires() {
		var result = '''
book
  key "value"
  quire end
  quire (2) end
  quire end
end
		'''.parse
		
		var book = new org.xtext.smdl.generator.Book(result)
		Assert::assertEquals(4, book.getQuires().size())
	}

}