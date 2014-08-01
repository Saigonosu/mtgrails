require 'rails_helper'

RSpec.describe "collections/show", :type => :view do
  before(:each) do
    @collection = assign(:collection, Collection.create!(
      :user => "",
      :mutliverseid => 1,
      :quantity => 2,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
  end
end
