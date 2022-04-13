import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import ProductsIndex from '../views/ProductsIndex.vue'
import Signup from "../views/SignUp.vue";
import LogIn from "../views/LogIn.vue";
import LogOut from "../views/LogOut.vue";
import ProductNew from "../views/ProductNew.vue";
import ProductsShow from "../views/ProductsShow.vue";

const routes = [
  {
    path: '/',
    name: 'home',
    component: HomeView
  },
  {
    path: '/products',
    name: 'products index',
    component: ProductsIndex
  },
  {
    path: '/products/new',
    name: 'products create',
    component: ProductNew
  },
  {
    path: '/products/:id',
    name: 'products show',
    component: ProductsShow
  },
  {
    path: "/signup",
    name: "signup",
    component: Signup
  },
  {
    path: "/login",
    name: "logIn",
    component: LogIn
  },
  {
    path: "/logout",
    name: "logOut",
    component: LogOut
  },
  {
    path: '/about',
    name: 'about',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/AboutView.vue')
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
