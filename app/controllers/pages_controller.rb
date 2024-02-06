class PagesController < ApplicationController
  def home
    render({ :template => "pages_template/home"})
  end

  def dice_page
    @dice_num = params["number_of_dice"].to_i
    @sides_num = params["number_of_sides"].to_i

    @rolls = []
    @dice_num.times {
      die_roll = rand(1..@sides_num)
      @rolls.push(die_roll)
    }

    render({ :template => "pages_template/dice_roll"})
  end
end
