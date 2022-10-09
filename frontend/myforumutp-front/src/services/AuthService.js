import axios from "axios";
import Cookies from "js-cookie";

const ENDPOINT_PATH = "http://localhost:8080";

export default {
  setUserLogged(userLogged) {
    Cookies.set("userLoggedToken", userLogged.token);
    Cookies.set("userLogged", userLogged.email);
  },

  getUserLogged() {
    return Cookies.get("userLogged") || null;
  },

  register(correo, password) {
    const user = { correo, password };
    return axios.post(ENDPOINT_PATH + "/api/usuario/new", user);
  },

  login(email, password) {
    const user = { email, password };
    return axios.post(ENDPOINT_PATH + "/auth/login", user);
  }
};