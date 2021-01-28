class Stat < ApplicationRecord
  belongs_to :player
  belongs_to :legend

  before_create :generate_identifier

  protected

  def generate_identifier
      self.identifier = "#{self.displayName}|#{self.player_id}|#{self.legend_id}"
  end

end
