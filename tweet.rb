class Tweet

	attr_accessor :title, :content, :author

	def initialize(title, content, author)

		if title == nil || content == nil
			puts "Oops, something went wrong with your tweet."
		end
	end

	@title = title
	@content = content
	@author = author

end

#need to be storing the tweets in an array or a hash so that they can be called by the all  method
	def all
	tweets = "#{title}, #{content}"
	puts tweets
end

end

