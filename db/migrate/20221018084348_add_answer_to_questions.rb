class AddAnswerToQuestions < ActiveRecord::Migration[7.0]
  def change
    add_column :questions, :answer, :Integer
  end
end
