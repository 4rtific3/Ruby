users = [
  {username: "Annie", password: "password1"},
  {username: "Bernie", password: "password2"},
  {username: "Carrie", password: "password3"},
  {username: "Debbie", password: "password4"},
  {username: "Ernie", password: "password5"}
]

tries = 0

puts "Welcome to the authenticator"
25.times {print "-"}
puts "\nThis program will take input from the user and check their password"
puts "If the password is correct, you will get the hash object associated with the user"

while tries < 3
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp

  # for hash in users
      ## if hash[:username]==username
      ##     user_hash = hash
      ## end
  #     user_hash = hash if hash[:username] == username
  # end

  # How to shorten the for loop into a single line?
  # user_hash = users.each {|i| i if i[:username]==username}

  if user_hash != nil
      if user_hash[:password] == password
          p user_hash
      else
          p "Credentials were not correct"
          tries += 1
      end
        
      if tries < 3
          p "Press n to quit or any other key to continue:"
          quit = gets.chomp.downcase
          # if quit == "n"
          #     exit
          # end
          break if quit == "n"
      else
          p "You have exceeded the number of attempts"
      end
  else
      p "Please enter a valid username"
  end
  user_hash = nil
end

## Checking to see if both the username & password match
## Current solution does not account for duplicate usernames

# def auth_user(username, password, users)
#   users.each do |hash|
#       if users[:username] == username && users[:password] == password
#           return hash
#       end
#   end
#   # The final line of a method does not require return as it is implied
#   "Credentials were not correct"
# end