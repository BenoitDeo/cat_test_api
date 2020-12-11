FactoryBot.define do

    factory :random_cat, class: Cat do
        name { 'cat_name' }
        colour { 'cat_colour' }
        sex { 'female' }
        dob { "12/12/2012" }
        favourite_food { 'cat_favourite_food' }
    end
  end