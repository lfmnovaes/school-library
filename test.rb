require './student'
require './book'
require './rental'
require './persistor'
require './choice'
require 'json'

people = HandlePerson.new
people.read_people_json

books = HandleBooks.new
books.read_books_json

rentals = HandleRentals.new
rentals.read_rentals_json(people.people, books.books)
rentals.all_rentals
