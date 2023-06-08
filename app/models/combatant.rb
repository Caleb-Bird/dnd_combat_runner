class Combatant < ApplicationRecord
    belongs_to :user
    has_many :combatants_in_combats
    has_many :combats, through: :combatants_in_combats

    validates :name, presence: true
    validates :maximum_hp, presence: true

    def formated_name
        name.presence || "No Name"
    end    
end
