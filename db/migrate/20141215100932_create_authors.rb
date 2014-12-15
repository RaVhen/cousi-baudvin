class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :titre

      t.timestamps
    end
  end
end
