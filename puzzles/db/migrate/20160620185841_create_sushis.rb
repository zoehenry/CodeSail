class CreateSushis < ActiveRecord::Migration
  def change
    create_table :sushis do |t|

      t.timestamps null: false

      t.string :name
      t.string :type
      t.string :price
    end
  end
end
