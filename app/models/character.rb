class Character < ApplicationRecord
  belongs_to :movie
  has_and_belongs_to_many :actors

  validates_presence_of :name, :movie_id
end
