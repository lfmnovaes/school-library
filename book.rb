require './rental'
require 'json'

class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(date, person)
    Rental.new(date, self, person)
  end

  def to_s
    "Title: \"#{title}\", Author: #{author}"
  end

  def to_json(*)
    {
      'title' => @title,
      'author' => @author
    }.to_json
  end
end
