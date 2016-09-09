package org.xtext.smdl.generator

import java.util.ArrayList


class Quire {
	Book parent;
	Attrs attrs;
	ArrayList<Page> pages;

	new(Book book, int position, org.xtext.smdl.smdl.Quire quire) {
		parent = book;
		attrs = new Attrs(quire.getAttrs())
		// Register position as generated attribute
		attrs.set("pos", new Attr("pos", new IntValue(position)))

		// Register pages
		pages = new ArrayList<Page>();
		for(page: quire.getPages())
			add(page)
	}

	def add(org.xtext.smdl.smdl.Page page) {
		var num = page.getNum().getN()
		num = if (num > 0) num else 1
		for(var i = 0; i < num; i++)
			pages.add(new Page(this, pages.size() + 1, page))
	}

	def Attr get(String key) {
		var value = attrs.get(key)
		if (value == null)
		    value = parent.get(key)
		return value
	}

	def getAttrs() { attrs }
	def getPages() { pages }
}