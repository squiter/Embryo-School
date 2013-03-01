class Teacher < Person
  attr_accessible :subjects

  has_and_belongs_to_many :subjects
  has_many :teaches, class_name: AssignTeacher
  has_many :courses, through: :teaches
end
