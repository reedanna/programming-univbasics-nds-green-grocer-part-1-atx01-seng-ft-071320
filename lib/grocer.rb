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
    if find_item_in_name_in_collection(item[:name], new_cart)
      #if it is already in the new cart
      
    else
      #if it isn't in the new cart
      new_cart.push(item)
      
    end
  end
end


  