class WelcomeController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end
end
