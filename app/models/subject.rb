class Subject < ActiveRecord::Base
  attr_accessible :name, :teachers
  validates :name, presence: true

  has_and_belongs_to_many :teachers
end
