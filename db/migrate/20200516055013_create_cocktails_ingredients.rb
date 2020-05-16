class CreateCocktailsIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :cocktails_ingredients do |t|
      t.references :cocktail, foreign_key: true
      t.references :ingredient, foreign_key: true

      t.timestamps
    end
  end
end
