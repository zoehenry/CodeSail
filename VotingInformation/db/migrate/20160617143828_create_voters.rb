class CreateVoters < ActiveRecord::Migration
  def change
    create_table :voters do |t|
      t.string :first_name
      t.string :last_name
      t.integer :state_id

      t.timestamps null: false
    end
  end
end
