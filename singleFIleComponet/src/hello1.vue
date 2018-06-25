<!-- hello1.vue -->
<template>
  <h1>{{ msg }}</h1>
</template>
<script>
export default {
  name: 'hello1',
  data () {
    return {
      msg: 'Hello Vue.js 单文件组件~'
    }
  }
}
</script>
<style lang="scss">
h1 {
  color: $green;
}
</style>