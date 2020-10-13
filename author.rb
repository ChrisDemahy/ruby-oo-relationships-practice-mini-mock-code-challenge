class Author

  ### CLASS DEFINITIONS ###

  # Class variables
  @@all = []

  # Class Methods

  # Reader for all class variable
  def self.all
    @@all
  end

  # Returns author object with highest word count
  def self.most_words
    self.all.max do |author1, author2| 
      author1.total_words <=> author2.total_words
    end
  end

  ### INSTANCE DEFINITIONS ###

  # Instance readers and writers
  attr_reader :name

  # default constructor
  def initialize(name=nil)
    @name = name
  
    self.save
  end

  # default save function
  def save
    self.class.all << self
  end

  # returns all books associated with this author
  def books
    Book.all.select do |book|
      book.author == self
    end
  end

  # initializes a book and associates it with this author
  def write_book(title=nil, word_count=nil)
    Book.new(title, self, word_count)
  end

  def total_words
    self.books.map {|book| book.word_count}.reduce(:+)
  end
end
