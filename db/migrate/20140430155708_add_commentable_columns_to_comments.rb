class AddCommentableColumnsToComments < ActiveRecord::Migration
  def change
    remove_column :comments, :video_id
    add_column :comments, :user_id, :integer
    add_column :comments, :commentable_id, :integer
    add_column :comments, :commentable_type, :string
  end
end
