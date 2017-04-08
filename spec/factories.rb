FactoryGirl.define do

  factory :user do
    sequence :email do |n|
      "person#{n}@example.com"
    end
    name 'User Name'
    password '123123'
  end


  factory :order do
   address '123 Main St.'
   city 'Atlanta'
   state 'GA'
  end


  factory :listing do
    name 'SomeListing'
    description 'Description'
    price 10.00
    image { File.new("#{Rails.root}/spec/fixtures/default.jpg") }
  end











end
