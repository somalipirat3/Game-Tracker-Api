class Player < ApplicationRecord
    
    before_create :generate_identifier

    protected

    def generate_identifier
        self.identifier = "#{self.username}|#{self.platform}"
    end
    
end
