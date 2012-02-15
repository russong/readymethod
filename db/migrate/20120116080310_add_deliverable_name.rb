class AddDeliverableName < ActiveRecord::Migration
  def up
      add_column :deliverables, :deliverable_name , :string 
  end
 
  def down
      remove_column :deliverables, :deliverable_name
  end
end
