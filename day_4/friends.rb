# For a given person, return their name
def get_name(person)
  return person[:name]
end

# For a given person, return their favourite tv show
def get_favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

# For a given person, check if they like a particular food
def likes_to_eat(person, food)
 food_array = person[:favourites][:snacks]
return food_array.include?food
end

# For a given person, add a new name to their list of friends
def add_friend(person, friend)
person[:friends].push(friend)
end

#For a given person, remove a specific name from their list of friends
def remove_friend(person, friend)
  person[:friends].delete(friend)
end

#Find the total of everyone's money
def total_everyone_money(people)
  total_money = 0
  for person in people
    total_money += person[:monies]
  end
  return total_money
end


#For two given people, allow the first person to loan a given value of money to the other
def loan_money_to_other(lender, lendee, amount)
  lender[:monies] -= amount
  lendee[:monies] += amount
end


# Find the set of everyone's favourite food joined together
# (hint: concatenate the favourites/snack arrays together)
def every_favourite_food(people)
  #Create a empty array to save all the strings
  all_food = ""
  #For loop to iterate person in the array people
  for person in people
    #For loop to iterate in snacks in person
    for snacks in person[:favourites][:snacks]
      #adds new items to the array
      p snacks
      all_food += snacks += " "
    end
  end
  all_food.chop!
  return all_food
end

#Find people with no friends
def find_no_friends(people)
  no_mates = []
  for person in people
    if person[:friends].length == 0
      no_mates.push(person)
    end
  end
  return no_mates
end
