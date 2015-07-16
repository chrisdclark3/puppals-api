class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.integer :sender_id, index: true
      t.integer :recipient_id, index: true
      t.boolean :read, :default => false
      t.timestamps null: false
    end
  end
end
