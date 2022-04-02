FactoryBot.define do
  factory :bed do
    name { "MyString" }
    bed_type { "MyString" }
    last_watered { "2022-04-02 15:12:53" }
  end

  factory(:user) do
    email { Faker::Internet.email }
    password { Faker::Internet.password }
  end
end