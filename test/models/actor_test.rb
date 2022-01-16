# frozen_string_literal: true

require 'test_helper'

class ActorTest < ActiveSupport::TestCase
  test 'valid actor' do
    actor = Actor.new(full_name: 'Will Smith')
    assert actor.valid?
  end

  test 'invalid without name' do
    actor = Actor.new
    assert_not actor.valid?, 'actor is valid without a name'
    assert_not_nil actor.errors[:full_name], 'no validation error for full_name present'
  end
end
