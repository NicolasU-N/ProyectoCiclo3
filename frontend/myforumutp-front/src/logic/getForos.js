import axios from "axios";
import Cookies from "js-cookie";

const ENDPOINT_PATH = "http://localhost:8080/api";

export default {    
    getForos() {
        return axios.get(ENDPOINT_PATH + "/usuario/all");
    }
};