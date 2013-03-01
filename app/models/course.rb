class Course < ActiveRecord::Base
  attr_accessible :custom_id, :students
  attr_accessor :custom_id
  has_many :students

  has_many :assign_teachers
  has_many :teachers, through: :assign_teachers
  has_many :subjects, through: :assign_teachers

  validates :custom_id, presence: true

  def to_s
    custom_id
  end
end
