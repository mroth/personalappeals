class Contender < ActiveRecord::Base
  has_many :winning_battles, :class_name => 'Battle', :foreign_key => 'winner_id'#, :counter_cache => :wins
  has_many :losing_battles, :class_name => 'Battle', :foreign_key => 'loser_id'#, :counter_cache => :loses

  def banner
    "banners/#{uname}.png"
  end

  def headshot
    "headshots/#{uname}.jpg"
  end

end
