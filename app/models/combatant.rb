class Combatant < ApplicationRecord
    belongs_to :user
    def formated_name
        name.presence || "No Name"
    end    
end
