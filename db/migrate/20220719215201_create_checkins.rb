class CreateCheckins < ActiveRecord::Migration[7.0]
  def change
    create_table :checkins do |t|
      t.boolean :baptized
      t.date :baptism
      t.references :field, null: false, foreign_key: true
      t.boolean :want_serve
      t.string :ministry_name
      t.references :group, null: false, foreign_key: true
      t.text :obsevation
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
