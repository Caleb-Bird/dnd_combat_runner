class Combat < ApplicationRecord
    belongs_to :user
    has_many :combatants_in_combat, dependent: :destroy
    has_many :combatants, through: :combatants_in_combat
    
    # TODO #2 che
    accepts_nested_attributes_for :combatants_in_combat, allow_destroy: true
    validates_associated :combatants_in_combat
end
