class ReplaceVotecount < ActiveRecord::Migration
 def change
    remove_column :questions, :votecount, :string
    add_column :questions, :votecount, :integer
  end
end
