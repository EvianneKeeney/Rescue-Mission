class CreateQuestionIdToAnswers < ActiveRecord::Migration[5.0]
  def up
    add_column :answers, :question_id, :integer
  end
  def down
    remove_column :answers, :question_id
  end
end
