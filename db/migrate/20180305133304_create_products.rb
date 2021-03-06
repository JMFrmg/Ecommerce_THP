class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.float :price
      t.string :image_url

      t.timestamps
    end
  end
end
