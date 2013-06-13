class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :q
      t.integer :people_id
      t.integer :user_id
      t.string :votecount
    end
  end
end
