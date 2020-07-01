class CreateOnepieces < ActiveRecord::Migration[5.1]
  def change
    create_table :onepieces do |t|
      t.string :character
      t.string :sea
      t.string :island
      t.string :location
      t.string :quote
      t.string :akuma_no_mi

      t.timestamps
    end
  end
end
