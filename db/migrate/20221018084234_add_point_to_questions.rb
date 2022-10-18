class AddPointToQuestions < ActiveRecord::Migration[7.0]
  def change
    add_column :questions, :point, :Float
  end
end
