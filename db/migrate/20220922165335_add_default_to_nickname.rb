class AddDefaultToNickname < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :nickname
    add_column :users, :nickname, :string, default: "", null: false
  end
end
