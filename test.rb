require './student'
require './book'
require './rental'

student1 = Student.new(age: 14, name: 'Maria', parent_permission: false)
student2 = Student.new(age: 17, name: 'John', parent_permission: true)
book1 = Book.new("LOTR", "Tolkien")
book2 = Book.new("42", "Lorem Ipsum")
rental1 = Rental.new('2021-12-03', book1, student1)
rental2 = Rental.new('2021-12-22', book1, student2)
rental3 = Rental.new('2021-12-22', book2, student2)

puts rental1.to_json
puts ''
puts rental2.to_json
puts ''
puts rental3.to_json
