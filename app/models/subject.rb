class Subject < ActiveRecord::Base
  attr_accessible :name, :teachers
  validates :name, presence: true

  has_and_belongs_to_many :teachers
  has_many :assign_teachers
  has_many :courses, through: :assign_teachers
end
