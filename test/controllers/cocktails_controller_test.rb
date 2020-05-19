require 'test_helper'

class CocktailsControllerTest < ActionDispatch::IntegrationTest

  def setup
    @cocktail = Cocktail.create(name: "rum and coke")
  end

  test "should get cocktails index" do
    get cocktails_path
    assert_response :success
  end

  test "should get cocktails new" do
    get new_cocktail_path
    assert_response :success
  end

  test "should create new cocktail" do
    assert_difference('Cocktail.count', 1) do
      post cocktails_url, params: { cocktail: { name: "screwdriver" } }
    end
    assert_redirected_to cocktail_url(Cocktail.last)
  end

  test "should get cocktails show" do
    get cocktail_path(@cocktail)
    assert_response :success
  end
end
