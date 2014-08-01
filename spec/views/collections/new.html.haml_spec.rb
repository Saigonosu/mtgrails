require 'rails_helper'

RSpec.describe "collections/new", :type => :view do
  before(:each) do
    assign(:collection, Collection.new(
      :user => "",
      :mutliverseid => 1,
      :quantity => 1,
      :name => "MyString"
    ))
  end

  it "renders new collection form" do
    render

    assert_select "form[action=?][method=?]", collections_path, "post" do

      assert_select "input#collection_user[name=?]", "collection[user]"

      assert_select "input#collection_mutliverseid[name=?]", "collection[mutliverseid]"

      assert_select "input#collection_quantity[name=?]", "collection[quantity]"

      assert_select "input#collection_name[name=?]", "collection[name]"
    end
  end
end
