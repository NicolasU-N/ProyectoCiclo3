//import * as Vue from "vue";
//import Router from './router/router.js'
//import Router from "vue-router";
//import * as Router from 'vue-router';
import { createWebHistory, createRouter } from "vue-router";
//import App from "../App.vue";
import Home from "../views/Home.vue";
import Login from "../views/Login.vue";
import Register from "../views/Register.vue";
import Landingpage from "../views/Landing.vue";
import CreateForum from "../views/CreateForum.vue";
import Allforums from "../views/Allforums.vue";
import NotFound from "../views/Notfound.vue";
//Vue.use(Router);

const routes = [
  { path: "/", component: Home },
  { path: "/login", component: Login },
  { path: "/register", component: Register },
  { path: "/landing", component: Landingpage },
  { path: "/create", component: CreateForum },
  { path: "/all", component: Allforums },
  {path: "/:catchAll(.*)",component: NotFound}
];

const router = createRouter({
    history: createWebHistory(),
    routes
  })
  
  export default router