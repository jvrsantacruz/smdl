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
class GuardTests {

	@Inject extension
	ParseHelper<Book> parseHelper
	
	@Inject extension
	ValidationTestHelper validation;

	@Test 
	def void load() {
		'''
book
  title "The Title of the Book"
  description "The Book Description"
  page (2)
    description "Empty page"
  end
end
		'''.parse.assertNoErrors
	}

	@Test 
	def void loadMultipleGuard() {
		var result = '''
book
  title "Book title"
  page end
  page (2) end
end
		'''.parse
		
		var book = new org.xtext.smdl.generator.Book(result)
		Assert::assertEquals(3, book.getGuards().size())
	}

	@Test 
	def void repeatedAttributes () {
		'''
book
  title "Book title"
  page
    description "value"
    description "value"
  end
end
		'''.parse.assertError(SmdlPackage.Literals.GUARD, "Repeated attributes in Guard")
	}

}
