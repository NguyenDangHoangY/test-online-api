require "test_helper"

class QuestionTest < ActiveSupport::TestCase
  def setup
    @question = questions(:firstQ)
  end

  test "should be valid" do
    assert @question.valid?
  end

  test "content should be present" do
    @question.content = "  "
    assert_not @question.valid?
  end

  test "content should not be too long" do 
    @question.content = "a"*201
    assert_not @question.valid?
  end

  test "point should be present" do
    @question.point = " "
    assert_not @question.valid?
  end

  test "correct answer should be present" do
    @question.correctAnswer = " "
    assert_not @question.valid?
  end
end
