class CreatePostsTable < ActiveRecord::Migration
  def up 
  	create_table :posts do |t|
  		t.integer :user_id
  		t.string :post
  		t.integer :integer
  		t.string :created_at
  		t.string :updated_at
  	end	
  end

  def down 
  	drop_table :posts
  end
end
