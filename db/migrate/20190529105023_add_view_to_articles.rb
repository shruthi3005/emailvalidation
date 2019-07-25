class AddViewToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :view, :int
  end
end
