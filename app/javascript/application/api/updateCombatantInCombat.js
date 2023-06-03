import axios from 'axios';
import { toast } from 'react-toastify';

axiosConnection = axios.create({ baseURL: "http://localhost:3000" });

export const errorToast = (message) => {
  toast(message, {
    position: "top-left",
    autoClose: 5000,
    hideProgressBar: false,
    closeOnClick: true,
    pauseOnHover: true,
    draggable: true,
    progress: undefined,
    theme: "dark",
  })
}

export const updateCombatantInCombat = (combatant_in_combat) => {
  axiosConnection.put(`/combatants_in_combat/${combatant_in_combat.id}.json`, {combatant_in_combat: combatant_in_combat })
    .catch(function (error) {
      console.log(error);
      errorToast("Connection Lost! Refresh Page");
    });
}




