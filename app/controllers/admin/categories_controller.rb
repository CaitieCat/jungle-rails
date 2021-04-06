class Admin::CategoriesController < ApplicationController
  http_basic_authenticate_with name: "Jungle", password: "book"
  def index
    @category = Category.order(id: :desc).all
  end

  def new
  end

  def create
  end
end
