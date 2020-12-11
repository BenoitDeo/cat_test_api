class Api::V1::CatsController < ApplicationController
    
    has_scope :search_name
    has_scope :search_colour
    has_scope :search_favourite_food
    has_scope :search_sex
    has_scope :search_dob
    
    # GET /api/v1/cats
    def index
      @cats = apply_scopes(Cat.all)
      render json: @cats, status: 200
    end

    # POST /api/v1/cats
    def create
      @cat = Cat.new(cat_params)
      if @cat.save
        render json: @cat, status: 200 
      else
        render error: { error: 'Unable to create Cat.' }, status: 400
      end
    end

    # PUT /api/v1/cats/:id
    def update
      @cat = Cat.find(params[:id])
      if @cat.update(cat_params)
        render json: { message: 'Cat successfully updated' }, status: 200
      else
        render error: { error: 'Unable to update Cat.' }, status: 400 
      end
    end

    private

    def cat_params
      params.require(:cat).permit(:name, :colour, :sex, :dob, :favourite_food)
    end
end
