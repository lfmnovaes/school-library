require './person'
require './student'
require './teacher'
require './classroom'

person1 = Person.new(42, 'John Doe', false)

class1 = Classroom.new('3A')

student1 = Student.new(18, 'Jose', false)
student2 = Student.new(17, 'Maria', false)
student3 = Student.new(16, true)
p student1
p student1.play_hooky
class1.add_student(student1)
p student1.classroom.label

p class1.students

teacher1 = Teacher.new('Math', 33)
p teacher1
p teacher1.can_use_services?

person2 = Person.new(18, 'aaabbbcccdddeee')
p person2
p person2.validate_name?
p person2
