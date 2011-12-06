class CreateBattles < ActiveRecord::Migration
  def change
    create_table :battles do |t|
      t.integer :winner_id, :null => false
      t.integer :loser_id, :null => false
      t.string :voter

      t.timestamps
    end
  end
end
