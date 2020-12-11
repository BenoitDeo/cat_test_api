require 'rails_helper'

describe "search cat" do

    before(:each) do
        FactoryBot.create(:random_cat, name: "Hercules")
        FactoryBot.create(:random_cat, colour: "blue")
        FactoryBot.create(:random_cat, sex: "male")
        FactoryBot.create(:random_cat, dob: "2009-09-09")
        FactoryBot.create(:random_cat, favourite_food: "dogs")
    end

    it 'find a cat by name' do
       
        get "/api/v1/cats/", params: { search_name: "Her" }

        expect(response.status).to eq(200)
        expect(JSON.parse(response.body).first['name']).to eq('Hercules')
        expect(JSON.parse(response.body).size).to eq(1)
    end

    it 'find a cat by color' do
       
        get "/api/v1/cats/", params: { search_colour: "bl" }

        expect(response.status).to eq(200)
        expect(JSON.parse(response.body).first['colour']).to eq('blue')
        expect(JSON.parse(response.body).size).to eq(1)
    end

    it 'find a cat by sex' do
       
        get "/api/v1/cats/", params: { search_sex: "male" }

        expect(response.status).to eq(200)
        expect(JSON.parse(response.body).first['sex']).to eq('male')
        expect(JSON.parse(response.body).size).to eq(1)
    end

    it 'find a cat by favourite food' do
       
        get "/api/v1/cats/", params: { search_favourite_food: "do" }

        expect(response.status).to eq(200)
        expect(JSON.parse(response.body).first['favourite_food']).to eq('dogs')
        expect(JSON.parse(response.body).size).to eq(1)
    end

    it 'find a cat by date of birth' do
       
        get "/api/v1/cats/", params: { search_dob: "2009-09-09" }

        expect(response.status).to eq(200)
        expect(JSON.parse(response.body).first['dob']).to eq('2009-09-09')
        expect(JSON.parse(response.body).size).to eq(1)
    end

end
