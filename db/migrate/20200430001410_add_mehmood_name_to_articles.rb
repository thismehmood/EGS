class AddMehmoodNameToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :Mehmood_name, :string
  end
end
