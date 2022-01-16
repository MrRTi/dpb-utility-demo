# frozen_string_literal: true

require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  test 'valid movie' do
    movie = Movie.new(name: 'Prestige')
    assert movie.valid?
  end

  test 'invalid without name' do
    movie = Movie.new
    assert_not movie.valid?, 'movie is valid without a name'
    assert_not_nil movie.errors[:name], 'no validation error for name present'
  end
end
