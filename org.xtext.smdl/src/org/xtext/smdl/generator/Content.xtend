package org.xtext.smdl.generator

class Content {
	Page parent;
	Attrs attrs;

	new (Page page, String type, org.xtext.smdl.smdl.Content content) {
		parent = page
		attrs = new Attrs(content.getAttrs())

		// Add type to the attributes
		attrs.set('type', new Attr('type', new StringValue(type)))
	}
}