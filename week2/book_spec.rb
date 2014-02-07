require './book.rb'

describe Book do

  before :each do
  		@book = Book.new 542, "Programming Ruby"
  end   
 
  context "::library_count" do #two columns means this is a class method, not an instance method
  	it "should tell us how many books are in the library" do
  		12.times{ Book.new 50}
  		Book.library_count.should eq 13
  	end
  end

  context  "#pages" do
  	#let book: {Book.new} #not a good way
    it "should have a pages" do
      @book.should respond_to "pages"
    end

    it "should allow us to get the number of pages" do
    	@book.pages.should eq 542 # reader
     end
   end 

   context "#title" do
   	it "should let us read a title" do
   		@book.title.should eq "Programming Ruby" # getter, reader
   	end 
   end

end