<script>
import axios from "axios"
export default {
  data: function () {
    return {
      message: "Welcome to the Product",
      product: {}
    };
  },
  created: function () {
    this.showProduct();
  },
  methods: {
    showProduct: function () {
      axios.get(`/products/${this.$route.params.id}.json`).then(response => {
        console.log('showing product', response.data)
        this.product = response.data
      })
    }
  },
};
</script>

<template>
  <div class="show=product">
    <h1>{{ message }}</h1>
    <!-- <div v-for="product in products" v-bind:key="product.id"> -->
    <p>{{ product.name }}</p>
    <p>{{ product.description }}</p>
    <p>{{ product.price }}</p>
    <p>{{ product.supplier_id }}</p>
    <img
      src="https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/bestsweatshirtswomen-1619798167.jpg?crop=1.00xw:1.00xh;0,0&resize=1200:*">
    <p>
      <router-link v-bind:to="`/products/${product.id}/edit`">Edit Information</router-link>
    </p>
    <!-- </div> -->
  </div>
</template>

<style>
</style>