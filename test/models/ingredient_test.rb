require 'test_helper'

class IngredientTest < ActiveSupport::TestCase
  def setup
    @ingredient = Ingredient.new(name: "vodka")
  end

  test "ingredient should be valid" do
    assert @ingredient.valid?
  end

  test "name should not be blank" do
    @ingredient.name = ""
    assert_not @ingredient.valid?
  end

  test "name should be unique" do
    @ingredient.save
    ingredient2 = Ingredient.new(name: "vodka")
    assert_not ingredient2.valid?
  end
end
