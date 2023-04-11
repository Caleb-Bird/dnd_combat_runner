
class ApplicationController < ActionController::Base
    helper_method :root_path
    
    def set_all_combatants
        @combatants = current_user.combatants
    end
    def set_all_combats
        @combats = current_user.combats
    end
    def root_path
        return authenticated_root_path if current_user

        unauthenticated_root_path
    end
end

