package org.xtext.smdl.generator

import org.xtext.smdl.generator.Book
import org.xtext.smdl.generator.Attrs


class Binding {
	public Book parent;
	public Attrs attrs;
	
	new(Book book, org.xtext.smdl.smdl.Binding binding) {
		parent = book;
		attrs = new Attrs(binding.getAttrs())
	}
}