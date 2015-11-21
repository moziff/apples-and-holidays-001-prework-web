require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  return holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above 
  # add the second argument, which is a supply, to BOTH the 
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas]<<supply
  holiday_hash[:winter][:new_years]<<supply
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day]<<supply
  
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  # holiday_hash[:season][:holiday_name]=supply_array
  columbus_day_supplies = ["Flags", "Parade Floats", "Italian Food"]
  valentines_day_supplies = ["Cupid Cut-Out", "Candy Hearts"]
  holiday_hash[:fall][:columbus_day]=columbus_day_supplies
  holiday_hash[:winter][:valentines_day]=valentines_day_supplies
  holiday_hash
  
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  new_array=holiday_hash[:winter][:christmas].concat(holiday_hash[:winter][:new_years])

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:

  holiday_hash.each do |hash_key,hash_values|

    puts "#{hash_key.capitalize}:"
    hash_values.each do |hash2_key,hash2_values|
      puts "  #{hash2_key.to_s.tr("_"," ").split.map(&:capitalize).join(" ")}: #{hash2_values.join(", ")}"
    end    
  end
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
   new_array=[]
   holiday_hash.each do |hash_key,hash_values|
    hash_values.each do |hash2_key,hash2_values|
      if hash2_values.include?("BBQ")
        new_array<<hash2_key
      end
    end
  end

      
new_array
    
end







