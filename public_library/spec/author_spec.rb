require './lib/book'
require './lib/author'

RSpec.describe Author do
  
end


charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
#<Author:0x00007fb898081850...>

charlotte_bronte.name
"Charlotte Bronte"

charlotte_bronte.books
[]

jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
#<Book:0x00007fb896e22538...>

jane_eyre.class
Book

jane_eyre.title
"Jane Eyre"

villette = charlotte_bronte.write("Villette", "1853")
#<Book:0x00007fb8980aaca0...>

charlotte_bronte.books
[#<Book:0x00007fb896e22538...>, #<Book:0x00007fb8980aaca0...>]
