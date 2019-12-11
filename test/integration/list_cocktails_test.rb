require 'test_helper'

class ListCocktailsTest < ActionDispatch::IntegrationTest

  def setup
    @cocktail = Cocktail.create(name: "rum and coke")
    @cocktail2 = Cocktail.create(name: "screwdriver")
  end

  test "should show cocktails listing" do
    get cocktails_path
    assert_template 'cocktails/index'
    assert_select "a[href=?]", cocktail_path(@cocktail), text: @cocktail.name
    assert_select "a[href=?]", cocktail_path(@cocktail2), text: @cocktail2.name
  end
end
