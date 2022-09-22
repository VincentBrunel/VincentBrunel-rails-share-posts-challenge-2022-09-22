class RemoveNicknameFromTableUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :nickname
    add_column :users, :nickname, :string, null: false
  end
end
