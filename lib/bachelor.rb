def get_first_name_of_season_winner(data, season)
    winner = ''
    data[season].each do |contestant|
        if contestant['status'] == 'Winner'
            winner = contestant['name'].split[0]
            break
        end
    end
    winner
end

def get_contestant_name(data, occupation)
    name = ''
    data.each do |season, contestants|
        contestants.each do |contestant|
            if contestant['occupation'] == occupation
                name = contestant['name']
                break
            end
        end
    end
    name
end

def count_contestants_by_hometown(data, hometown)
    count = 0
    data.each do |season, contestants|
        contestants.each do |contestant|
            if contestant['hometown'] == hometown
                count += 1
            end
        end
    end
    count
end

def get_occupation(data, hometown)
    occupation = nil
    data.each do |season, contestants|
        contestants.each do |contestant|
            if contestant['hometown'] == hometown
                occupation = contestant['occupation']
                break
            end
        end
    end
    occupation
end

def get_average_age_for_season(data, season)
    average_age = 0.0
    count = data[season].length
    data[season].each {|contestant| average_age += contestant['age'].to_f}
    (average_age/count).round
end
