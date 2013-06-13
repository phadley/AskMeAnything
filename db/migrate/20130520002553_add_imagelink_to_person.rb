class AddImagelinkToPerson < ActiveRecord::Migration
  def change
    add_column :people, :imagelink, :string
  end
end
