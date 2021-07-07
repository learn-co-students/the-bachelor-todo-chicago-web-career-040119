
#require "pry"

def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
      if contestant["status"].downcase == "winner"
         return contestant["name"].split(" ").first

    end
  end# code here
end

def get_contestant_name(data, occupation)
  data.each do |season, contestant|
    contestant.each do |cont_data|
      if cont_data["occupation"] == occupation
         return cont_data["name"]
       end
       end
     end# code here
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestant|
    contestant.each do |cont_data|
      if cont_data["hometown"] == hometown
        counter += 1# code here
      end
    end
  end
counter
end

def get_occupation(data, hometown)
  data.each do |season, contestant|
    contestant.each do |cont_data|
      if cont_data["hometown"] == hometown
         return cont_data["occupation"]
       end
    end
  end# code here
end

def get_average_age_for_season(data, season)
age_array = []
    data[season].each do |contestant|
      age_array << contestant["age"].to_i

    #  contestant.each do |cont_data|
    #end# code here
  end
  (age_array.reduce(:+) / age_array.size.to_f).round(0) 

end
