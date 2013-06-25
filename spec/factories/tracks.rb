# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :track do
    album "MyString"
    track "MyString"
    listens 1
  end
end
