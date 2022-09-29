<script setup>
import HelloWorld from './components/HelloWorld.vue'
import TheWelcome from './components/TheWelcome.vue'
import image from "./assets/logo2.png"
</script>

<template>
  <header>
    <img :src="image" />
  <div id="nav">
      <router-link to="/">Home</router-link>  | 
      <router-link to="/login">Login</router-link> | 
      <router-link to="/register">Register</router-link>
  </div>
  <router-view />
  </header>
</template>


