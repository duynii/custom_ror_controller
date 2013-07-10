class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name, limit: 50
      t.text :description, limit: 200
      t.references :hospital, index: true

      t.timestamps
    end
    add_index :services, :name, unique: true
  end
end
