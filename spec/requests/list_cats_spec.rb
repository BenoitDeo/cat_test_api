require 'rails_helper'

describe "list cats", :type => :request do
  let!(:cats) {FactoryBot.create_list(:random_cat, 5)}

before {get '/api/v1/cats'}
    it 'returns all cats' do
        expect(JSON.parse(response.body).size).to eq(5)
    end

    it 'returns status code 200' do
        expect(response).to have_http_status(:success)
    end

end
