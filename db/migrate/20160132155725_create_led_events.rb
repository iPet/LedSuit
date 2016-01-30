class CreateLedEvents < ActiveRecord::Migration
  def change
    drop_table :led_events
    create_table :led_events do |t|
      t.string :color
      t.integer :mode
      t.integer :start_time
      t.integer :end_time
      t.belongs_to :scenario, index: true, foreign_key: true
      t.belongs_to :part, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
