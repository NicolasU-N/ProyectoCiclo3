<template>
    <div id="nav">
        <router-link to="/landing" v-if="is_auth">Home | </router-link>
        <router-link to="/" v-if="is_auth==false">Home | </router-link>
        <router-link to="/login">Login | </router-link>
        <router-link to="/register">Register</router-link>
        <a href="#" v-if="is_auth" v-on:click="logOut">
            | LogOut
        </a>
    </div>
    <router-view />
</template>

<script>
import Cookies from "js-cookie";

export default {
    Navigation: "Navigation",
    data: () => ({
        is_auth: false,
    }),
    created() {
        this.verifyAuth();
    },
    methods: {
        verifyAuth() {
            this.is_auth = (Cookies.get("userLogged") + Cookies.get("userLoggedToken")) || false;
            console.log(this.is_auth);

            // if (this.is_auth == false) this.$router.push({ name: "login" });
            // else this.$router.push({ name: "landing" });
        },
        logOut() {
            Cookies.remove("userLogged");
            Cookies.remove("userLoggedToken");
            this.$swal("OK", "Sesión cerrada", "success");
            this.verifyAuth();
        },
    }
};
</script>