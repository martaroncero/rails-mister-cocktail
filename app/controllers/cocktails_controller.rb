class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def home
  end

end
