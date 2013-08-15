class CreateTvTypes < ActiveRecord::Migration
  def change
    create_table :tv_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
