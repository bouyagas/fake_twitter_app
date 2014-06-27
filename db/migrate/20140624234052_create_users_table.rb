class CreateUsersTable < ActiveRecord::Migration
  def up
  	create_table :users do |t|
  		t.string :email
  		t.string :fname
  		t.string :lname
  		t.string :birthday
  		t.string :created_at 
  		t.string :updated_at
    end
  end
  
  def down
  	drop_table :users
  end
end
