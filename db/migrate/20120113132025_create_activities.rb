class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.integer :stage_id
      t.text :content
      
      t.timestamps
    end
  end
end
