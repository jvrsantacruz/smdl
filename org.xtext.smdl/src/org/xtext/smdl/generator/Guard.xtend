package org.xtext.smdl.generator


class Guard {
	public Book parent = null;
	public Attrs attrs = null;

	new(Book book, int position, org.xtext.smdl.smdl.Guard guard) {
		parent = book;
		attrs = new Attrs(guard.getAttrs())

		// Register position as generated attribute
		attrs.set("pos", new Attr("pos", new IntValue(position)))
	}
	
	def Attr get(String key) {
		var value = attrs.get(key)
		if (value == null)
		    value = parent.get(key)
		return value
	}
}