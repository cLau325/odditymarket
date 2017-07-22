class AddDetailsToFafs < ActiveRecord::Migration[5.0]
  def change
    add_column :disprods, :user_id, :integer
    add_column :forauctions, :cur_highest, :integer
    add_column :forauctions, :user_id, :integer
    add_column :forsales, :sold, :boolean, :default => false
    add_column :forsales, :user_id, :integer
  end
end
