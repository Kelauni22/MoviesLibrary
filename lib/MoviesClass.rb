class Movies

attr_accessor: MoviesRatings
attr_accessor: add
attr_accessor: rate
attr_accessor: choice
attr_accessor: rating

	def initialize(MoviesRatings)
	@MoviesRatings = {}
	@add = ""
	@rate = ""
	@choice = ""
	@rating = 0

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
	
	def add(add)
		@add = add
		add = gets.chomp
		return @add
	end
	
	def rate(rate)
		@rate=rate
		rate = gets.chomp
		puts ("\n")
		return @rate
	end
	
	def new_rate()
		if 	@MoviesRatings[@add].nil?
			@MoviesRatings[@add] = @rate.to_i
			puts "The movie #{@add} and the rating of #{@rate} have been added to your movie library. \n\n"
		else
			puts ("I'm sorry, that movie already exists. The rating is #{@MoviesRatings[@add]}. \n\n")
		end
	end
	
	
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
	
	def update(choice, rating)
	
	if @MoviesRatings[@movie].nil?
		puts "Sorry, that movie does not exist! \n\n"
		
		else
		puts "What is the new rating?\n\n"
		rating = gets.chomp.to_i
		
		@rating = rating
		@MoviesRatings[@movie] = @rating
		puts "\n\n The movie #{@movie} has been udpated to a rating of #{@rating}\n\n"
		end
	end
	
	def quit(choice)
		if (choice == "y")
		break
				
		end
	end
	
end






