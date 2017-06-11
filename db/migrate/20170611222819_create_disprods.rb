class CreateDisprods < ActiveRecord::Migration[5.0]
  def change
    create_table :disprods do |t|
      t.string :dp_name
      t.text :desc
      t.integer :dis_prod_id

      t.timestamps
    end
  end
end
