//该文件的核心作用:导入App.vue，基于App.vue创建结构渲染index.html

import Vue from 'vue' //导入了核心包
import App from './App.vue' //导入了App.vue根组件
import CommonBtn from './components/CommonBtn.vue' //导入需要全局注册的组件,.vue扩展名可以不写，推荐写上，这样方便快捷指向文件

Vue.config.productionTip = false //提示当前处于什么环境(生产环境/开发环境)，改为ture，会有log提示当前是开发环境


//在Vue中注册这个组件,注册以后，即可在当前环境中通过标签使用了
//注意要先注册再使用，如果放到 new Vue实例下面，会报错
Vue.component('CommonBtn', CommonBtn)

//vue实例化，提供rander方法，基于App.vue创建结构渲染index.html
new Vue({
  render: h => h(App),
}).$mount('#app')
//这里是通过.$mount关联 “app”这个div,和通过el属性指定app div的效果是一样的
