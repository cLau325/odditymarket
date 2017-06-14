class CreateAucItems < ActiveRecord::Migration[5.0]
  def change
    create_table :auc_items do |t|
      t.string :title
      t.integer :user_id
      t.text :description
      t.integer :Price

      t.timestamps
    end
  end
end
