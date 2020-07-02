def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  output = nil
  
  collection.each do |item|
    if item[:item] == name
      output = item
    end
  end
  output
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  new_cart = []
  
  cart.each do |item|
    if find_item_by_name_in_collection(item[:item], new_cart) == nil
      #if it isn't in the new cart
      new_cart.unshift(item)
    end
    
  end
  print new_cart
end

consolidate_cart([
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "KALE", :price => 3.00, :clearance => false}
])
  