require 'test_helper'

class IngredientsControllerTest < ActionDispatch::IntegrationTest

  def setup
    @ingredient = Ingredient.create(name: "vodka")
  end

  test "should get ingredients index" do
    get ingredients_path
    assert_response :success
  end

  test "should get ingredient new" do
    get new_ingredient_path
    assert_response :success
  end

  test "should get ingredients show" do
    get ingredients_path(@ingredient)
    assert_response :success
  end
end
