FactoryGirl.define do
  factory :film_rating do
    film nil
    user nil
    title "MyString"
    description "MyText"
    stars 1
  end
end
