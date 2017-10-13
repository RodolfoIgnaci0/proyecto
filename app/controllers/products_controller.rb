class ProductsController < ApplicationController
  before_action :authenticate_user!
  def index
    @list = Product.all
  end
end
