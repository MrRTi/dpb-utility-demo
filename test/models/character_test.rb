# frozen_string_literal: true

require 'test_helper'

class CharacterTest < ActiveSupport::TestCase
  def setup
    @movie = movies(:prestige)
  end

  test 'valid character' do
    character = Character.new(name: 'Robert "The Great Danton" Angier', movie: @movie)
    assert character.valid?
  end

  test 'invalid without name' do
    character = Character.new(movie: @movie)
    assert_not character.valid?, 'character is valid without a name'
    assert_not_nil character.errors[:name], 'no validation error for name present'
  end

  test 'invalid without movie' do
    character = Character.new(name: 'Robert "The Great Danton" Angier')
    assert_not character.valid?, 'character is valid without a movie'
    assert_not_nil character.errors[:movie], 'no validation error for movie present'
  end
end
