#!/usr/bin/env ruby

require 'rubygems'
require 'treetop'

Treetop.load "BibTex.tt"

parser = BibTexParser.new


f = File.open('bibliographie.bib')
bib = parser.parse(f.read)
puts bib
bib.elements.each do |element|
	puts element
	#.inspect
	#.label
end
