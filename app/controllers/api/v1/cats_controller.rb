class Api::V1::CatsController < ApplicationController

  def index
    breed = params[:breed]
    if breed
      @cats = Cat.search_breed(breed)
    # elsif random
    #   @cats = Cat.random
    else
      @cats = Cat.all
    end
    json_response(@cats)
  end

  def show
    @cat = Cat.find(params[:id])
    json_response(@cat)
  end

  def create
    @cat = Cat.create!(cat_params)
    json_response(@cat, :created)
  end

  def update
    @cat = Cat.find(params[:id])
    if @cat.update!(cat_params)
      render status: 200, json: {
        message: "Your cat has been updated successfully!"
      }
    end
  end

  def destroy
    @cat = Cat.find(params[:id])
    if @cat.destroy!
      render status: 200, json: {
        message: "This cat is no longer available for adoption. "
      }
    end
  end

private
  def cat_params
    params.permit(:name, :breed)
  end
end
