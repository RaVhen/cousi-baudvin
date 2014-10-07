class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :puissant
      t.string :sexe
      t.boolean :sexy

      t.timestamps
    end
  end
end
