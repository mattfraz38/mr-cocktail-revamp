class DosesController < ApplicationController
  before_action :find_cocktail, only: [:new, :edit, :create, :destroy]

  def new
    @ingredients = Ingredient.all
    @dose = Dose.new
    @dose.cocktail = @cocktail
  end

  def edit
  end

  def create
    @dose = Dose.new(dose_params)
    # @dose.ingredient = Ingredient.find(params[:dose]["ingredient"])
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(:cocktail_id)
    else
      # raise
      render 'new'
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail)
  end

  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def dose_params
    params.require(:dose).permit(:amount, :ingredient_id)
  end
end
