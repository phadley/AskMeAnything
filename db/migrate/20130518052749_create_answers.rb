class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :a
      t.integer :people_id
      t.integer :question_id
    end
  end
end
