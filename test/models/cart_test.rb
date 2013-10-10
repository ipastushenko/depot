require 'test_helper'

class CartTest < ActiveSupport::TestCase
  test "cart should add unique and duplicate products" do
    cart = Cart.new
    product = products(:ruby)
    cart.add_product(product.id, product.price)
    assert cart.save
    assert_equal 1, cart.line_items.size
    cart.add_product(product.id, product.price)
    assert cart.save
    assert_equal 1, cart.line_items.size
    product = products(:one)
    cart.add_product(product.id, product.price)
    assert cart.save
    assert_equal 2, cart.line_items.size
  end
end
