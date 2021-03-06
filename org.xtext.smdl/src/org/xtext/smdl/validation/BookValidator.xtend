/*
 * generated by Xtext 2.10.0
 */
package org.xtext.smdl.validation

import org.eclipse.xtext.validation.Check
import org.xtext.smdl.smdl.SmdlPackage
import java.util.HashSet
import org.xtext.smdl.smdl.Book
import org.eclipse.xtext.validation.AbstractDeclarativeValidator
import org.eclipse.xtext.validation.EValidatorRegistrar

/**
 * This class contains custom validation rules. 
 *
 * See https://www.eclipse.org/Xtext/documentation/303_runtime_concepts.html#validation
 */
class BookValidator extends AbstractDeclarativeValidator {
	
	override register(EValidatorRegistrar registrar) { 
		// not needed 
	}
	
	@Check
	def checkAttributes(Book obj) {
		System.out.println('checking')
		var attrs = obj.getAttrs().map[ a | a.name ];
		var set = new HashSet<String>(attrs);
		if (set.size() != attrs.size())
			error('Repeated attributes in Book', obj, SmdlPackage::eINSTANCE.getBook_Attrs())
	}

	@Check
	def checkMandatoryAttributes(Book obj) {
		var mandatory = #{'title'}
		var attrs = new HashSet<String>(obj.getAttrs().map[ a | a.name ])
		System.out.println('validator')
		System.out.println(mandatory)
		System.out.println(attrs)
		for(attr: mandatory) {
			if ( ! attrs.contains(attr) )
				error('''Missing mandatory attribute '«attr»''', obj, SmdlPackage::eINSTANCE.getBook_Attrs())
		}
	}
}