class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.text :title
      t.date :start
      t.date :end
      t.boolean :allday
      t.text :memo

      t.timestamps
    end
  end
end
