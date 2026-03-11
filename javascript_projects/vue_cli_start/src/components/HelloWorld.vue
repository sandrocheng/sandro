<template>
  <div class="hello">
    <h1>{{ msg }}</h1>
    <CommonBtn /><br /><br />
    <CommonCounter /><br /><br />
    <CommonCounter /><br /><br />
    <CommonCounter /><br /><br />
    <!--通过:属性名= "内部对象名"的方式达到双向关联-->
    <CustomBtn :btnName="btnNameFist" />
    <CustomBtn btnName="第二个按钮" />
    <div class="parent">
      父组件 , 当前子组件的内容是：{{ inputAreaValue }}<br /><InputArea
        @change="InputAreaChange"
      />
    </div>
  </div>
</template>

<script>
import CommonCounter from "./CommonCounter.vue";
import CustomBtn from "./CustomBtn.vue";
import InputArea from "./InputArea.vue";
export default {
  data() {
    return {
      btnNameFist: "第一个按钮",
      inputAreaValue: "",
    };
  },
  name: "HelloWorld",
  components: {
    CommonCounter,
    CustomBtn,
    InputArea,
  },
  props: {
    msg: String,
  },
  methods: {
    InputAreaChange(newValue) {
      this.inputAreaValue = newValue;
    },
  },
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.parent {
  width: 300px;
  height: 100px;
  background-color: #da4141;
}
h3 {
  margin: 40px 0 0;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>
