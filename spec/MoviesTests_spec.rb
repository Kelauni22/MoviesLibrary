require "MoviesClass"

describe Movies do

	describe ".display hardcoded" do
	
		context "when running the function" do	
			it "displays the hash that I made" do
				cr = Movies.new
				result = cr.display()
				expect(result).to eql( "Django Unchained has a rating of 4.5 \nA Goofy Movie has a rating of 5 \nZoolander has a rating of 2.5 \nThe Notebook has a rating of 5 \nAmerican Pie has a rating of 3.5 \nLove Jones has a rating of 1 \n")
			end
		end
	end	

	describe ".display" do
	
		context "when given a new movie and rating" do	
			it "returns that movie and rating" do
				cr = Movies.new
				cr.moviesratings = {"Dumbo" => 4.0}
				result = cr.display()
				expect(result).to eql("Dumbo has a rating of 4.0 \n")
			end
		end
	end	
	
	describe ".add" do
	
		context "when given an add input" do	
			it "it returns that same input" do
				cr = Movies.new
				cr.add = "add"
				result = cr.add()
				expect(result).to eql("add")
			end
		end
	end	
	
	describe ".rate" do
	
		context "when given an rate input" do	
			it "it returns that same input" do
				cr = Movies.new
				cr.rate = 4
				result = cr.rate()
				expect(result).to eql(4)
			end
		end
	end
	
	describe ".new_rate" do
	
		context "when given a movie and new rate" do	
			it "it returns the correct 'display_result' in class" do
				cr = Movies.new
				cr.moviesratings = {}
				cr.add = "Dumbo"
				cr.rate = 4
				result = cr.new_rate()
				expect(result).to eql("The movie Dumbo and the rating of 4 have been added to your movie library. \n\n")
			end
		end
	end
	
	describe ".new_rate" do
	
		context "when given a movie input" do	
			it "it returns the 'display_result2'" do
				cr = Movies.new
				cr.moviesratings = {"Dumbo" => 4}
				cr.add = "Dumbo"
				result = cr.new_rate()
				expect(result).to eql("I'm sorry, that movie already exists. The rating is 4. \n\n")
			end
		end
	end
	
	describe "._delete if nil" do
	
		context "when given a movie input" do	
			it "it returns that the movie doesn't exist" do
				cr = Movies.new
				cr.moviesratings = {}
				cr.input = "Dumbo"
				result = cr._delete()
				expect(result).to eql("Sorry, that movie does not exist! \n\n")
			end
		end
	end
	
		
	describe "._delete" do
	
		context "when given a movie input" do	
			it "it returns that the movie has been deleted" do
				cr = Movies.new
				cr.moviesratings = {"Dumbo" => 4}
				cr.input = "Dumbo"
				result = cr._delete()
				expect(result).to eql("The movie Dumbo has been deleted successfully!\n\n")
			end
		end
	end
	
	describe ".update not nil" do
	
		context "when given a movie input" do	
			it "it returns that the movie has been updated with the updated rating" do
				cr = Movies.new
				cr.moviesratings = {"Dumbo" => 4}
				cr.movie = "Dumbo"
				cr.rating = 5
				result = cr.update()
				expect(result).to eql("\n\n The movie Dumbo has been udpated to a rating of 5\n\n")
			end
		end
	end
	
	describe ".update nil" do
	
		context "when given a movie input" do	
			it "it returns that the movie doesn't exist" do
				cr = Movies.new
				cr.moviesratings = {}
				cr.movie = "Dumbo"
				result = cr.update()
				expect(result).to eql("Sorry, that movie does not exist! \n\n")
			end
		end
	end
	
	describe ".quit2 wrong letter" do
	
		context "when type a letter" do	
			it "the program says not a choice" do
				cr = Movies.new
				cr.choice = "z"
				result = cr.quit()
				expect(result).to eql("Not a choice")
			end
		end
	end

	describe ".quit nil" do
	
		context "when type 'y'" do	
			it "the program quits" do
				cr = Movies.new
				cr.choice = "y"
				result = cr.quit()
				expect(result).to eql (nil)
			end
		end
	end
	
	

	

end
	

	

