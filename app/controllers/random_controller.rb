class RandomController < ApplicationController

  def random_order
    @the_first_number = params["the_first_number"].to_i
    @the_second_number = params["the_second_number"].to_i
    @random_number = Random.rand(@the_first_number..@the_second_number)
  end

end
