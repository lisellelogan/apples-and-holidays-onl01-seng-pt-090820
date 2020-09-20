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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holiday|
    puts "#{season.to_s.capitalize!}:"
    holiday.each do |occasion, supplies|
      #puts "  #{occasion.to_s.split("_").map {|word| word.capitalize}.join(" ")}: #{supplies.join(", ")}"
      separated_words = occasion.to_s.split("_")
      capitalized_words = separated_words.map do |word|
        word.capitalize!
      end
      capitalized_occasion = capitalized_words.join(" ")
      puts "  #{capitalized_occasion}: #{supplies.join(", ")}"
    end
  end
end

end

#def all_holidays_with_bbq(holiday_hash)
  #iterate through the hash
  #in each hash, check if hashes value includes BBQ
  #if it includes BBQ, add that hash key to empty array
  #holiday_hash.each do |seasons, event|
  #  event.map {|occasion, components| components.include?("BBQ")}
  #end
#end
