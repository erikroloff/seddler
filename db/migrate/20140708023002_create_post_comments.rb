class CreatePostComments < ActiveRecord::Migration
  def change
    create_table :post_comments do |t|
      t.text :content
      t.references :post, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
