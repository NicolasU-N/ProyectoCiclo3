<script setup>
import image from "../assets/logo2.png"
</script>

<template>
  <Navbar></Navbar>

  <img :src="image" />
  <div id="hola">
    <span>Hola, {{ name }}</span>
  </div>

  <h1 class="title">Cree un nuevo tema de debate</h1>
  <form action class="form" @submit.prevent="Crear">
    <label class="form-label" for="#asunto">Tema:</label>
    <input v-model="foro.asunto" class="form-input" type="text" id="asunto" required placeholder="Tema" />
    <label class="form-label" for="#contenido">Contenido:</label>
    <textarea name="textarea" class="form-input" v-model="foro.contenido" rows="10" cols="50" placeholder="Contenido"
      id="contenido"></textarea>
    <!-- <p v-if="error" class="error">
      Has introducido mal el formato de entrada.
    </p> -->
    <input class="form-submit" type="submit" value="Crear" />
  </form>

  <p class="msg">
    ¿Necesitas ayuda?
    <router-link to="/help">Guia de usuario</router-link>
  </p>
</template>
  
<script>
import AuthService from "../services/AuthService.js";
import ForumService from "../services/ForumService.js";
import Navbar from "../components/Navbar.vue";

export default {
  data: () => ({
    foro: {
      user_email: "",
      asunto: "",
      contenido: ""
    },
    name: "",
  }),
  created() {    
    this.name = this.foro.user_email = AuthService.getUserLogged();
    console.log(this.name);
    console.log("Created user_email " + this.foro.user_email);
  },
  methods: {
    async Crear() {
      console.log("CREAR FORO")

      try {       
          await ForumService.createForo(this.foro);
          this.$swal("OK", "Foro registrado correctamente", "success");
          this.$router.push("/allForums");              
      } catch (error) {
        this.$swal("ERROR", "Falló la creación del foro", "error");
        console.log(error);
      }
    },
  },
};
</script>

<style lang="scss" scoped>
#hola {
  margin: 1rem auto;
}

.login {
  padding: 2rem;
  text-align: center;
}

.title {
  text-align: center;
}

.form {
  margin: 3rem auto;
  display: flex;
  flex-direction: column;
  justify-content: center;
  width: 60%;
  min-width: 350px;
  max-width: 100%;
  background: rgba(19, 35, 47, 0.9);
  border-radius: 5px;
  padding: 40px;
  box-shadow: 0 4px 10px 4px rgba(0, 0, 0, 0.3);
}

.form-label {
  margin-top: 2rem;
  color: white;
  margin-bottom: 0.5rem;

  &:first-of-type {
    margin-top: 0rem;
  }
}

.form-input {
  padding: 10px 15px;
  background: none;
  background-image: none;
  border: 1px solid white;
  color: white;

  &:focus {
    outline: 0;
    border-color: #1ab188;
  }
}

.form-inputb {
  padding: 50px 15px;
  background: none;
  background-image: none;
  border: 1px solid white;
  color: white;

  &:focus {
    outline: 0;
    border-color: #1ab188;
  }
}

.form-submit {
  background: #1ab188;
  border: none;
  color: white;
  margin-top: 3rem;
  padding: 1rem 0;
  cursor: pointer;
  transition: background 0.2s;

  &:hover {
    background: #0b9185;
  }
}

.error {
  margin: 1rem 0 0;
  color: #ff4a96;
}

.msg {
  margin-top: 3rem;
  text-align: center;
}
</style>