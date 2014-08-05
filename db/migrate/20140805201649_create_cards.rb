class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :name
      t.text :types
      t.integer :cmc
      t.string :cost
      t.string :text
      t.text :formats
      t.text :editions
      t.references :collection

      t.timestamps
    end
  end
end
