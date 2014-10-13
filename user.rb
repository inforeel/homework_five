class User
#global variables go here at the top of the file. http://www.rubyist.net/~slagell/ruby/globalvars.html	
	$session = " "
	$user = " "
	$i = 1

	attr_accessor :username, :password

	def initialize(username, password)

		if username == nil || password == nil
			puts "Please enter in all required information"
		end
	end

	@username = username
	@password = password

	def sign_in 
		puts "Enter your username"
		username = gets.chomp 
		
		puts "Hello #{username}. Please enter your password."
		password = gets.chomp
	end

	# def sign_out
	# end

	# def tweet
	# end