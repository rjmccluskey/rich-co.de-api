FactoryGirl.define do
  factory :blog do
    title {Faker::Hacker.say_something_smart}
    content {Faker::Lorem.paragraph}
  end

end
