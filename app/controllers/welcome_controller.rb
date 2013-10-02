class WelcomeController < ApplicationController

  def index

  end

  def guess
    @gender = BodyStat.guess_gender(params[:height].to_i, params[:weight].to_i)
  end

end


