require './student'
require './book'
require './rental'
require './persistor'
require './choice'
require 'json'

# people = []
# people.push(Student.new(age: 14, name: 'Maria', parent_permission: false))
# people.push(Student.new(age: 17, name: 'John', parent_permission: true))
# books = []
# books.push(Book.new('LOTR', 'Tolkien'))
# books.push(Book.new('42', 'Lorem Ipsum'))
# rentals = []
# rentals.push(Rental.new('2021-12-03', books[0], people[0]))
# rentals.push(Rental.new('2021-12-22', books[0], people[1]))
# rentals.push(Rental.new('2021-12-22', books[1], people[1]))

# # puts JSON.generate(rentals[0].to_json)

# p = Persistor.new
# p.save(people: people, books: books, rentals: rentals)

test_choice = HandleRentals.new
puts test_choice.read_rentals_json
