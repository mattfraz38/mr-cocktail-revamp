class RenameCocktailsIngredientsToCocktailIngredients < ActiveRecord::Migration[5.2]
  def change
    rename_table :cocktails_ingredients, :cocktail_ingredients
  end
end
