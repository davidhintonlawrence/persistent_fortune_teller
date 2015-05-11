class ZodiacsController < ApplicationController

  def sign
   @zodiac = Zodiac.find_by({:sign => params["the_sign"] })
 end

 def creature
  @zodiac = Zodiac.find_by({:creature => params["the_creature"] })
end

def the_number
  @zodiac = Zodiac.find_by({:id => params["the_number"].to_i })
  # @zodiac = Zodiac.find(params["the_number"].to_i)
  # different way of doing the same thing
end

def index
  @list_of_zodiacs = Zodiac.all
end

def new_form

end

# params =Parameters: {"symbol"=>"cancer", "animal"=>"crab", "fortune"=>"ohhh yeaaaah"}
def create_row

  z = Zodiac.new
  z.sign = params["symbol"]
  z.creature = params["animal"]
  z.fortune = params["fortune"]
  z.save

  redirect_to("http://localhost:3000/zodiacs")

end

def destroy
  z = Zodiac.find(params["the_id"])
  z.destroy
  redirect_to("http://localhost:3000/zodiacs")
end


end
