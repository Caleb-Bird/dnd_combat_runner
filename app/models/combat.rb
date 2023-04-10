class Combat < ApplicationRecord
    # belongs_to :user
    has_many :combatants_in_combat
    has_many :combatants, through: :combatants_in_combat
    
    # TODO #2
    accepts_nested_attributes_for :combatants_in_combat
    validates_associated :combatants_in_combat
end
