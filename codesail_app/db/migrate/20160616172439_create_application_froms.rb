class CreateApplicationFroms < ActiveRecord::Migration
  def change
    create_table :application_froms do |t|
      t.string :first_name
      t.string :last_name
      t.string :special_power

      t.timestamps null: false
    end
  end
end
