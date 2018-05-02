FactoryBot.define do
  factory :user do
    name 'MyString'
    date_of_birth '2018-02-06 16:21:16'
    gender 'Male'
    email  Faker::Internet.email
    password 'pinky@10'
    confirmed_at Date.today
  end
end
