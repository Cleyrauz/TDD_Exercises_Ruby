
#Get shop name
def pet_shop_name(pet_shop)
return pet_shop[:name]
end

#Get total cash in the pet shop
def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

#Add or remove cash
def add_or_remove_cash(pet_shop, amount)
total_cash = pet_shop[:admin][:total_cash] += amount
return total_cash
end

#How many pets solds there are?
def pets_sold(pet_shop)
  sold = pet_shop[:admin][:pets_sold]
  return sold
end

#Increase pets solds
def increase_pets_sold(pet_shop, amount)
sold = pet_shop[:admin][:pets_sold] += amount
return sold
end

#Check stock: How many pets there are in stock?
def stock_count(pet_shop)
count = pet_shop[:pets].size
  return count
end

#Check all pets by breed and not found
def pets_by_breed(pet_shop, breed)
  result = []
  for pet in pet_shop[:pets]
    if pet[:breed] == breed
      result.push(pet)

    end
  end
  return result
end

#Find the pet by name
def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      return pet
    end
  end
  return nil
end

#Remove pet by name
def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      pet_shop[:pets].delete(pet)
    end
  end
end

#Add pet to stock
def add_pet_to_stock(pet_shop, new_pet)
  add_pet_to_stock = pet_shop[:pets].push(new_pet)
  count = pet_shop[:pets].size
  return count
end

#Get customer cash
def customer_cash(customers)
customer_cash = customers[:cash]
  return customer_cash
end

#Remove customer cash
def remove_customer_cash(customers, amount)
  customer_cash = customers[:cash] -= amount
  return customer_cash
end

#Customer pet count
def customer_pet_count(customers)
  customer_pet_count =  customers[:pets].length
  return customer_pet_count
end

#Add pet to customer
def add_pet_to_customer(customer, new_pet)
add_pet_to_customer = customers[:pets].push(new_pet)
customer_pet_count = customers[:pets].size
return customer_pet_count
end

# add_pet_to_stock = pet_shop[:pets].push(new_pet)
# count = pet_shop[:pets].size
# return count
# end
