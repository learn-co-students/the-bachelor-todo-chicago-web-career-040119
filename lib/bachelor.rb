def get_first_name_of_season_winner(data, season)
  data[season].each_with_index do |contestant, index|
    if data[season][index]["status"] == "Winner"
       return contestant["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, season_details|
    data[season].each_with_index do |contestant, index|
      if data[season][index]["occupation"] == occupation
        return data[season][index]["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  hometown_count = 0
  data.each do |season, season_details|
    data[season].each_with_index do |contestant, index|
      if data[season][index]["hometown"] == hometown
        hometown_count += 1
      end
    end
  end
  hometown_count
end

def get_occupation(data, hometown)
  data.each do |season, season_details|
    data[season].each_with_index do |contestant, index|
      if data[season][index]["hometown"] == hometown
        return data[season][index]["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total_age = 0
  contestant_count = 0
  data[season].each_with_index do |contestant, index|
    total_age += data[season][index]["age"].to_i
    contestant_count += 1
  end
  (total_age.to_f / contestant_count.to_f).round
end
