class Teacher < Person
  attr_accessible :subjects

  has_and_belongs_to_many :subjects
end
