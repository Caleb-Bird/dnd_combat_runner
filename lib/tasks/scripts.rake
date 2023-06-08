namespace :scripts do
  desc 'Resets Hidden Initiatives for All Combatans in Combat'
  task reset_hidden_initiatives: :environment do
    CombatantInCombat::BulkHiddenInitiativeReset.call
  end
end
