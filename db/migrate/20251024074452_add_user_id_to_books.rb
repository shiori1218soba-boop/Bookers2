class AddUserIdToBooks < ActiveRecord::Migration[6.1]
  def change
    unless column_exists?(:books, :user_id)
      add_reference :books, :user, foreign_key: true
    end
    add_index :books, :user_id unless index_exists?(:books, :user_id)
    add_foreign_key :books, :users unless foreign_key_exists?(:books, :users)
  end
end
