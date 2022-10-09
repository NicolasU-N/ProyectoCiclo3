<template>
    <nav id='menu'>
        <ul>
            <li><a href="#" v-on:click="loadLanding">Principal</a></li>
            <li><a class='dropdown-arrow'>Foros</a>
                <ul class='sub-menus'>
                    <li><a href="#" v-on:click="loadForos">Ver todos los foros</a></li>
                    <li><a href="#" v-on:click="loadCrearForo">Crear un foro</a></li>
                </ul>
            </li>
            <li><a href="#" v-on:click="loadLanding">Contactenos</a></li>
            <li><a href="#" v-on:click="logOut">Cerrar Sesión</a></li>
        </ul>
    </nav>
    <router-view />
</template>

<script>
import Cookies from "js-cookie";

export default {
    Navigation: "Navigation",
    data: () => ({
        is_auth: false,
    }),
    created() {
        this.verifyAuth();
    },
    methods: {
        verifyAuth() {
            this.is_auth = (Cookies.get("userLogged") + Cookies.get("userLoggedToken")) || false;
            console.log(this.is_auth);

            if (this.is_auth == false) this.$router.push("/login");
            // else this.$router.push("/landing");
        },
        loadLanding: function () {
            this.$router.push("/landing");
        },
        loadForos: function () {
            this.$router.push("/allForums");
        },
        loadCrearForo: function () {
            this.$router.push("/createForum");
        },
        logOut() {
            Cookies.remove("userLogged");
            Cookies.remove("userLoggedToken");
            this.$swal("OK", "Sesión cerrada", "success");
            this.verifyAuth();
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
</style>