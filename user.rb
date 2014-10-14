class User
#global variables go here at the top of the file. http://www.rubyist.net/~slagell/ruby/globalvars.html	
# ? info on the .self method http://www.jimmycuadra.com/posts/self-in-ruby and http://rubylearning.com/satishtalim/ruby_self.html

	$session = " "
	

	attr_accessor :username, :password
	def initialize(username, password)

		if username == nil || password == nil
			puts "Please enter in all required information"
		end

	@username = username
	@password = password

end

#register method - want to have a way for people to create new accounts
	def register
		puts "Sign up here!" 
		puts "Enter in your username"

	end

#sign in method - want it to ask for username and password, and then set the session to that input so the session is recognized as self.
	def sign_in
		puts "Enter your username"
		username = gets.chomp 

		puts "Hello #{username}. Please enter your password."
		password = gets.chomp	

		user = User.new(username, password)

		$session = self 
	end
end

#sign_out method - want to have a way for the user to sign out and thus end the session, meaning that the session varible is replaced with whatever the next person enters for username or password
	
	def sign_out
		puts "Do you really want to sign out? Enter y for yes and n for no."
		sign_out_choice = gets.chomp.downcase #can you chain those two??, more importantly do you need to control user input in a better way than y or n?
			if sign_out_choice = y
				$session = nil
			else
				puts "Glad to see that you're staying!"
			end
	end
				

# tweet method - a way for the user to create a tweet. buuutt this all needs to be stored somewhere

	def create_tweet
			if $session == self
				puts "Give your tweet a title"
				title = gets.chomp
				puts "Tweet your tweet in text"
				content = gets.chomp
			else 
				puts "You must sign in before tweeting can commence."
			end
end

end 


























