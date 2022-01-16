# frozen_string_literal: true

class Actor < ApplicationRecord
  validates :full_name, presence: true
  has_and_belongs_to_many :movies
  has_and_belongs_to_many :characters
end
