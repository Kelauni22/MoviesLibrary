require "MoviesClass"

describe Movies do

	describe ".convert" do
	
		context "given number >= 50" do	
			it "returns number of fifties" do
				cr = CashRegister.new
				result = cr.convert(50)
				expect(result).to eql("1 fifty(s)")
			end
		end
	end		
end
