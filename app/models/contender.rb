class Contender < ActiveRecord::Base

  def banner
    "banners/#{uname}.png"
  end

  def headshot
    "headshots/#{uname}.jpg"
  end

end
