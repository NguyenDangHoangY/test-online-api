require "test_helper"

class QuestionTest < ActiveSupport::TestCase
  def setup
    @question = questions(:firstQ)
  end

  test "should be valid" do
    assert @question.valid?
  end
end
