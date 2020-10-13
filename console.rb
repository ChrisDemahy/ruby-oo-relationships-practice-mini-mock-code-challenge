require 'pry'
require_relative './book'
require_relative './author'



author1 = Author.new("Chris Demahy")
author2 = Author.new("jeff bezos")

book1 = Book.new( "ruby101", author1, 500 )
book2 = Book.new( "How To Look Down on People", author2, 150)
book3 = Book.new( "How to use Slack", author1, 100)

binding.pry