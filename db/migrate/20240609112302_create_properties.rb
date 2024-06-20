class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :sector
      t.string :prop_for
      t.string :owner_name
      t.string :contact
      t.string :city
      t.string :square_feet
      t.string :deposit
      t.text :location_details
      t.text :description

      t.timestamps
    end
  end
end
