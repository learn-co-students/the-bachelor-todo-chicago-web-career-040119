require "pry"

js_hash = JSON.parse(File.read('spec/fixtures/contestants.json'))

def get_first_name_of_season_winner(data, season)
  data.each { |seazon, contests|
    if seazon == season
      contests.each { |contest|
        name = contest["name"].split(" ")
        return name[0]
      }
    else
      next
    end
  }
end

def get_contestant_name(data, occupation)
  data.each { |seazon, contests|
    contests.each { |contest|
      if contest["occupation"] == occupation
        return contest["name"]
      else
        next
      end
    }
  }
end

def count_contestants_by_hometown(data, hometown)
  townz = {}
  data.each {|seazon, contests|
    contests.each {|contest|
      if townz.has_key?(contest["hometown"])
        city = contest["hometown"]
        townz[city] += 1
      else
        city = contest["hometown"]
        townz[city] = 1
      end
    }
  }
  townz[hometown]
end

def get_occupation(data, hometown)
  data.each {|seazon, contests|
    contests.each {|contest|
      if contest["hometown"] == hometown
        return contest["occupation"]
      else
        next
      end
    }
  }
end

def get_average_age_for_season(data, season)
  ages = []
  data.each { |seazon, contests|
    if seazon == season
      contests.each { |contest|
        ages << contest["age"].to_f
      }
    else
      next
    end
  }
  averagez = ages.sum / ages.size
  averagez.round
end

get_average_age_for_season(js_hash, "season 10")
