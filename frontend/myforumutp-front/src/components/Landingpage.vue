<template>
    <div id="nav">
        <router-link to="/">Home</router-link>  | 
        <router-link to="/login">Login</router-link> | 
        <router-link to="/register">Register</router-link>
    </div>
  <router-view />
</template>

<script>
    import image from "../assets/logo2.png"
    export default {
        name: "Navigation"
    };
</script>