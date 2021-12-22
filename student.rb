require_relative 'person'
require 'json'

class Student < Person
  attr_reader :classroom

  def initialize(age:, name: 'Unknown', parent_permission: true, classroom: 'None')
    super(age: age, name: name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

  def to_s
    "[Student] #{super}"
  end

  def to_json(*)
    {
      'id' => @id,
      'age' => @age,
      'name' => @name,
      'pp' => @parent_permission,
      'classroom' => @classroom
    }.to_json
  end
end
