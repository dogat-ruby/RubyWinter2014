$global_hello = "hi there"


module Library

 class Book
 HELLO = "hello I shouldn't change" #constant
  #reader, getter
  #attr_reader :pages #if you use this instead of def pages
  def pages
    @pages 
  end

  #writer, setter
  #attr_writer : pages #it generates the writer
  def pages= number_of_pages
  	@pages = number_of_pages
  end

  #attr_accessor :pages, :title # it generates both reader and writer, you usually don't test attr ancessors, maybe if there is a custom functionality 
 
  attr_accessor :title
  
  @@library_count =0

 def  self.library_count #Book.library_count
 	@@library_count
 end
  #class << self
  #def is here
  #end

  # with initialize you set the starting values
  def initialize pages, title ="N/A" #Now the title is not required
   	@pages = pages
  	@title = title
  	@@library_count +=1 #everytime we initialize a book, it will add to the counter
  end 

  def happy
  	$global_hello ="hello"
  end
 #if you had 2 instances of the book class book1 cannot see the variable of book2. it can only see the reader and writer methods


 end
end