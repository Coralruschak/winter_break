require './lib/book'
require './lib/author'
require './lib/library'


dpl = Library.new("Denver Public Library")
#<Library:0x00007fbeea3653c0...>

dpl.name
"Denver Public Library"

dpl.books
[]

dpl.authors
[]

charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
#<Author:0x00007fbeea2d78b8...>

jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")    
#<Book:0x00007fbeeb3beca8...>

professor = charlotte_bronte.write("The Professor", "1857")
#<Book:0x00007fbeea8efd90...>

villette = charlotte_bronte.write("Villette", "1853")
#<Book:0x00007fbeea24fbe8...>

harper_lee = Author.new({first_name: "Harper", last_name: "Lee"})
#<Author:0x00007fbeea112730...>

mockingbird = harper_lee.write("To Kill a Mockingbird", "July 11, 1960")
#<Book:0x00007fbeeb1089f0...>

dpl.add_author(charlotte_bronte)
l.add_author(harper_lee)
l.authors
[#<Author:0x00007fbeea2d78b8...>, #<Author:0x00007fbeea112730...>]

dpl.books
[#<Book:0x00007fbeeb3beca8...>, #<Book:0x00007fbeea8efd90...>, #<Book:0x00007fbeea24fbe8...>, #<Book:0x00007fbeeb1089f0...>]