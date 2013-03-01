class AssignTeacher < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :subject
  belongs_to :course
end
