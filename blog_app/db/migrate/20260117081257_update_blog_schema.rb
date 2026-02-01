class UpdateBlogSchema < ActiveRecord::Migration[8.1]
  def change
    add_index:blogs, :published 
    rename_column :blogs, :body, :content
  end
end
