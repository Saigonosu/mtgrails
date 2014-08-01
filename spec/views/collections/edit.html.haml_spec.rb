require 'rails_helper'

RSpec.describe "collections/edit", :type => :view do
  before(:each) do
    @collection = assign(:collection, Collection.create!(
      :user => "",
      :mutliverseid => 1,
      :quantity => 1,
      :name => "MyString"
    ))
  end

  it "renders the edit collection form" do
    render

    assert_select "form[action=?][method=?]", collection_path(@collection), "post" do

      assert_select "input#collection_user[name=?]", "collection[user]"

      assert_select "input#collection_mutliverseid[name=?]", "collection[mutliverseid]"

      assert_select "input#collection_quantity[name=?]", "collection[quantity]"

      assert_select "input#collection_name[name=?]", "collection[name]"
    end
  end
end
