class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :name
      t.boolean :show
      t.time :start_time
      t.date :date
      t.integer :host_id
      t.integer :topic_id

      t.timestamps
    end
  end
end
