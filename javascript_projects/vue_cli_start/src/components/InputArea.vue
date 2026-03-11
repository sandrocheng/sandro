<template>
  <div>
    <input v-model="inputData" type="text" />
    <button @click="handleClick">传值给父组件</button>
  </div>
</template>

<script>
export default {
  data() {
    return {
      inputData: "",
    };
  },
  methods: {
    handleClick() {
      //通过change 回传给父组件，父组件 通过@change="InputAreaChange" ，指定调用方法，数据通过该参数给到方法内部
      this.$emit("change", this.inputData);
    },
  },
};
</script>

<style scoped>
div {
  width: 260px;
  height: 50px;
  background-color: #09967f;
  margin-top: 10px;
}
</style>