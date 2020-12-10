require 'rails_helper'

describe "Update Cat" do

    before(:each) do
        @cat = FactoryBot.create(:random_cat)
    end

    it 'updates a cat' do
        @new_name = 'cat_name_new'
        @new_colour = 'cat_color_new'

        put "/api/v1/cats/#{@cat.id}", params: { name: @new_name, colour: @new_colour }

        expect(response.status).to eq(200)
        expect(Cat.find(@cat.id).name).to eq(@new_name)
        expect(Cat.find(@cat.id).colour).to eq(@new_colour)
    end

end

