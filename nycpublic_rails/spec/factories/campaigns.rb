# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :campaign do
    name "MyString"
    description "MyText"
    start_date "2013-06-09"
    end_date "2013-06-09"
  end
end
