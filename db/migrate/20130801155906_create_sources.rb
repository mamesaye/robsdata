class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.integer :person_id
      t.integer :position_id
      t.string :bio_link

      t.timestamps
    end
  end
end
