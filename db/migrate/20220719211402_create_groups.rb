class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.date :meeting_day
      t.string :leader
      t.string :co_leader
      t.string :coordinator

      t.timestamps
    end
  end
end
