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
% This file was created with JabRef 2.3.1.
% Encoding: UTF-8

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

	@BOOK{Anderson2005,
	  title = {Fracture mechanics, fundamentals and applications},
	  publisher = {CRC Press},
	  year = {2005},
	  editor = {Taylor and Francis group},
	  author = {Anderson, Ted L.},
	  edition = {3rd},
	  owner = {lecarme},
	  timestamp = {18.05.2009}
	}
@BOOK{Abaqus,
  title = {ABAQUS Theory Manual Version 6.3},
  publisher = {Hibbitt, Karlsson and Sorenson Inc.},
  year = {2002},
  owner = {lecarme},
  timestamp = {12.06.2009}
}

@comment{jabref-meta: selector_publisher:}

@comment{jabref-meta: selector_author:}

@comment{jabref-meta: selector_journal:}

@comment{jabref-meta: selector_keywords:}


x
#txt = "    beuha= {aussi\n heing?}, machin = truc\n\n, pim = {pam\n}"
#txt = "Zienkiewicz2"
txt = f.read
tree = parser.parse(txt)
puts tree
tree.elements.each do |element|
	puts element, element.text_value
	#.inspect
	#.label
end
