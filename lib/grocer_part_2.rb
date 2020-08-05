require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  coupons.each do |coupon|
    cart.map do |item_lookup|
      if item_lookup[:item] === coupon[:item]
        item_lookup[:count] -= coupon[:num]
      end 
    end 
  end 
    p cart
  
end

cart = [
  {:item => "AVOCADO", :price => 3.00, :clearance => true, :count => 3},
  {:item => "KALE",    :price => 3.00, :clearance => false, :count => 1}
]
coupons = [
  {:item => "AVOCADO", :num => 2, :cost => 5.00}
]

apply_coupons(cart, coupons)

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

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
