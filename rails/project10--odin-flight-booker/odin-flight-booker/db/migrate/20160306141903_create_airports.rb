class CreateAirports < ActiveRecord::Migration
  def change
    create_table :airports do |t|
      t.string :code
      t.string :city

      t.timestamps null: false
    end
    add_index :airports, :code
  end
end
