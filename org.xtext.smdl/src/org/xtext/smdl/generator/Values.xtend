package org.xtext.smdl.generator

import java.math.BigDecimal
import org.xtext.smdl.smdl.AttrBool
import org.xtext.smdl.smdl.AttrStr
import org.xtext.smdl.smdl.AttrInt
import org.xtext.smdl.smdl.AttrDec
import org.xtext.smdl.smdl.AttrIntRange
import org.xtext.smdl.smdl.AttrDecRange


abstract class Value implements Valued {
	def dispatch static create (AttrBool attr) { 
		new BoolValue(true)
	}

	def dispatch static create (AttrInt attr) { 
		new IntValue(attr.getValue())
	}

	def dispatch static create (AttrStr attr) { 
		new StringValue(attr.getValue())
	}

	def dispatch static create (AttrDec attr) { 
		new DecValue(attr.getValue())
	}

	def dispatch static create (AttrIntRange attr) { 
		new IntRangeValue(new Pair<Integer, Integer>(attr.getStart(), attr.getEnd()))
	}

	def dispatch static create (AttrDecRange attr) { 
		new DecRangeValue(new Pair<BigDecimal, BigDecimal>(attr.getStart(), attr.getEnd()))
	}
}


class BoolValue extends Value {
	boolean _value;
	
	new(boolean value) {
		_value = value
	}
	
	override def value() {
		return _value;
	}
}


class StringValue extends Value {
	String _value;
	
	new(String value) {
		_value = value
	}
	
	override def value() {
		return _value;
	}
}

class IntValue extends Value {
	int _value;
	
	new(Integer value) {
		_value = value
	}
	
	override def value() {
		return _value;
	}
}

class DecValue extends Value {
	BigDecimal _value;
	
	new(BigDecimal value) {
		_value = value
	}
	
	override def value() {
		return _value;
	}
}

class IntRangeValue extends Value {
	Pair<Integer, Integer> _value;
	
	new(Pair<Integer, Integer> value) {
		_value = value
	}
	
	def override Pair<Integer,Integer> value() {
		return _value;
	}
}

class DecRangeValue extends Value {
	Pair<BigDecimal, BigDecimal> _value;

	new(Pair<BigDecimal, BigDecimal> value) {
		_value = value
	}

	def override Pair<BigDecimal, BigDecimal> value() {
		return _value;
	}
}