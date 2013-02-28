class Student < Person
  attr_accessible :course
  belongs_to :course
end
