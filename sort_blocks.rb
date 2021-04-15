


# (5) The ruby array sort method can use a block to sort various arrays.  The block
# must compare between two elements of the array, a and b.  If a<b, it should evaluate to
# -1.  If a==b, it should evaluate to 0.  And if a>b, it should evaluate to 1. Here is the
# start of a program, which you should call sort_blocks.rb.

class Book
    attr_reader :author, :title, :count
    def initialize(author,title,count)
      @author = author
      @title = title
      @count = count
    end
    def to_s
      "author: #{author} title: #{title} count: #{count}"
    end
  end
  
  book_array = []
  book_array.push(Book.new("Beatrice Potter","Peter Rabbit",25))
  book_array.push(Book.new("Henry Fielding","Tom Jones",12))
  book_array.push(Book.new("Bob Woodward","All the President's Men",30))
  
  puts "\nSorting alphabetically by author"
  new_array = book_array.sort do |a,b|
    author1 = a.author.downcase
    author2 = b.author.downcase
    author1 <=> author2
  end
  puts new_array
  
  puts "\nSorting alphabetically by title"
  new_array = book_array.sort do |a,b|
    title1 = a.title.downcase
    title2 = b.title.downcase
    title1 <=> title2
  end
  puts new_array
  
  puts "\nSorting by copies"
  new_array = book_array.sort do |a,b|
    count1 = a.count
    count2 = b.count
    count1 <=> count2
  end
  puts new_array



