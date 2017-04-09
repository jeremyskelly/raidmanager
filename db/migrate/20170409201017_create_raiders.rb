class CreateRaiders < ActiveRecord::Migration[5.0]
  def change
    create_table :raiders do |t|
      t.string :name
      t.string :wowclass
      t.string :role
      t.string :battletag
      t.string :rank

      t.timestamps
    end
  end
end
