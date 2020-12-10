require 'rails_helper'

describe "Create cat", :type => :request do

    before do
        post '/api/v1/cats', params: {
            :name => 'test_name', 
            :colour => 'test_colour', 
            :sex => 'test_sex', 
            :dob => '12/12/12', 
            :favourite_food => 'test_favourite_food' 
        }
    end

    it 'returns cat\'s name' do
        expect(JSON.parse(response.body)['name']).to eq('test_name')
    end
    it 'returns cat\'s colour' do
        expect(JSON.parse(response.body)['colour']).to eq('test_colour')
    end
    it 'returns cat\'s sex' do
        expect(JSON.parse(response.body)['sex']).to eq('test_sex')
    end
    it 'returns cat\'s dob' do
        expect(JSON.parse(response.body)['dob']).to eq('12/12/12')
    end
    it 'returns cat\'s favourite food' do
        expect(JSON.parse(response.body)['favourite_food']).to eq('test_favourite_food')
    end
    it 'returns a created status' do
        expect(response).to have_http_status(:success)
    end
end