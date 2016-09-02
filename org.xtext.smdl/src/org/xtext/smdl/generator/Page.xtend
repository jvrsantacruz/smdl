package org.xtext.smdl.generator

import java.util.ArrayList

class Page {
	Quire parent
	Attrs attrs
	ArrayList<Content> contents

	new (Quire quire, int position, org.xtext.smdl.smdl.Page page) {
		parent = quire
		attrs = new Attrs(page.getAttrs())

		// Register position as generated attribute
		attrs.set("pos", new Attr("pos", new IntValue(position)))

		// Register contents
		contents = new ArrayList<Content>()
		for(content: page.getContents())
			add(content)
	}
	
	def add(org.xtext.smdl.smdl.Content content) {
		var num = content.getNum().getN()
		num = if (num > 0) num else 1
		for(var i = 0; i < num; i++)
			contents.add(new Content(this, "type", content))
	}

	def getAttrs() { attrs }
	def getContents() { contents }
}