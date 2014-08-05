class AddReferenceToUser < ActiveRecord::Migration
  def change
    add_reference :users, :cards, index: true
  end
end
