class CreateContenders < ActiveRecord::Migration
  def change
    create_table :contenders do |t|
      t.string :uname, :null => false
      t.string :fullname
      t.integer :wins, :default => 0
      t.integer :loses, :default => 0

      t.timestamps
    end
  end
end
