require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  coupon_number = 0
    cart.map do |item_lookup|
      if item_lookup[:item] === coupons[coupon_number][:item]
        item_lookup[:count] -= coupons[coupon_number][:num]
      end 
    end 
    coupon_number += 1
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
