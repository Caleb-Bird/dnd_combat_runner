class ApplicationController < ActionController::Base
    def set_all_combatants
        @combatants = current_user.combatants
    end
end
