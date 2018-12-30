
def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant_hash|
    contestant_hash.each do |key, value|
      if value == "Winner"
        return contestant_hash["name"].split(' ')[0]
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_number, contestants_array|
    contestants_array.each do |contestant_hash|
      contestant_hash.each do |key, value|
        if value == occupation
          return contestant_hash["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter_hash = {}
  data.each do |season_number, contestants_array|
    contestants_array.each do |contestant_hash|
      puts contestant_hash
      if contestant_hash["hometown"] in counter_hash
	      counter_hash[contestant_hash["hometown"]] += 1
      else
        counter_hash[contestant_hash["hometown"]] = 1
	    end
	  end
	end
	counter_hash[hometown]
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
