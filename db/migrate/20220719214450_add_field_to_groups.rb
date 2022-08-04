class AddFieldToGroups < ActiveRecord::Migration[7.0]
  def change
    add_reference :groups, :field, null: false, foreign_key: true
  end
end
