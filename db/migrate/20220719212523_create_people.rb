class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :email
      t.string :cell_phone
      t.string :phone
      t.references :address, null: false, foreign_key: true
      t.integer :gender
      t.integer :marital_status
      t.string :profession
      t.references :group, null: false, foreign_key: true
      t.references :field, null: false, foreign_key: true

      t.timestamps
    end
  end
end
