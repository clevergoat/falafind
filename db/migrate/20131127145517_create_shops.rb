class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.text :address
      t.float :longitude
      t.float :latitude
      t.string :colour

      t.timestamps
    end
  end
end
