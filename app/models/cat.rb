class Cat < ApplicationRecord

    enum sex: [ "male", "female" ]
    
    validates :name, presence: true
    validates :colour, presence: true
    validates :sex, presence: true
    validates :dob, presence: true
    validates :favourite_food, presence: true

    scope :search_name, -> name { where('name ILIKE ?', "%#{name}%") }
    scope :search_colour, -> colour { where('colour ILIKE ?', "%#{colour}%") }
    scope :search_favourite_food, -> favourite_food { where('favourite_food ILIKE ?', "%#{favourite_food}%") }
    scope :search_sex, -> sex { where(sex: sex) }
    scope :search_dob, -> dob { where(dob: dob) }
end
