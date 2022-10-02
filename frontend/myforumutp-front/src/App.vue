<script setup>
import image from "./assets/logo2.png"

</script>

<template>
  <router-view />
  
</template>
<script>
  import Navigation from "./Components/Landingpage.vue";
  export default {
    name: "App",
    components: {
      navigation: Navigation
    }
  };
  </script>
