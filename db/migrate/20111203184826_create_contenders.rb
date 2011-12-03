class CreateContenders < ActiveRecord::Migration
  def change
    create_table :contenders do |t|
      t.string :uname
      t.string :fullname
      t.integer :wins
      t.integer :loses

      t.timestamps
    end
  end
end
