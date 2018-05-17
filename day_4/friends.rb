def get_name(person)
  return person[:name]
end

def get_favourite_tv_show(person)
  return person[:favourites][:tv_show]
end 

























# def get_tv_show(person)
#   return person[:favourites][:tv_show]
# end
#
# def likes_to_eat(person, food)
#   for snack in person[:favourites][:snacks]
#   return true if (snack == food )
# end
#     return false
# end
#
# def add_friend(person, name)
#   person[:friends].push(name)
# end
#
# def delete_friend(person, name)
#   person[:friends].delete(name)
# end
#
# def count_money(people)
#   total_money = 0
#   for money in people
#     total_money += money[:monies]
# end
# p total_money
# end
#
# def loan_money(lender, lendee, amount)
# lender[:monies] -= amount
# lendee[:monies] += amount
# end
#
# def everyones_favourite_food(people)
#   all_food = []
#   for person in people
#     for snack in person[:favourites][:snacks]
#       all_food.push(snack)
#     end
#   end
#   return all_food.length
# end
#
#
# def findPeopleNoFriends(array)
#   sad_folk = []
#   for person in array
#     if person[:friends] == []
#       sad_folk.push(person[:name])
#     end
#   end
#   return sad_folk
# end
