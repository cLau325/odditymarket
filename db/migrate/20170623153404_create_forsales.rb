class CreateForsales < ActiveRecord::Migration[5.0]
  def change
    create_table :forsales do |t|
      t.string :fs_name
      t.text :fs_desc
      t.string :fs_image
      t.integer :fs_price

      t.timestamps
    end
  end
end
