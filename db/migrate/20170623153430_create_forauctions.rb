class CreateForauctions < ActiveRecord::Migration[5.0]
  def change
    create_table :forauctions do |t|
      t.string :fa_name
      t.text :fa_desc
      t.string :fa_image
      t.integer :fa_baseprice

      t.timestamps
    end
  end
end
