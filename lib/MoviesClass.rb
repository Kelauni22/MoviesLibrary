class Movies

#Create hash for movies already stored

MoviesRatings= {

"Django Unchained" => 4.5,
"A Goofy Movie" => 5,
"Zoolander" => 2.5,
"The Notebook" => 5,
"American Pie" => 3.5,
"Love Jones" => 1
}

	
	while loop = true
		puts "Which would you like to do?"
		puts "a.) To display full list of movies, type 'd'"
		puts "b.) To add a new movie and rating to your list, type 'a'"
		puts "c.) To delete a movie from your list, type 'dl'"
		puts "d.) To update a movie in your list, type 'u'"
		puts "e.) To quit, type 'q'"
		

		choice = gets.chomp

		#Display your movies
		case choice
			when "d"
					
				 MoviesRatings.each do |x,y|
				 puts "#{x} has a rating of #{y}"	
				 end
			end
				

			
			when "a" 

				 puts "What movie would you like to add?"
				 add = gets.chomp
				 puts "What would you rate that movie?"
				 rate = gets.chomp
				 
				 MoviesRatings[add] = rate.to_i
				 puts "The movie #{add} and the rating of #{rate} has been added to your movie library."
			end
		
			
			when "dl"
			
				puts "What movie would you like to delete?"
				delete = gets.chomp			
				MoviesRatings.delete(delete)
				
			end
			
			when "u"
			
				puts "What movie would you like to update?"
				movie = gets.chomp
				puts "What is the new rating?"
				rating = gets.chomp.to_i
				
				MoviesRatings[movie] = rating
				puts "The movie #{movie} has been udpated to a rating of #{rating}"
			end
			
			
			when "q"
			
			puts "Are you sure you want to quit? Type 'y' for yes."
			choice = gets.chomp.downcase
			
			
				if "y"
					loop = false;
				end
				
			end
		end
	end
