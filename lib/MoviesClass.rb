class Movies

attr_accessor :moviesratings
attr_accessor :add
attr_accessor :rate
attr_accessor :choice
attr_accessor :rating
attr_accessor :delete

	def initialize()
	@add = ""
	@rate = ""
	@choice = ""
	@rating = 0
	@delete = ""
	@movie = ""
	

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
		rate = gets.chomp
		@rate=rate		
		puts ("\n")
		return @rate
	end
	
	def new_rate()
		if 	@moviesratings[@add].nil?
			@moviesratings[@add] = @rate.to_i
			puts "The movie #{@add} and the rating of #{@rate} have been added to your movie library. \n\n"
		else
			puts ("I'm sorry, that movie already exists. The rating is #{@moviesratings[@add]}. \n\n")
		end
	end
	
	
	def _delete()
	input = gets.chomp
	puts ("\n")
		
		if @moviesratings[input].nil?
			puts "Sorry, that movie does not exist!"
		else
			@moviesratings.delete(input)
			puts "The movie #{input} has been deleted successfully!\n\n"
		end
	end
	
	def update()
	
	if @moviesratings[@movie].nil?
		puts "Sorry, that movie does not exist! \n\n"
		
		else
		puts "What is the new rating?\n\n"
		rating = gets.chomp.to_i
		
		@rating = rating
		@moviesratings[@movie] = @rating
		puts "\n\n The movie #{@movie} has been udpated to a rating of #{@rating}\n\n"
		end
	end
	
	def quit(choice)
		@choice = choice
		abort() unless @choice != "y"
		puts ("\n")
	end
	
end






