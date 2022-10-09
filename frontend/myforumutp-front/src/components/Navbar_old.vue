<template>
  <MDBNavbar light bg="light" container classContainer="justify-content-start">
    <MDBBtn outline="success" class="me-2"> Main button </MDBBtn>
    <MDBBtn size="sm" outline="secondary"> Smaller button </MDBBtn>
  </MDBNavbar>
</template>

<script>
import { MDBBtn, MDBNavbar } from 'mdb-vue-ui-kit';
export default {
  components: {
    MDBBtn,
    MDBNavbar,
  },
};
</script>