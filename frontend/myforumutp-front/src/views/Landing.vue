<template>
  <Navbar></Navbar>
  <div id="hola">
    <span>Hola, {{ name }}</span>
  </div>
</template>

<script>
import AuthService from "../services/AuthService.js";
import Navbar from "../components/Navbar.vue";

export default {
  data: () => ({
    name: ""
  }),
  created() {
    this.name = AuthService.getUserLogged();
    console.log(this.name);
  },
  methods: {},
  components: { Navbar }
};
</script>

<style>
#hola {
  margin: 1rem auto;
}
</style>