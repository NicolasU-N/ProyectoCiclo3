<script setup>
  import image from "../assets/logo2.png"
</script>
<template>
  
  
  <div class="center">
    <img :src="image" />
    <Navigation></Navigation>
    <h1>Bienvenido a myforumutp</h1>    
  </div>
  

  
</template>
  
<script>
import getForosService from "../logic/getForos.js";
import axios from "axios";
import Navigation from "../components/Landingpage.vue";
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