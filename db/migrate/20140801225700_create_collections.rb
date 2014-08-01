class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.references :user
      t.integer :mutliverseid
      t.integer :quantity
      t.string :name

      t.timestamps
    end
  end
end
