require 'pry'

def get_first_name_of_season_winner(data, season)
  winner = {}
  ladies = data[season]
  winner = ladies.find{|lady| lady["status"] == "Winner"}
  winner_name = winner["name"].split(' ')
  winner_name[0]
end

def get_contestant_name(data, occupation)
  arr = []
  data.each do |season, attributes| 
    attributes.each do |job| 
      if job["occupation"] == occupation
        return job["name"]
      end 
    end 
  end 
end 
   
# def get_contestant_name(data, occupation)
#   const_work = ""
#   data.each do |season, attributes| 
#     const_work = attributes.find {|job| job["occupation"] == occupation}
#   end 
#   binding.pry
#   const_work["name"]
#   end 
  
  
   #  Build a method, `get_contestant_name`, that takes in the data hash and an
  # occupation string and returns the name of the woman who has that occupation.

def count_contestants_by_hometown(data, hometown)
  counter = 0 
  data.each do |season, cont_info| 
    cont_info.each do |contestant| 
      if contestant["hometown"] == hometown
        counter+= 1
      end 
    end 
  end
  return counter
end 
  # hometown == counter 
   # Build a method, `count_contestants_by_hometown`, that takes in two
   # arguments––the data hash and a string of a hometown. This method should
   # return a counter of the number of contestants who are from that hometown.

def get_occupation(data, hometown)
  data.map do |season, contestants| 
    contestants
  end.flatten.find  do |contestant| 
    if  contestant["hometown"] == hometown
      return contestant["occupation"]
    end 
      end 
end


def get_average_age_for_season(data, season)
  # code here
end
