class Movie < ApplicationRecord
  has_many :characters
  has_and_belongs_to_many :actors

  validates_presence_of :name
end
