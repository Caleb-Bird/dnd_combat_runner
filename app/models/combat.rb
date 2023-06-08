class Combat < ApplicationRecord
    belongs_to :user
    has_many :combatants_in_combat, dependent: :destroy
    has_many :combatants, through: :combatants_in_combat
    accepts_nested_attributes_for :combatants_in_combat, allow_destroy: true
    validates_associated :combatants_in_combat

    enum status: { draft: 0, setup: 1, running: 2, completed: 3 }

    validates :combat_name, presence: true
    validates :current_initiative, presence: true
end
