#Users should be able to input commands to sign up a user, sign in, sign out, create tweets, and see all tweets.

puts "Select your menu option by entering the number corresponding to what you'd like to do"
puts "***********************"
puts "Register(1) | Sign In (2) | Sign Out (3) | Tweet (4) | See all Tweets (5)"
selection = gets.chomp.to_i

if selection == 1
	User.register

elsif selection == 2
	User.sign_in

elsif selection == 3
	User.sign_out

elsif selection == 4
	puts "Compose your tweet"
	#This needs to have a way to store the newly composed tweet

elsif selection == 5
	puts Tweet.all
end
	