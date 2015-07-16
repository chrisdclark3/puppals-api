class AddAttachmentImageToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.attachment :avatar
    end
    change_table :dogs do |t|
      t.attachment :avatar
    end
  end
end
