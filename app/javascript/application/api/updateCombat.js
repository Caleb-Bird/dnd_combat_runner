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

export const updateCombat = (combat) => {
  axiosConnection.put(`/combat/${combat.id}.json`, {combat: combat })
    .catch(function (error) {
      console.log(error);
      errorToast("Connection Lost! Refresh Page");
    });
}