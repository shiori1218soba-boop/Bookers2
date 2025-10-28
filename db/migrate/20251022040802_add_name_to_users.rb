class AddNameToUsers < ActiveRecord::Migration[6.1]
  def change
    return if column_exists?(:users, :name)
      add_column :users, :name, :string
  end
end
