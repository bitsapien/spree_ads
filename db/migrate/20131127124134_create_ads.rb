class CreateAds < ActiveRecord::Migration
  def change
    create_table :spree_ads do |t|
      t.string :name
      t.string :file_name
      t.string :url
      t.integer :category
      t.integer :position
      t.boolean :enabled

      t.timestamps
    end
  end
end
