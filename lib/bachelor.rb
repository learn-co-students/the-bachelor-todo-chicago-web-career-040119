def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |people|
    people.each do |key, value|
      if value == "Winner"
        winner_name = people["name"]
        return winner_name.split(" ").first 
   end 
  end
 end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, info|
    info.each do |people|
    people.each do |name, details|
      if details == occupation
        return people["name"]
      end
    end
  end
 end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0 
  data.each do |season, info|
    info.each do |people|
      people.each do |name, details|
        if details == hometown
          counter += 1 
        end 
      end
    end
  end
    counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, info|
    info.each do |people|
      people.each do |name, detailes|
        if detailes == hometown
          return people["occupation"]
        end
      end
    end
  end
  
end

def get_average_age_for_season(data, season)
  # code here
  count = 0 
  age = 0 
  data[season].each do |details|
    details.each do |key, info|
      if key == "age"
      count += 1 
      age += info.to_f 
    end
  end
end
answer = (age/count).round
end
