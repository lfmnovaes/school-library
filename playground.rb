require './person'

person1 = Person.new(age:42, name:"John Doe", parent_permission:false)
p person1
p person1.can_use_services?

person2 = Person.new(age:17, name:"Maria", parent_permission:false)
p person2
p person2.can_use_services?

person3 = Person.new(age:16, parent_permission:true)
p person3
p person3.can_use_services?

