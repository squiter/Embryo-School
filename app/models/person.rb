class Person < ActiveRecord::Base
  attr_accessible :name, :surname, :email

  validates :name, :email, presence: true
  validates :email, format: { with: /@.+\./ }
end
