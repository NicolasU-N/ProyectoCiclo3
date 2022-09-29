import { createApp } from 'vue'
import App from './App.vue'
import router from './router/router.js'
import './assets/main.css'
import VueSweetalert2 from 'vue-sweetalert2';

createApp(App).use(router).use(VueSweetalert2).mount('#app')
