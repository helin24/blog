FactoryGirl.define do
  factory :user do
    name "Helin"
    email "helin@example.com"
    password "123456"
    password_confirmation "123456"
  end

  factory :post do
    content "Hello there this is a post's content"
    title "title of post"
    user
  end
end
