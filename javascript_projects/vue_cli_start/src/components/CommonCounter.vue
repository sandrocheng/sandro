<template>
  <div>
    <button @click="count--">-</button>
    <!--count是data函数中返回对象中的变量-->
    <span>{{ count }}</span>
    <button @click="count++">+</button>
  </div>
</template>

<script>
export default {
  //data在组件中必须是一个函数，不能定义为属性，这样它返回的对象中的变量是独立的
  data() {
    return {
      count: 100,
    };
  },
};
</script>

<style scoped>
.common-btn {
  height: 50px;
  line-height: 50px;
  padding: 0 20px;
  background-color: #4ba4ca;
  border-radius: 5pc;
  color: white;
}
</style>