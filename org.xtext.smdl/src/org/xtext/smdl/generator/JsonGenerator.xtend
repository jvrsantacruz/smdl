package org.xtext.smdl.generator

import java.util.List

class JsonGenerator {
	def compile (Book book) {
		'''
{
  "book": {
    «compile(book.attrs)»
    «compile(book.binding)»,
    «compile_guards(book.guards)»,
    «compile_quires(book.quires)»
  }
}
		'''.toString.replaceAll(",(\\s*)([}\\]])", "$1$2")
	}
	
	def compile(Binding binding) {
		if (binding == null)
		    return ""

		return '''
"binding": {
  «compile(binding.attrs)»
}
		'''
	}
	
	def compile_guards(List<Guard> guards) {
'''
"guards": [
«FOR guard: guards»
  «compile(guard)»,
«ENDFOR»
]
'''
	}
	
	def compile(Guard guard) {
'''
{
	«compile(guard.attrs)»
}'''
	}
	
	def compile_quires(List<Quire> quires) {
'''
"quires": [
«FOR quire: quires»
  «compile(quire)»,
«ENDFOR»
]
'''
	}
	
	def compile(Quire quire) {
'''
{
	«compile(quire.attrs)»
	«compile_pages(quire.pages)»
}'''
	}

	def compile_pages(List<Page> pages) {
'''
"pages": [
«FOR page: pages»
  «compile(page)»,
«ENDFOR»
]
'''
	}
	
	def compile(Page page) {
'''
{
	«compile(page.attrs)»
	«compile_contents(page.contents)»
}'''
	}

	def compile_contents(List<Content> contents) {
'''
"contents": [
«FOR content: contents»
  «compile(content)»,
«ENDFOR»
]
'''
	}
	
	def compile(Content content) {
'''
{
	«compile(content.attrs)»
}'''
	}


	def compile(Attrs attrs) {
'''
«FOR attr: attrs.values» 
  «compile_attr(attr)»,
«ENDFOR»
'''
	}
	
	def compile_attr (Attr attr) {
		return '''"«attr.name»": «compile_value(attr.value)»'''
	}
	
	def dispatch compile_value (BoolValue attr) { 
		return 'true'
	}

	def dispatch compile_value (IntValue attr) { 
		return String.valueOf(attr.value)
	}

	def dispatch compile_value (StringValue attr) { 
		return '''"«attr.value.toString.replaceAll('"', '\"')»"'''
	}

	def dispatch compile_value (DecValue attr) { 
		return String.valueOf(attr.value)
	}

	def dispatch compile_value (IntRangeValue attr) { 
		return '''[«String.valueOf(attr.value.key)», «String.valueOf(attr.value.value)»]'''
	}

	def dispatch compile_value (DecRangeValue attr) { 
		return '''[«String.valueOf(attr.value.key)», «String.valueOf(attr.value.value)»]'''
	}
}