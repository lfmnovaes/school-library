require './student'
require './teacher'
require './classroom'
require './book'
require './rental'

teacher1 = Teacher.new(specialization: 'Math', age: 42, name: 'John Doe')
p teacher1

class1 = Classroom.new('3A')

student1 = Student.new(age: 18, name: 'Jose', parent_permission: false)
student2 = Student.new(age: 17, name: 'Maria', parent_permission: false)
student3 = Student.new(age: 16)
p student1
p student1.play_hooky
class1.add_student(student1)
p student1.classroom.label

p class1.students

book1 = Book.new('Lorem Ipsum', 'Latin')
book2 = Book.new('LOTR', 'JRR Tolkien')

Rental.new('2020-01-01', book1, student1)
Rental.new('2021-05-13', book2, student3)
Rental.new('2020-04-03', book1, student2)
Rental.new('2021-12-16', book2, student3)

p(book1.rentals.map { |rental| "#{rental.date} - #{rental.book.title} - #{rental.person.name}" })
p(book2.rentals.map { |rental| "#{rental.date} - #{rental.book.title} - #{rental.person.name}" })
p(student1.rentals.map { |rental| "#{rental.book.title} - #{rental.book.author}" })
p(student3.rentals.map { |rental| "#{rental.book.title} - #{rental.book.author}" })
