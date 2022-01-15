class Character < ApplicationRecord
  belongs_to :movie

  validates_presence_of :name, :movie_id
end
