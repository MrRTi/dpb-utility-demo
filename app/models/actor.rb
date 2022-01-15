class Actor < ApplicationRecord
  validates_presence_of :full_name
  has_and_belongs_to_many :movies
  has_and_belongs_to_many :characters
end
