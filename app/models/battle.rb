class Battle < ActiveRecord::Base
  belongs_to :winner, :class_name => 'Contender', :foreign_key => "winner_id", :counter_cache => :wins
  belongs_to :loser, :class_name => 'Contender', :foreign_key => "loser_id", :counter_cache => :loses
end
