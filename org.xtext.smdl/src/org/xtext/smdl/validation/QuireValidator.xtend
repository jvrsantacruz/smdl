/*
 * generated by Xtext 2.10.0
 */
package org.xtext.smdl.validation

import org.eclipse.xtext.validation.Check
import org.xtext.smdl.smdl.SmdlPackage
import java.util.HashSet
import org.xtext.smdl.smdl.Quire

/**
 * This class contains custom validation rules. 
 *
 * See https://www.eclipse.org/Xtext/documentation/303_runtime_concepts.html#validation
 */
class QuireValidator extends AbstractSmdlValidator {
	
	@Check
	def checkBookAttributes(Quire obj) {
		var attrs = obj.getAttrs().map[ a | a.name ];
		var set = new HashSet<String>(attrs);
		if (set.size() != attrs.size())
			error('Repeated attributes in Book', obj, SmdlPackage::eINSTANCE.getBook_Attrs())
	}
}