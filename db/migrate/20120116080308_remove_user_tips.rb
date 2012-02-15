class RemoveUserTips < ActiveRecord::Migration
  def up
      remove_column :tips, :user_id
      remove_column :tips, :approved
  end
 
  def down
    add_column :tips, :program_level , :boolean 
    add_column :tips, :user_id , :integer 
  end
end
