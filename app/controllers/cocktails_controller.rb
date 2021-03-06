class CocktailsController < ApplicationController
  before_action :find_cocktail, only: [:show, :edit, :update, :destroy]

  def index
    @cocktails = Cocktail.all
  end

  def show
  end

  def new
    @cocktail = Cocktail.new
  end

  def edit
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    # @ingredient = @cocktail.ingredients.create(params[:ingredient]).permit(:name, :ingredient_id)
    # @cocktail.ingredients = Ingredient.find(params[:ingredient])
    if @cocktail.save
      flash[:notice] = "#{@cocktail.name} was added!"
      redirect_to @cocktail
    else
      render 'new'
    end
  end

  def update
    if @cocktail.update(cocktail_params)
      redirect_to @cocktail
    else
      render 'edit'
    end
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_path
  end

  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, ingredient_ids: [])
  end
end
