class CreateSocialClasses < ActiveRecord::Migration
  def change
    create_table :social_classes do |t|
      t.string :name

      t.timestamps
    end
  end
end
