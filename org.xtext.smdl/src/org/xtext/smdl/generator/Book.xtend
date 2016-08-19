package org.xtext.smdl.generator

import java.util.ArrayList
import org.xtext.smdl.generator.Attrs
import org.xtext.smdl.generator.Quire
import org.xtext.smdl.generator.Guard
import org.xtext.smdl.generator.Binding


class Book {
	
	Attrs attrs;
	Binding binding;
	ArrayList<Quire> quires;
	ArrayList<Guard> guards;
	
	new(org.xtext.smdl.smdl.Book book) {
		attrs = new Attrs(book.getAttrs())
		quires = new ArrayList<Quire>()
		guards = new ArrayList<Guard>()
		
		// Add optional Binding
		if (book.getBinding() != null)
			binding = new Binding(this, book.getBinding())

		// Separate Quires from Guards
		for(item: book.getItems())
			switch item {
				org.xtext.smdl.smdl.Quire: add(item)
				org.xtext.smdl.smdl.Guard: add(item)
			}
	}

	def get(String key) {
		attrs.get(key)
	}

	def add(org.xtext.smdl.smdl.Quire quire) {
		var num = quire.getNum().getN()
		num = if (num > 0) num else 1
		for(var i = 0; i < num; i++)
			quires.add(new Quire(this, quires.size() + 1, quire))
	}

	def add(org.xtext.smdl.smdl.Guard guard) {
		var num = guard.getNum().getN()
		num = if (num > 0) num else 1
		for(var i = 0; i < num; i++)
			guards.add(new Guard(this, guards.size() + 1, guard))
	}

	def getAttrs() { attrs }
	def getBinding() { binding }
	def getQuires() { quires }
	def getGuards() { guards }
}