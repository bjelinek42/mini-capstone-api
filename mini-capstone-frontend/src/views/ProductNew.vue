<script>
import axios from 'axios'
export default {
  data: function () {
    return {
      message: "Create New Product!",
      newProductParams: {}
    };
  },
  created: function () { },
  methods: {
    createProduct: function () {
      axios.post("/products.json", this.newProductParams).then(response => {
        console.log("creating product", response.data)
        this.$router.push("/products")
      })
    }
  },
};
</script>

<template>
  <div class="photos-new">
    <h1>{{ message }}</h1>
    <form v-on:submit.prevent="createProduct()">
      <p>Name: <input type="text" v-model="newProductParams.input_name"></p>
      <p>Price: <input type="text" v-model="newProductParams.input_price"></p>
      <p>description: <input type="text" v-model="newProductParams.input_description"></p>
      <p>Inventory: <input type="text" v-model="newProductParams.input_inventory"></p>
      <p>Supplier ID: <input type="text" v-model="newProductParams.input_supplier_id"></p>
      <input type="submit" value="Create">
    </form>
  </div>
</template>

<style>
</style>