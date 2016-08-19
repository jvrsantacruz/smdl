package org.xtext.smdl.generator
import org.xtext.smdl.smdl.Attribute


class Attr {
	
	String _name;
	Value _value;
	
	new (String name, Value value) {
		_name = name
		_value = value
	}

	new (Attribute attr) { 
		_name = attr.getName()
		_value = Value::create(attr)
	}

	def name() { return _name }
	def value() { return _value }
}