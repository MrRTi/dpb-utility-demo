# frozen_string_literal: true

class Movie < ApplicationRecord
  has_many :characters, dependent: :destroy
  has_and_belongs_to_many :actors

  validates :name, presence: true
end
