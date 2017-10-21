distances = Hash.new
File.open("./input.txt", "r") do | f |
  f.each_line do | l | 
    line = l.split(' ')
    two_locations = [ line[0], line[2] ]
    distance = line[4].to_i
    distances[two_locations] = distance
  end
end
locations = %w(AlphaCentauri Snowdin Tambi Faerun Norrath Straylight Tristram Arbre)
routes = locations.permutation.to_a
shortest_distance = distances.values.sum
routes.each do | route | 
  route_distance = 0
  route.each_index do | index | 
    if index == 7
      break
    end
    current_location = route[index]
    next_location = route[index + 1]
    key_1 = [ current_location, next_location ]
    key_2 = [ next_location, current_location ]
    if ( distances.key?(key_1) or distances.key?(key_2) ) 
      if distances[key_1]
        route_distance += distances[key_1]
      else
        route_distance += distances[key_2]
      end
    end
  end
  if route_distance < shortest_distance
    shortest_distance = route_distance
  end
end
puts shortest_distance
