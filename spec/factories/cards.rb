# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :card do
    name "MyString"
    types "MyText"
    cmc 1
    cost "MyString"
    text "MyString"
    formats "MyText"
    editions "MyText"
  end
end
