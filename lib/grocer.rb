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
  new_item = ""
  new_item_index = 0
  
  cart.each do |item|
    if find_item_by_name_in_collection(item[:item], new_cart)
      #if it is already in the new cart
      new_cart.do |new_item|
        if new_item[:item] == item
          new_item[:count] +=1
        end
      end
    else
      #if it isn't in the new cart
      new_cart.unshift(item)
      new_cart[0][:count] = 1
    end
  print new_cart
end

consolidate_cart([
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "KALE", :price => 3.00, :clearance => false}
])
  