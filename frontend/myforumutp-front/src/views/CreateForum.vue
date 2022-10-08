<script setup>
import { MDBBtn, MDBNavbar } from 'mdb-vue-ui-kit';
import image from "../assets/logo2.png"
</script>

<template>
  <nav id='menu'>
    <input type='checkbox' id='responsive-menu' onclick='updatemenu()'><label></label>
    <ul>
      <li><a href='http://127.0.0.1:5173/landing'>Principal</a></li>
      <li><a class='dropdown-arrow' href='http://'>Foros</a>
        <ul class='sub-menus'>
          <li><a href='http://'>Ver todos los foros</a></li>
          <li><a href='http://127.0.0.1:5173/create'>Crear un foro</a></li>
          <li><a href='http://'>Products 3</a></li>
          <li><a href='http://'>Products 4</a></li>
        </ul>
      </li>
      <li><a href='http://'>About</a></li>
      <li><a class='dropdown-arrow' href='http://'>Services</a>
        <ul class='sub-menus'>
          <li><a href='http://'>Services 1</a></li>
          <li><a href='http://'>Services 2</a></li>
          <li><a href='http://'>Services 3</a></li>
        </ul>
      </li>
      <li><a href='http://127.0.0.1:5173/landin'>Contact Us</a></li>
    </ul>
  </nav>
  <img :src="image" />
  <div class="row mx-auto">
    <div class="mx-auto">
      <span class="hola">Hola, <span class="fullName">{{ name }}</span></span>


    </div>
  </div>

  <h1 class="title">Cree un nuevo tema de debate</h1>
  <form action class="form" @submit.prevent="Crear">
    <label class="form-label" for="#Tema">Tema:</label>
    <input v-model="asunto" class="form-input" type="text" id="Tema" required placeholder="Tema" />
    <label class="form-label" for="#contenido">Contenido:</label>
    <textarea name="textarea" class="form-input" v-model="contenido" rows="10" cols="50" placeholder="Contenido"
      id="contenido"></textarea>
    <p v-if="error" class="error">
      Has introducido mal el formato de entrada.
    </p>
    <input class="form-submit" type="submit" value="Crear" />
  </form>
  <p class="msg">
    ¿Necesitas ayuda?
    <router-link to="/help">Guia de usuario</router-link>
  </p>
</template>
  
<script>
import axios from "axios";
import Cookies from "js-cookie";

export default {
  data: () => ({
    user_email: "",
    asunto: "",
    contenido: ""
  }),
  created() {
    //Cookies.set("userLogged", "userLogged");
    this.name = Cookies.get("userLogged");
    this.user_email = Cookies.get("userLogged");
    console.log(this.name);
    console.log("Created user_email " + this.user_email);
  },
  methods: {
    async Crear() {
      console.log("CREAR FORO")

      axios.post('http://localhost:8080/api/publicacion/new', {
        user_email: this.user_email,
        contenido: this.contenido,
        asunto: this.asunto
      }, {
        headers: { Authorization: `Bearer ${Cookies.get("userLoggedToken")}` }
      })
        .then(function (response) {
          console.log(response);
        })
        .catch(function (error) {
          console.log(error);
        });
    },
  },
};
</script>
<style lang="scss" scoped>
#menu {
  background: #08BD7E;
  color: #FFF;
  height: 46px;
  padding-left: 18px;
  border-radius: 0px;
}

#menu ul,
#menu li {
  margin: 0 auto;
  padding: 0;
  list-style: none
}

#menu ul {
  width: 100%;
}

#menu li {
  float: left;
  display: inline;
  position: relative;
}

#menu a {
  display: block;
  line-height: 46px;
  padding: 0 14px;
  text-decoration: none;
  color: #FFFFFF;
  font-size: 16px;
}

#menu a.dropdown-arrow:after {
  content: "\25BE";
  margin-left: 5px;
}

#menu li a:hover {
  color: #0099CC;
  background: #F2F2F2;
}

#menu input {
  display: none;
  margin: 0;
  padding: 0;
  height: 46px;
  width: 100%;
  opacity: 0;
  cursor: pointer
}

#menu label {
  display: none;
  line-height: 46px;
  text-align: center;
  position: absolute;
  left: 35px
}

#menu label:before {
  font-size: 1.6em;
  content: "\2261";
  margin-left: 20px;
}

#menu ul.sub-menus {
  height: auto;
  overflow: hidden;
  width: 170px;
  background: #444444;
  position: absolute;
  z-index: 99;
  display: none;
}

#menu ul.sub-menus li {
  display: block;
  width: 100%;
}

#menu ul.sub-menus a {
  color: #FFFFFF;
  font-size: 16px;
}

#menu li:hover ul.sub-menus {
  display: block
}

#menu ul.sub-menus a:hover {
  background: #F2F2F2;
  color: #444444;
}

@media screen and (max-width: 800px) {
  #menu {
    position: relative
  }

  #menu ul {
    background: #111;
    position: absolute;
    top: 100%;
    right: 0;
    left: 0;
    z-index: 3;
    height: auto;
    display: none
  }

  #menu ul.sub-menus {
    width: 100%;
    position: static;
  }

  #menu ul.sub-menus a {
    padding-left: 30px;
  }

  #menu li {
    display: block;
    float: none;
    width: auto;
  }

  #menu input,
  #menu label {
    position: absolute;
    top: 0;
    left: 0;
    display: block
  }

  #menu input {
    z-index: 4
  }

  #menu input:checked+label {
    color: white
  }

  #menu input:checked+label:before {
    content: "\00d7"
  }

  #menu input:checked~ul {
    display: block
  }
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