class Admin::DashboardController < ApplicationController
  before_filter :authorize
  http_basic_authenticate_with name: "Jungle", password: "book"
  def show
    @product_num = Product.count
    @categories_num = Category.count
  end
  
end
