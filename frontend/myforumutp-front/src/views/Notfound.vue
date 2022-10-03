<script setup>
    import image from "../assets/logo2.png" 
</script>
<template>
    <img :src="image" />
    <Navigation></Navigation>
    <h1>Oops, it looks like the page you're looking for doesn't exist.</h1>
</template>

<script>
    import Navigation from "../components/Landingpage.vue";
</script>