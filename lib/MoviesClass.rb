class Movies

attr_accessor: MoviesRatings
attr_accessor: add
attr_accessor: rate

	def initialize(MoviesRatings)
	@MoviesRatings = {}
	@add = ""
	@rate = ""

	end

MoviesRatings= {

"Django Unchained" => 4.5,
"A Goofy Movie" => 5,
"Zoolander" => 2.5,
"The Notebook" => 5,
"American Pie" => 3.5,
"Love Jones" => 1
}

	def display()
		@MoviesRatings.each do |x,y|
		puts "#{x} has a rating of #{y}"	
		end		
	end
	
	def add(add, rate)
		@add = add
		@rate = rate
		add = gets.chomp
		puts ("\n")
				 
		 if @MoviesRatings[add].nil?
			 
			 
			 @MoviesRatings[add] = rate.to_i
			 puts "The movie #{add} and the rating of #{rate} have been added to your movie library. \n\n"
		else
			puts ("I'm sorry, that movie already exists. The rating is #{@MoviesRatings[add]}. \n\n")
		end
	end
	
	def rate()
		
		rate = gets.chomp
				 puts ("\n")
	
	
	def delete(delete)
	
	delete = gets.chomp
	puts ("\n")
	
		if MoviesRatings[delete].nil?
			puts "Sorry, that movie does not exist!"
		else
			MoviesRatings.delete(delete)
			puts "The movie #{delete} has been deleted successfully!\n\n"
		end
	end
	
end






