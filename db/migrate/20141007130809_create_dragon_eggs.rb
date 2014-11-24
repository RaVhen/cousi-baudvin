class CreateDragonEggs < ActiveRecord::Migration
  def change
    create_table :dragon_eggs do |t|
      t.string :race
      t.integer :count
      t.string :description

      t.timestamps
    end
  end
end
