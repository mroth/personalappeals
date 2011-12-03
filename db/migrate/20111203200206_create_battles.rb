class CreateBattles < ActiveRecord::Migration
  def change
    create_table :battles do |t|
      t.integer :winner_id
      t.integer :loser_id
      t.string :voter

      t.timestamps
    end
  end
end
