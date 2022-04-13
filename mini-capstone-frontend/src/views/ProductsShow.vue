<script>
import axios from "axios"
export default {
  data: function () {
    return {
      message: "Welcome to the Product",
      currentProduct: {}
    };
  },
  created: function () {
    this.showProduct();
  },
  methods: {
    showProduct: function () {
      axios.get(`/products/${this.$route.params.id}.json`).then(response => {
        console.log('showing product', response.data)
        this.currentProduct = response.data
      })
    }
  },
};
</script>

<template>
  <div class="show=product">
    <h1>{{ message }}</h1>
    <p>{{ currentProduct.name }}</p>
    <p>{{ currentProduct.description }}</p>
    <p>{{ currentProduct.price }}</p>
    <p>{{ currentProduct.supplier_id }}</p>
    <img
      src="https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/bestsweatshirtswomen-1619798167.jpg?crop=1.00xw:1.00xh;0,0&resize=1200:*">
  </div>
</template>

<style>
</style>