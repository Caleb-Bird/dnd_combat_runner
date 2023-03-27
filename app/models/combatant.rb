class Combatant < ApplicationRecord
    def formated_name
        name.presence || "No Name"
    end    
end
