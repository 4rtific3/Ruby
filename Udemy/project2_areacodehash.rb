dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}
 
# Get city names from the hash
def get_city_names(somehash)
  # somehash.each { |key, value| puts key }
  somehash.keys
end
 
# Get area code based on given hash and key
def get_area_code(somehash, key)
  if somehash.include?(key)
    # area_code = somehash.select { |k, v| key == k }
    area_code = somehash[key]
    return "The area code for #{key} is #{area_code}"
  else
    "We do not have the area code for this city"
  end
end
 
# Execution flow
loop do
  puts "Which city do you want the area code for?"
  puts get_city_names(dial_book)
  print "Enter your selection: "
  input = gets.chomp.downcase

  puts get_area_code(dial_book, input)
  

  puts "Do you want to continue? (Y/N)"
  continue = gets.chomp.downcase
  break if continue != "y"
end