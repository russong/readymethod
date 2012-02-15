class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.integer :user_id
      t.text :content
      t.integer :activity_id

      t.timestamps
    end
  end
end
