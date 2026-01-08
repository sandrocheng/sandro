console.log('logDemo:hello world');

console.log('logDemo: hello ' + 1);

console.log(33);

console.log("今天是%s", "周一");

//%d会截断小数部分
console.log("3+5=%d,5*5=%d,10/3=%d,10/3=%f" , (3+5),(5*5),10/3,10/3);

console.log("%c以css样式输出字符串", "color: red; font-size: 18px");


person={
    "age":20,
    "name":"lucy",
    "parents":{
        "father":{
            "name":"tom",
            "age":55
        },
        "mother":{
            "name":"amada",
            "age":55
        }
    }
};
//输出对象
console.log(person);
//通过占位符输出对象
console.log("person : %o",person);

console.info("info信息");
console.debug("debug信息");
console.warn("warn信息");
console.error("error信息");

console.log("以table方式输出数组");
data=[11,22,33,44,55];
console.table(data);

console.log("以table方式输出对象数组并按name,age的顺序展示");
users=[{
    name:"user1",
    age:20
},{
    name:"user2",
    age:19
},{
    name:"user3",
    age:18
}];
console.table(users, ["name", "age"]);

console.time("计时");
for(let i=0;i<1000000;i++){

}
console.timeEnd("计时");

for (let i = 0; i < 3; i++) {
  console.count('loopCounter'); // 输出: loopCounter: 1, 2, 3
}

console.group("用户分组数据");
for(let i = 0;i<users.length;i++){
    console.log(users[i]);
}
console.groupEnd();