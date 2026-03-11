<template>
  <button class="common-btn">{{ btnName }}</button>
</template>

<script>
export default {
  props: {
    btnName: String,
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