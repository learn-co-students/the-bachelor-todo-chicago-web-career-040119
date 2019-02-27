def get_first_name_of_season_winner(data, season)
  # The method should return the first name of that
  #season's winner
  data[season].each do |people|
    people.each do |key, value|
      if value == "Winner"
        winner_name = people["name"]
        return winner_name.split(' ').first
      end
    end
  end
end

def get_contestant_name(data, occupation)

   data.each do |season, array|
    array.each do |people|
      people.each do |key,value|
        if value == occupation
          return people["name"]
        end
      end
    end
  end
end


def count_contestants_by_hometown(data, hometown)
  #This method should return a counter of the number
  #of contestants who are from that hometown.
  counter = 0
  data.each do |season, array|
    array.each do |hash|
      hash.each do |key, value|
        if value == hometown
          counter += 1
        end
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  #  It returns the occupation of
  # the first contestant who hails from that hometown
  data.each do |season, array|
    array.each do |hash|
      hash.each do |key, value|
        if value == hometown
          return hash["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # Iterate through the hash and return the average
  #age of all of the contestants for that season
  age = 0
  count = 0
  data[season].each do |hash|
    hash.each do |key, value|
      if key == "age"
        count += 1
        age += value.to_f
      end
    end
  end
  answer = (age/count).round
end
