class CreateSaleItems < ActiveRecord::Migration[5.0]
  def change
    create_table :sale_items do |t|
      t.string :title
      t.integer :user_id
      t.text :description
      t.integer :basePrice

      t.timestamps
    end
  end
end
