require_relative 'person'
require 'json'

class Teacher < Person
  def initialize(specialization:, age:, name: 'Unknown', parent_permission: true)
    super(age: age, name: name, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_services
    true
  end

  def to_s
    "[Teacher] #{super}"
  end

  def to_json
    {
      'id' => @id,
      'age' => @age,
      'name' => @name,
      'specialization' => @specialization
    }.to_json
  end
end
