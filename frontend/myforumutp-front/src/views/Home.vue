<template>
  <div class="home">
    <h1>Home</h1>    
  </div>
</template>
  
<script>
import getForosService from "../logic/getForos.js";
import axios from "axios";

export default {
  data: () => ({
    email: "",
    password: "",
    error: false,
  }),
  created() {
    axios
      .get("http://localhost:8080/api/usuario/all")
      .then((response) => {
        console.log(response);
      })
      .catch((error) => {
        console.log(error);
      });
  },
  methods: {
    // async getForos() {
    //   try {
    //     await getForosService
    //       .getForos()
    //       .then((response) => {
    //         console.log(response);
    //       })
    //       .catch((error) => {
    //         console.log(error);
    //       });
    //   } catch (error) {
    //     console.log(error);
    //     this.error = true;
    //   }
    // },
  },
};
</script>
  
<style>
</style>