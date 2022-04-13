<script>
import axios from 'axios'
export default {
  data: function () {
    return {
      message: "Welcome to Vue.js!",
      products: []
    };
  },
  created: function () {
    this.indexProducts();
  },
  methods: {
    indexProducts: function () {
      axios.get("/products.json").then(response => {
        console.log('index products', response.data)
        this.products = response.data
      })
    }
  },
};
</script>

<template>
  <div class="home">
    <div v-for="product in products" v-bind:key="product.id">
      <p>{{ product.name }} - {{ product.description }}</p>
      <router-link v-bind:to="`/products/${product.id}`"></router-link>
    </div>
    <h1>{{ message }}</h1>
  </div>
</template>

<style>
</style>