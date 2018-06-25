class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :start_date
      t.datetime :review_date
      t.datetime :end_date
      t.string :tags
      t.boolean :completed

      t.timestamps
    end
  end
end
