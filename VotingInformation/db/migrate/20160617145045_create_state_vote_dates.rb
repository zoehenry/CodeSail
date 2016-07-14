class CreateStateVoteDates < ActiveRecord::Migration
  def change
    create_table :state_vote_dates do |t|
      t.string :state
      t.datetime :election_date

      t.timestamps null: false
    end
  end
end
