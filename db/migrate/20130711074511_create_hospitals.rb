class CreateHospitals < ActiveRecord::Migration
  def change
    create_table :hospitals do |t|
      t.string :title, limit: 50
      t.text :physical_address, limit: 400
      t.text :postal_address, limit: 200
      t.string :general_phone, limit: 12
      t.string :fax, limit: 12

      t.timestamps
    end
    add_index :hospitals, :title
  end
end
