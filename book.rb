
class Book
  # Belongs to an Author
  # An Author has many books

  ### CLASS DEFINITIONS ###

  # Class variables
  @@all = []

  # Class Methods
  def self.all
    @@all
  end

  ### INSTANCE DEFINITIONS ###

  # Instance readers and writers
  attr_reader :title, :author, :word_count

  # default constructor
  def initialize(title=nil, author=nil, word_count=nil)
    @title = title
    @author = author
    @word_count = word_count

    self.save
  end

  # Default save function
  def save
    self.class.all << self
  end

end