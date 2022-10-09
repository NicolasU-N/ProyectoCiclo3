<script setup>
import image from "../assets/logo2.png"
</script>

<template>
  <Navbar></Navbar>

  <img :src="image" />

  <div class="container">
    <table class="blueTable">
      <thead>
        <tr>
          <th>Creador</th>
          <th>Asunto</th>
          <th>Contenido</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="item in foros">
          <td>{{item.usuario.correo}} {{item.usuario.username || ""}}</td>
          <td>{{item.asunto}}</td>
          <td>{{item.contenido}}</td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
import ForumService from "../services/ForumService.js";
import Navbar from "../components/Navbar.vue";

export default {
    data: () => ({
        foros: [],
    }),
    created() {
        this.listartForos();
    },
    methods: {
        async listartForos() {
            try {
              const res = await ForumService.getForos();
              this.foros = res.data.publicaciones;
              // console.log(this.foros);
            }
            catch (error) {                
                console.log(error);
            }
        },
    },
    components: { Navbar }
};
</script>

<style>
.lis {
  list-style: square inside;
}

table.blueTable {
  /* font-family: "Times New Roman", Times, serif; */
  margin: 1rem auto;
  border: 4px solid #FFF3F7;
  width: 100%;
  height: 200%;
  text-align: left;
  border-collapse: collapse;
}

table.blueTable td,
table.blueTable th {
  border: 1px solid #FFF3F7;
  padding: 5px 5px;
}

table.blueTable tbody td {
  font-size: 18px;
  color: #FFF3F7;
}

table.blueTable thead {
  background: #08BD7E;
  border-bottom: 2px solid #444444;
}

table.blueTable thead th {
  font-size: 17px;
  font-weight: bold;
  color: #FFFFFF;
  text-align: center;
  border-left: 2px solid #D0E4F5;
}

table.blueTable thead th:first-child {
  border-left: none;
}

table.blueTable tfoot td {
  font-size: 14px;
}

table.blueTable tfoot .links {
  text-align: right;
}

table.blueTable tfoot .links a {
  display: inline-block;
  background: #1C6EA4;
  color: #FFFFFF;
  padding: 2px 8px;
  border-radius: 5px;
}
</style>