<script setup>
import image from "../assets/logo2.png"
</script>

<template>
  <div class="center">
    <img :src="image" />
    <Navigation></Navigation>
    <h1>Bienvenido a myforumutp</h1>
    <b>Por favor regístrese e inicie sesión en la plataforma</b>
  </div>
</template>
  
<script>
import Navigation from "../components/SimpleNavigation.vue";

export default {
  data: () => ({
  }),
  methods: {},
  components: { Navigation }
};
</script>

<style>
.center {
  border: 5px solid #08BD7E;
  text-align: center;
  position: fixed;
  top: 50%;
  left: 50%;
  -webkit-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
}

/*#app {
    display: grid;
    grid-template-columns: 1fr 1fr;
    padding: 0 2rem;
  }*/
</style>