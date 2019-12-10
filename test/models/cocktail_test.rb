require 'test_helper'

class CocktailTest < ActiveSupport::TestCase

  def setup
    @cocktail = Cocktail.new(name: "rum and coke")
  end

  test "cocktail should be valid" do
    assert @cocktail.valid?
  end

  test "name should not be blank" do
    @cocktail.name = ""
    assert_not @cocktail.valid?
  end

  test "name should be unique" do
    @cocktail.save
    cocktail2 = Cocktail.new(name: "rum and coke")
    assert_not cocktail2.valid?
  end
end
