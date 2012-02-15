class AddPhasesProgramLevel < ActiveRecord::Migration
  def up
    change_table :phases do |t|
      t.boolean :program_level, :default => false
    end
    Phase.update_all ["program_level = ?", false]
  end
 
  def down
    remove_column :phases, :program_level
  end
end
