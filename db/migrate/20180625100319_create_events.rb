class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.datetime :start_date, null: false
      t.datetime :review_date, null: false
      t.datetime :end_date, null: false
      t.string :tags, null: false
      t.boolean :completed

      t.timestamps
    end
  end
end
