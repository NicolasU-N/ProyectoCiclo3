<template>
    <div>
    <vs-navbar collapse v-model="activeItem" class="nabarx">
      <div slot="title">
        <vs-navbar-title>
          MYFORUMUTP
        </vs-navbar-title>
      </div>

      <vs-navbar-item index="0">
        <router-link to="/">Home</router-link>
      </vs-navbar-item>
      <vs-navbar-item index="1">
        <router-link to="/login">Login</router-link>
      </vs-navbar-item>
      <vs-navbar-item index="2">
        <router-link to="/register">Register</router-link>
      </vs-navbar-item>
    </vs-navbar>
  </div>
    <ul>
      <li>
        <router-link to="/">Home</router-link>
      </li>
      <li>
        <router-link to="/login">Login</router-link>
      </li>
      <li>
        <router-link to="/register">Register</router-link>
      </li>
    </ul>
  </template>
  
  <script>
  export default {
    name: "Navigation"
  };
  </script>
  
  <style scoped>
  ul {
    margin: 0;
    padding: 0;
  }
  li {
    display: inline-block;
    padding: 1em 0.5em;
  }
  </style>