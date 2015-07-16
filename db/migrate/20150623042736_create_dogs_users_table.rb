class CreateDogsUsersTable < ActiveRecord::Migration
  def change
    create_table :dogs_users do |t|
    	t.references :user
    	t.references :dog
    end
  end
end
