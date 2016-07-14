class AddNewColumnsToVoter < ActiveRecord::Migration
  def change
    add_column :voters, :state_vote_date_id, :integer
    add_column :voters, :state, :string
    remove_column :voters, :state_id, :integer
  end
end
