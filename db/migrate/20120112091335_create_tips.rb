class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.integer :user_id
      t.text :content
      t.integer :activity_id
      t.boolean :approved

      t.timestamps
    end
  end
end
