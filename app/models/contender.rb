class Contender < ActiveRecord::Base
  has_many :winning_battles, :class_name => 'Battle', :foreign_key => 'winner_id'
  has_many :losing_battles, :class_name => 'Battle', :foreign_key => 'loser_id'
  
  validates :uname, :presence => true, :uniqueness => true

  def banner
    "banners/#{uname}.png"
  end

  def headshot
    "headshots/#{uname}.jpg"
  end
  
  def ratio
    if wins == 0
      ratio = 0
    elsif loses == 0
      ratio = 1
    else
      ratio = wins.to_f / (wins+loses)
    end
    return ratio
  end

end
