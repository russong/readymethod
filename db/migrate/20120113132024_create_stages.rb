class CreateStages < ActiveRecord::Migration
  def change
    create_table :stages do |t|
      t.string :name
      t.integer :phase_id
      
      t.timestamps
    end
  end
end