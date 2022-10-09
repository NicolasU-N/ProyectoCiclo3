<script setup>
import { ref } from 'vue'
const items = ref([{
        "id": 1,
        "asunto": "como importar un proyecto en intellij idea?",
        "contenido": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sed vehicula massa. In in sem ultricies, iaculis felis a, ornare nunc. Nulla condimentum suscipit lacus eu pulvinar. Praesent id varius nibh. Quisque est augue, rutrum vel erat in, vulputate condimentum libero. Nullam id hendrerit dolor. In ac auctor leo, sed rutrum sapien. Ut eleifend, sem et posuere ultricies, tortor metus accumsan felis, at ultrices lacus nisi in lectus. Aliquam mollis malesuada leo non commodo.",
        "comentarios": [
            {
                "id": 2,
                "asunto": "RE: como importar un proyecto en intellij idea?",
                "contenido": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sed vehicula massa. In in sem ultricies, iaculis felis a, ornare nunc. Nulla condimentum suscipit lacus eu pulvinar. ",
                "comentarios": [],
                "usuario": {
                    "username": "Andrés",
                    "correo": "andres@gmail.com",
                    "createdAt": "2022-10-01T04:15:15.000+00:00",
                    "admin": false
                },
                "likes": 0,
                "dislikes": 0,
                "createdAt": "2022-10-01T04:15:15.000+00:00",
                "createdBy": 1
            }
        ],
        "usuario": {
            "username": "Nicolás",
            "correo": "nicolas@gmail.com",
            "createdAt": "2022-10-01T04:15:15.000+00:00",
            "admin": true
        },
        "likes": 1,
        "dislikes": 0,
        "createdAt": "2022-10-01T04:15:15.000+00:00",
        "createdBy": 1
    },
    {
        "id": 2,
        "asunto": "como importar un proyecto en intellij idea2.0?",
        "contenido": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sed vehicula massa. In in sem ultricies, iaculis felis a, ornare nunc. Nulla condimentum suscipit lacus eu pulvinar. Praesent id varius nibh. Quisque est augue, rutrum vel erat in, vulputate condimentum libero. Nullam id hendrerit dolor. In ac auctor leo, sed rutrum sapien. Ut eleifend, sem et posuere ultricies, tortor metus accumsan felis, at ultrices lacus nisi in lectus. Aliquam mollis malesuada leo non commodo.",
        "comentarios": [
            {
                "id": 2,
                "asunto": "RE: como importar un proyecto en intellij idea?",
                "contenido": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sed vehicula massa. In in sem ultricies, iaculis felis a, ornare nunc. Nulla condimentum suscipit lacus eu pulvinar. ",
                "comentarios": [],
                "usuario": {
                    "username": "Andrés",
                    "correo": "andres@gmail.com",
                    "createdAt": "2022-10-01T04:15:15.000+00:00",
                    "admin": false
                },
                "likes": 0,
                "dislikes": 0,
                "createdAt": "2022-10-01T04:15:15.000+00:00",
                "createdBy": 1
            }
        ],
        "usuario": {
            "username": "Nicolás",
            "correo": "nicolas@gmail.com",
            "createdAt": "2022-10-01T04:15:15.000+00:00",
            "admin": true
        },
        "likes": 1,
        "dislikes": 0,
        "createdAt": "2022-10-01T04:15:15.000+00:00",
        "createdBy": 1
    }])

</script>
<template>
<nav id='menu'>
    <input type='checkbox' id='responsive-menu' onclick='updatemenu()'><label></label>
    <ul>
      <li><a href='http://127.0.0.1:5173/landing'>Principal</a></li>
      <li><a class='dropdown-arrow' href='http://'>Foros</a>
        <ul class='sub-menus'>
          <li><a href='http://127.0.0.1:5173/all'>Ver todos los foros</a></li>
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
                <tr v-for="item in items">
                    <td>{{item.usuario.correo}} {{item.usuario.username}}</td>
                    <td>{{item.asunto}}</td>
                    <td>{{item.contenido}}</td>
                </tr>
            </tbody>
        </table>
    </div>  
</template>

