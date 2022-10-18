class RemoveIsCorrectFromAnswers < ActiveRecord::Migration[7.0]
  def change
    remove_column :answers, :iscorrect, :boolean
  end
end
