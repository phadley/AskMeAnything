class QuestStoText < ActiveRecord::Migration
 def change
    remove_column :questions, :q, :string
    add_column :questions, :q, :text
  end
end
