class AddTitleAndBodyToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :title, :string unless column_exists?(:books, :title)
    add_column :books, :body, :text unless column_exists?(:books, :body)
  end
end
