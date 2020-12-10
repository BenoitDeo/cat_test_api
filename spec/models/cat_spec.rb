require 'rails_helper'

RSpec.describe Cat, type: :model do
  subject { FactoryBot.create(:random_cat) }


  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a colour" do
    subject.colour = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a sex" do
    subject.sex = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a dob" do
    subject.dob = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a favourite_food" do
    subject.favourite_food = nil
    expect(subject).to_not be_valid
  end
end
