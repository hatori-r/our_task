<template>
  <v-app>
    <Loading v-show="loading"></Loading>
    <Home v-show="!loading"></Home>
  </v-app>
</template>

<script>
import Loading from '@/components/Loading'
import Home from './views/Home'

export default {
  name: 'App',
  data() {
    return {
      loading: true,
    }
  },
  mounted() {
    setTimeout(() => {
      this.loading = false;
    }, 1000);
  },
  components: {
    Loading,
    Home,
  },
};
</script>

<style>

</style>
