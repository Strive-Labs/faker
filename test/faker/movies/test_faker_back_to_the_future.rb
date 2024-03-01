# frozen_string_literal: true

require_relative '../../test_helper'

class TestFakerBackToTheFuture < Test::Unit::TestCase
  def setup
    @tester = Faker::Movies::BackToTheFuture
  end

  def test_character
    assert_match(/\w+/, @tester.character)
  end

  def test_date
    assert_match(/\w+/, @tester.date)
  end

  def test_quote
    assert_match(/\w+/, @tester.quote)
  end
end
