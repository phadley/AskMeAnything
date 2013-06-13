class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.boolean :vote_for
      t.integer :question_id
      t.integer :user_id
    end
  end
end
