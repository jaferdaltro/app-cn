class CreateBaptisms < ActiveRecord::Migration[7.0]
  def change
    create_table :baptisms do |t|
      t.date :baptism_date
      t.string :field_registration
      t.boolean :age_big_than_ten
      t.boolean :has_group
      t.integer :shirt_size
      t.string :baptism_pref_field
      t.text :comment
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
