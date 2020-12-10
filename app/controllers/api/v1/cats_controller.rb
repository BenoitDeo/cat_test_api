class Api::V1::CatsController < ApplicationController
    before_action :set_cat, only: [:edit, :update]
    
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

    def new
      @cat = Cat.new
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

    def edit; end

    # PUT /api/v1/cats/:id
    def update
      if @cat
        @cat.update(cat_params)
        render json: { message: 'Cat successfully updated' }, status: 200
      else
        render error: { error: 'Unable to update Cat.' }, status: 400 
      end
    end

    private

    def set_cat
      @cat = Cat.find(params[:id])
    end

    def cat_params
      # params.require(:cat).permit(:name, :colour, :sex, :dob, :favourite_food)
      params.permit(:name, :colour, :sex, :dob, :favourite_food)
    end
end
