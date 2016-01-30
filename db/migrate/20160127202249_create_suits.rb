class CreateSuits < ActiveRecord::Migration
  def change
    create_table :suits, :primary_key => :mac_id do |t|
        t.boolean :has_scenario, default: false
        t.boolean :is_running, default: false
        t.timestamp :start_time
        t.timestamps null: false
    end
    change_column :suits, :mac_id, :string
  end
end
