#!/usr/bin/env ruby

require 'rubygems'
require 'treetop'

Treetop.load "BibTex"

parser = BibTexParser.new


f = File.open('bibliographie.bib')
#tree = parser.parse(f.read)

=begin
=end
txt = <<x
	@BOOK{Zienkiewicz2,
		title = {The Finite Element Method},
		publisher = {Butterworth-Heinemann},
		year = {2000},
		author = {O.C. Zienkiewicz and R.L. Taylor},
		volume = {Solid Mechanics},
		edition = {Fifth Edition},
		file = {:home/lecarme/Documents/Biblio/Books and thesis/Finite Element Method
		- Solid mechanics - Zienkiewicz and Taylor.pdf:PDF},
		owner = {lecarme},
		timestamp = {27.01.2009}
	}


x
#txt = "    beuha= {aussi\n heing?}, machin = truc\n\n, pim = {pam\n}"
#txt = "Zienkiewicz2"
tree = parser.parse(txt)
puts txt, tree
tree.elements.each do |element|
	puts element, element.text_value
	#.inspect
	#.label
end
