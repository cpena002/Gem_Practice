class CreateApartments < ActiveRecord::Migration[5.0]
  def change
    create_table :apartments do |t|
      t.string :street1
      t.string :street2
      t.string :city
      t.string :zip_code
      t.string :state
      t.string :country
      t.string :name
      t.string :phone
      t.string :hours

      t.timestamps
    end
  end
end
