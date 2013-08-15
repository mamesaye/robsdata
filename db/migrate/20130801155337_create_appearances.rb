class CreateAppearances < ActiveRecord::Migration
  def change
    create_table :appearances do |t|
      t.integer :show_id
      t.integer :topic_id
      t.integer :network_id
      t.date :date
      t.time :start
      t.time :end
      t.integer :host_id
      t.integer :guest_id

      t.timestamps
    end
  end
end
