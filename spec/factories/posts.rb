# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    title "MyString"
    link_url "MyString"
    notes "MyText"
    user nil
    category nil
  end
end
