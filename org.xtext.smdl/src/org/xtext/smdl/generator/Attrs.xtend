package org.xtext.smdl.generator

import java.util.HashMap
import org.xtext.smdl.generator.Attr
import org.xtext.smdl.smdl.Attribute
import org.eclipse.emf.common.util.EList


class Attrs {
	HashMap<String, Attr> attrs;
	
	new(EList<Attribute> attributes) {
		attrs = new HashMap<String, Attr>()
		for(attribute: attributes)
			attrs.put(attribute.getName(), new Attr(attribute))
	}
	
	def get(String name) {
		attrs.get(name)
	}
	
	def set(String name, Attr attr) {
		attrs.put(name, attr)
	}
	
	def keys() { attrs.keySet }
	def values() { attrs.values }
}