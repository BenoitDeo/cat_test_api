FactoryBot.define do

    sex = ["male", "female"]

    factory :random_cat, class: Cat do
        name { 'cat_name' }
        colour { 'cat_colour' }
        sex { sex.sample }
        dob { 12/12/2012 }
        favourite_food { 'cat_favourite_food' }
    end
  end