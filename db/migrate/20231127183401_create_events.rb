class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.date :event_date
      t.string :period
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
