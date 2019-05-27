class CategoriesController < ApplicationController
  def index
    @category = Category.all
  end

  def show

  end


end
