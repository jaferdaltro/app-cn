class AddFieldsToAddresses < ActiveRecord::Migration[7.0]
  def change
    add_reference :addresses, :field, null: false, foreign_key: true
  end
end
