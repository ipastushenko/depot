class StoreController < ApplicationController
  skip_before_filter :authorize
  def index
    @products = Product.order(:title)
    @count = increment_count
    @cart = current_cart
  end
end
