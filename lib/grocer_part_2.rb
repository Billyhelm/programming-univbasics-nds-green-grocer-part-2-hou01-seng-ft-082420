require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  new_coupon = []
  coupons.map do |coupon|
    cart.map do |item_lookup|
      if item_lookup[:item] === coupon[:item]
        item_lookup[:count] -= coupon[:num]
        item_price = coupon[:cost] / coupon[:num]
        cart.push({item: "#{coupon[:item]} W/COUPON", price: item_price, clearance: item_lookup[:clearance], count: coupon[:num]})
      end #if 
    end #cart.map 
  end #coupons.map
  cart 
end #method

cart = [
  {:item => "AVOCADO", :price => 3.00, :clearance => true, :count => 3},
  {:item => "KALE",    :price => 3.00, :clearance => false, :count => 1}
]
coupons = [
  {:item => "AVOCADO", :num => 2, :cost => 5.00}
]

def apply_clearance(cart)
  cart.map do |items|
    if items[:clearance]
      items[:price] *= 0.8
    end #if items
  end #cart.map 
  p cart 
end

apply_clearance(cart)

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
