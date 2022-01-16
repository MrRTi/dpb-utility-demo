# frozen_string_literal: true

class Character < ApplicationRecord
  belongs_to :movie
  has_and_belongs_to_many :actors

  validates :name, presence: true
end
