require 'test_helper'

class CreateIngredientsTest < ActionDispatch::IntegrationTest

  test "get new ingredient form and create ingredient" do
    get new_ingredient_path
    assert_template 'ingredients/new'
    assert_difference 'Ingredient.count', 1 do
      post ingredients_path, params: { ingredient: { name: "vodka" } }
      follow_redirect!
    end
    assert_template 'ingredients/show'
    assert_match "vodka", response.body
  end

  test "invalid ingredient submission results in failure" do
    get new_ingredient_path
    assert_template 'ingredients/new'
    assert_no_difference 'Ingredient.count' do
      post ingredients_path, params: { ingredient: { name: "" } }
    end
    assert_template 'ingredients/new'
  end
end
