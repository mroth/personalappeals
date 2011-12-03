class Battle < ActiveRecord::Base
  belongs_to :winner, :class_name => 'Contender', :foreign_key => "winner_id"
  belongs_to :loser, :class_name => 'Contender', :foreign_key => "loser_id"
end
