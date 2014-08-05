class AddReferenceToCollection < ActiveRecord::Migration
  def change
    add_reference :collections, :cards, index: true
  end
end
