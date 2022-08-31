class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :email
      t.string :cell_phone
      t.string :phone
      t.integer :age
      t.boolean :is_member
      t.integer :gender
      t.integer :marital_status
      t.string :profession
      t.string :cep
      t.string :neighborhood_preference
      t.string :day_preference
      t.text :comments
      t.string :registration_at
      t.references :field, null: false, foreign_key: true

      t.timestamps
    end
  end
end
