require 'test_helper'

class ListIngredientsTest < ActionDispatch::IntegrationTest

  def setup
    @ingredient = Ingredient.create(name: "vodka")
    @ingredient2 = Ingredient.create(name: "gin")
  end

  test "should show ingredients listing" do
    get ingredients_path
    assert_template 'ingredients/index'
    assert_select "a[href=?]", ingredient_path(@ingredient), text: @ingredient.name
    assert_select "a[href=?]", ingredient_path(@ingredient2), text: @ingredient2.name
  end
end
