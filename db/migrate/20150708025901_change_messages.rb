class ChangeMessages < ActiveRecord::Migration
  def change
  	change_table :messages do |t|
  		t.boolean :read, default: false
  	end
  end
end
