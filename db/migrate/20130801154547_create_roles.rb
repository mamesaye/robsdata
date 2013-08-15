class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :guest
      t.string :host
      t.integer :show_id

      t.timestamps
    end
  end
end
