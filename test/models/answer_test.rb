require "test_helper"

class AnswerTest < ActiveSupport::TestCase
  def setup
    @answer = answers(:firstAnswer)
  end

  test "should be valid" do
    assert @answer.valid?
  end

  test "content should be present" do
    @answer.content = " "
    assert_not @answer.valid?
  end
end

