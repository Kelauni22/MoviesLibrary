class Movies

attr_accessor :moviesratings
attr_accessor :add
attr_accessor :rate
attr_accessor :choice
attr_accessor :rating
attr_accessor :delete
attr_accessor :input
attr_accessor :movie

	def initialize()
	@add = ""
	@rate = 0
	@choice = ""
	@rating = 0
	@delete = ""
	@movie = ""
	@input = ""
	

	@moviesratings= {

	"Django Unchained" => 4.5,
	"A Goofy Movie" => 5,
	"Zoolander" => 2.5,
	"The Notebook" => 5,
	"American Pie" => 3.5,
	"Love Jones" => 1
	}

	end
	

	def questions()
		puts "Which would you like to do? \n \n"
		puts "a.) To display full list of movies, type 'd'"
		puts "b.) To add a new movie and rating to your list, type 'a'"
		puts "c.) To delete a movie from your list, type 'dl'"
		puts "d.) To update a movie in your list, type 'u'"
		puts "e.) To quit, type 'q'"
		
		
		puts("\n")
		choice = gets.chomp
		puts("\n")
		@choice = choice
		return @choice
		
	end

	def display()
		display_return = ""
		@moviesratings.each do |x,y|
		display_return << "#{x} has a rating of #{y} \n"	
		end		
		return display_return
	end
	
	def add()
		add = @add
		@add = gets.chomp
		return add
	end
	
	def rate()
		rate = @rate
		@rate = gets.chomp.to_i		
		return rate
	end
	
	def new_rate()
		display_return = ""
		display_return2 = ""
		moviesratings = @moviesratings
		add = @add
		if 	@moviesratings[@add].nil?
			@moviesratings[@add] = @rate.to_i
			display_return << "The movie #{@add} and the rating of #{@rate} have been added to your movie library. \n\n"
		else
			display_return2 << "I'm sorry, that movie already exists. The rating is #{@moviesratings[@add]}. \n\n"
		end
	end
	
	
	def _delete()
		display_return3 = ""
		display_return4 = ""
		moviesratings = @moviesratings
		input = @input
			
		if @moviesratings[@input].nil?
			display_return3 << "Sorry, that movie does not exist! \n\n"
		else
			@moviesratings.delete(@input)
			display_return4 << "The movie #{@input} has been deleted successfully!\n\n"
		end
	end
	
	def update()
	
		display_return5 = ""
		display_return6 = ""
		display_return7 = ""
		moviesratings = @moviesratings
		rating = @rating
		movie = @movie
	
	if @moviesratings[@movie].nil?
		display_return5 << "Sorry, that movie does not exist! \n\n"
		
		else
		display_return6 << "What is the new rating?\n\n"
		rating = gets.chomp.to_i
		
		@moviesratings[@movie] = @rating
		display_return7 << "\n\n The movie #{@movie} has been udpated to a rating of #{@rating}\n\n"
		end
	end
	
	def should_quit()
		display_return8 = ""
		if choice != "y"
		   display_return8 << "Not a choice"
		else
			return choice
		end
	end
	
end






