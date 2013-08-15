class CreateOrganisations < ActiveRecord::Migration
  def change
    create_table :organisations do |t|
      t.string :name
      t.boolean :state

      t.timestamps
    end
  end
end
