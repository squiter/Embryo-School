class Course < ActiveRecord::Base
  attr_accessible :custom_id, :students
  attr_accessor :custom_id
  has_many :students

  validates :custom_id, presence: true

  def to_s
    custom_id
  end
end
