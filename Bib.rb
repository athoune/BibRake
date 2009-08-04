#!/usr/bin/env ruby

require 'rubygems'
require 'treetop'

Treetop.load "BibTex"

parser = BibTexParser.new

f = File.open('bibliographie.bib')
parser.parse(f.read).elements.each do |book|
	puts book.label
end
