require 'test_helper'

class CreateCocktailsTest < ActionDispatch::IntegrationTest

  test "get new cocktail form and create cocktail" do
    get new_cocktail_path
    assert_template 'cocktails/new'
    assert_difference 'Cocktail.count', 1 do
      post cocktails_path, params: { cocktail: { name: "rum and coke" } }
      follow_redirect!
    end
    assert_template 'cocktails/show'
    assert_match "rum and coke", response.body
  end
end