<script>
export default {
  data: () => ({
    
  }),
  created() {
    console.log('AAA')
    const data=
        [
        {
        "id": 1,
        "asunto": "como importar un proyecto en intellij idea?",
        "contenido": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sed vehicula massa. In in sem ultricies, iaculis felis a, ornare nunc. Nulla condimentum suscipit lacus eu pulvinar. Praesent id varius nibh. Quisque est augue, rutrum vel erat in, vulputate condimentum libero. Nullam id hendrerit dolor. In ac auctor leo, sed rutrum sapien. Ut eleifend, sem et posuere ultricies, tortor metus accumsan felis, at ultrices lacus nisi in lectus. Aliquam mollis malesuada leo non commodo.",
        "comentarios": [
            {
                "id": 2,
                "asunto": "RE: como importar un proyecto en intellij idea?",
                "contenido": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sed vehicula massa. In in sem ultricies, iaculis felis a, ornare nunc. Nulla condimentum suscipit lacus eu pulvinar. ",
                "comentarios": [],
                "usuario": {
                    "username": "Andrés",
                    "correo": "andres@gmail.com",
                    "createdAt": "2022-10-01T04:15:15.000+00:00",
                    "admin": false
                },
                "likes": 0,
                "dislikes": 0,
                "createdAt": "2022-10-01T04:15:15.000+00:00",
                "createdBy": 1
            }
        ],
        "usuario": {
            "username": "Nicolás",
            "correo": "nicolas@gmail.com",
            "createdAt": "2022-10-01T04:15:15.000+00:00",
            "admin": true
        },
        "likes": 1,
        "dislikes": 0,
        "createdAt": "2022-10-01T04:15:15.000+00:00",
        "createdBy": 1
    },
    {
        "id": 2,
        "asunto": "como importar un proyecto en intellij idea2.0?",
        "contenido": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sed vehicula massa. In in sem ultricies, iaculis felis a, ornare nunc. Nulla condimentum suscipit lacus eu pulvinar. Praesent id varius nibh. Quisque est augue, rutrum vel erat in, vulputate condimentum libero. Nullam id hendrerit dolor. In ac auctor leo, sed rutrum sapien. Ut eleifend, sem et posuere ultricies, tortor metus accumsan felis, at ultrices lacus nisi in lectus. Aliquam mollis malesuada leo non commodo.",
        "comentarios": [
            {
                "id": 2,
                "asunto": "RE: como importar un proyecto en intellij idea?",
                "contenido": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sed vehicula massa. In in sem ultricies, iaculis felis a, ornare nunc. Nulla condimentum suscipit lacus eu pulvinar. ",
                "comentarios": [],
                "usuario": {
                    "username": "Andrés",
                    "correo": "andres@gmail.com",
                    "createdAt": "2022-10-01T04:15:15.000+00:00",
                    "admin": false
                },
                "likes": 0,
                "dislikes": 0,
                "createdAt": "2022-10-01T04:15:15.000+00:00",
                "createdBy": 1
            }
        ],
        "usuario": {
            "username": "Nicolás",
            "correo": "nicolas@gmail.com",
            "createdAt": "2022-10-01T04:15:15.000+00:00",
            "admin": true
        },
        "likes": 1,
        "dislikes": 0,
        "createdAt": "2022-10-01T04:15:15.000+00:00",
        "createdBy": 1
    }
    ]
    console.log(data)
    },
  methods: {
   
    }
  };
</script>

<style>
#menu {
	background: #08BD7E;
	color: #FFF;
	height: 46px;
	padding-left: 18px;
	border-radius: 0px;
}
#menu ul, #menu li {
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
#menu ul.sub-menus{
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
#menu ul.sub-menus a:hover{
	background: #F2F2F2;
	color: #444444;
}
@media screen and (max-width: 800px){
	#menu {position:relative}
	#menu ul {background:#111;position:absolute;top:100%;right:0;left:0;z-index:3;height:auto;display:none}
	#menu ul.sub-menus {width:100%;position:static;}
	#menu ul.sub-menus a {padding-left:30px;}
	#menu li {display:block;float:none;width:auto;}
	#menu input, #menu label {position:absolute;top:0;left:0;display:block}
	#menu input {z-index:4}
	#menu input:checked + label {color:white}
	#menu input:checked + label:before {content:"\00d7"}
	#menu input:checked ~ ul {display:block}
}

.lis{
    list-style: square inside;
    }

table.blueTable {
  font-family: "Times New Roman", Times, serif;
  border: 4px solid #FFF3F7;
  width: 100%;
  height: 200%;
  text-align: left;
  border-collapse: collapse;
}
table.blueTable td, table.blueTable th {
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
table.blueTable tfoot .links a{
  display: inline-block;
  background: #1C6EA4;
  color: #FFFFFF;
  padding: 2px 8px;
  border-radius: 5px;
}    
</style>