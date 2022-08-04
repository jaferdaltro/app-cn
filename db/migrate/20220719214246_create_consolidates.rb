class CreateConsolidates < ActiveRecord::Migration[7.0]
  def change
    create_table :consolidates do |t|
      t.integer :status
      t.integer :field
      t.date :meeting_date
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
