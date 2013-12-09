FactoryGirl.factories.clear 
FactoryGirl.define do 
  factory :user do |f|
    f.email "abcd@gmail.com" 
    f.password "new life" 
  end 
end