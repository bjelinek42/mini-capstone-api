<script>
import axios from 'axios'
export default {
  data: function () {
    return {
      message: "Welcome to Update Product",
      product: {},
      editProductParams: {},
      suppliers: {}
    };
  },
  created: function () {
    axios.get(`/products/${this.$route.params.id}.json`).then(response => {
      console.log('showing product', response.data);
      this.product = response.data
      this.editProductParams = this.product
    })
    axios.get(`/suppliers/`).then(response => {
      console.log('getting suppliers', response.data)
      this.suppliers = response.data
    })
  },
  methods: {
    updateProduct: function (product) {
      axios.patch(`/products/${product.id}.json`, this.editProductParams).then(response => {
        console.log('editing params', response.data);
        this.$router.push("/products")
      })
    }
  },
};
</script>

<template>
  <div class="update-product">
    <h1>{{ message }}</h1>
    <form v-on:submit.prevent="updateProduct(product)">
      <p>Product Id: {{ product.id }}</p>
      <p>Name: <input type="text" v-model="editProductParams.name"></p>
      <p>Description: <input type="text" v-model="editProductParams.description"></p>
      <p>Price: <input type="text" v-model="editProductParams.price"></p>
      <p>Supplier:
        <select name="cars" id="cars" v-model="editProductParams.supplier_id">
          <option v-for="supplier in suppliers" v-bind:value="supplier.id" v-bind:key="supplier.id">{{ supplier.name }}
          </option>

        </select>
      </p>
      <input type="submit" value="Update" />
    </form>
  </div>
</template>

<style>
</style>