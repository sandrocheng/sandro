// 滚动计时器
let scrollTimer = null;
console.log("content js start")

var infoMap = new Map();

var x_user = null


function getPageUserID(){
  //个人信息div
  user_div_list = document.querySelectorAll("div.css-175oi2r.r-3pj75a.r-ttdzmv.r-1ifxtd0");
  if(user_div_list.length == 0){
    console.warn("个人信息div抓取失败")
    return null
  }
  for(let node of user_div_list){
    //名字信息div
    user_name_div_list = node.querySelectorAll("div.css-175oi2r.r-18u37iz.r-1w6e6rj.r-6gpygo.r-14gqq1x");
    if(user_name_div_list.length == 0){
      continue
    }
    //userid div
    div_user_id_list = user_name_div_list[0].querySelectorAll("div.css-175oi2r.r-1awozwy.r-18u37iz.r-1wbh5a2")
    if(div_user_id_list.length == 0){
      continue
    }
    //userid span
    span_user_id_list = div_user_id_list[0].querySelectorAll("span.css-1jxf684.r-bcqeeo.r-1ttztb7.r-qvutc0.r-poiln3")
    return span_user_id_list[0].textContent
  }
  return null
}

// 自动滚动功能
function startScroll() {
  // 如果已经在滚动，先停止
  if (scrollTimer) {
    return
  }

  if(x_user == null){
    x_user = getPageUserID()
    if(x_user!=null){
      console.log("开始抓取%s的主页数据",x_user)
    }else{
      clearInterval(scrollTimer);
      scrollTimer = null;
      console.warn("抓取主页用户信息失败")
      return;
    }
  }
  

  // 滚动间隔（毫秒）
  const scrollInterval = getRandomInt(200,500);

  var scorll_count = 0;
  // 开始滚动
  scrollTimer = setInterval(() => {
    scorll_count++
    if(scorll_count % 10==0){
      getPageInfo()
    }
    // 滚动速度（像素/秒）
    let scrollSpeed = getRandomInt(400,800);
      // 每次滚动的距离
    let scrollDistance = scrollSpeed * (scrollInterval / 1000);
    // 计算新的滚动位置
    let newScrollTop = window.scrollY + scrollDistance;

    // 检查是否到达页面底部
    let maxScroll = document.documentElement.scrollHeight - window.innerHeight;

    // if (newScrollTop >= maxScroll || scorll_count >15) {
    if (newScrollTop >= maxScroll ) {
      // 到达底部，停止滚动
      clearInterval(scrollTimer);
      scrollTimer = null;
      savedata();
      console.log('to bottom stop')
    } else {
      // 执行滚动
      window.scrollTo({ top: newScrollTop, behavior: 'smooth' });
    }
  }, scrollInterval);
}

function savedata(){
  console.log("共抓取" + infoMap.size + "个帖子")
  
  let data_array = new Array()
  data_array.push(["帖子主页","发帖时间","回复人次","转发次数","点赞次数","展示次数","当前帖子内容","转发帖子的用户id","转发帖子的用户"])
  infoMap.forEach((postData, key) => {
    data_array.push([postData.href,
      postData.date_time,
      postData.reply_count,
      postData.repost_count,
      postData.like_count,
      postData.view_count,
      postData.post_text,
      postData.repost_user_id,
      postData.repost_user_name
    ])
  });


  saveArrayToCSVFile(data_array,"main_page_"+x_user+"_"+new Date().toLocaleDateString() + "_"+new Date().toLocaleTimeString())
}
// 保存二维数组到本地CSV文件
function saveArrayToCSVFile(dataArray, filename) {
  // 设置默认文件名
  filename = filename || 'data';
  
  // 确保文件名包含正确的扩展名
  if (!filename.endsWith('.csv')) {
    filename += '.csv';
  }
  
  // 验证输入数据
  if (!Array.isArray(dataArray)) {
    throw new Error('输入数据必须是数组');
  }
  
  // 将二维数组转换为CSV格式字符串
  const csvContent = dataArray.map(row => {
    // 确保行是数组
    if (!Array.isArray(row)) {
      row = [row]; // 如果不是数组，转换为单元素数组
    }
    
    // 处理每个字段
    return row.map(field => {
      // 处理null和undefined
      if (field === null || field === undefined) {
        return '';
      }
      
      // 转换为字符串
      let fieldStr = String(field);
      
      // 如果字段包含逗号、引号或换行符，需要特殊处理
      if (fieldStr.includes(',') || fieldStr.includes('"') || fieldStr.includes('\n')) {
        // 转义引号并用引号包围字段
        return '"' + fieldStr.replace(/"/g, '""') + '"';
      }
      
      return fieldStr;
    }).join(',');
  }).join('\n');
  
  // 添加BOM以支持UTF-8编码（Excel兼容）
  const bom = '\uFEFF';
  const contentWithBom = bom + csvContent;
  
  // 创建Blob对象，指定MIME类型为CSV
  const blob = new Blob([contentWithBom], { type: 'text/csv;charset=utf-8;' });
  
  // 创建下载链接
  const url = URL.createObjectURL(blob);
  const a = document.createElement('a');
  a.href = url;
  a.download = filename;
  
  // 添加到DOM并触发点击
  document.body.appendChild(a);
  a.click();
  
  // 清理DOM和URL对象
  setTimeout(() => {
    document.body.removeChild(a);
    URL.revokeObjectURL(url);
  }, 100);
}

// 停止滚动
function stopScroll() {
  console.log('stopScroll')
  if (scrollTimer) {
    clearInterval(scrollTimer);
    scrollTimer = null;
  }
}

// 生成指定范围内的随机整数
function getRandomInt(min, max) {
  return Math.floor(Math.random() * (max - min + 1)) + min;
}

// 监听来自background script的消息
chrome.runtime.onMessage.addListener((message) => {
  console.log('chrome.runtime.onMessage call back :' + message.action)
  if (message.action === 'startScroll') {
    startScroll();
  } else if (message.action === 'stopScroll') {
    // stopScroll();
  }
});

// 页面加载完成后开始自动滚动
// window.addEventListener('load', startScroll);



/**
 * 获取页面信息
 */
function getPageInfo(){
  
  nodeList = document.querySelectorAll("div[data-testid=cellInnerDiv]");
  console.log("getPageInfo size: " + nodeList.length)

  let postData = {
    href:"",//帖子主页
    date_time:"",//发帖时间
    reply_count:"",//回复人次
    repost_count:"",//转发次数
    like_count:"",//点赞次数
    view_count:"",//展示次数
    repost_user_id:null,//转发帖子的用户id
    repost_user_name:null,//转发帖子的用户
    post_text:null//当前帖子内容
  }
  for(const node of nodeList){
    postData = {
      href:"",//帖子主页
      date_time:"",//发帖时间
      reply_count:"",//回复人次
      repost_count:"",//转发次数
      like_count:"",//点赞次数
      view_count:"",//展示次数
      repost_user_id:null,//转发帖子的用户id
      repost_user_name:null,//转发帖子的用户
      post_text:null//当前帖子内容
    }
    let a_div = node.querySelectorAll("div.css-175oi2r.r-18u37iz.r-1q142lx")
    
    if(a_div.length > 0){
      let a_list = a_div[0].querySelectorAll("a")
      if(a_list.length > 0){
        let time_tag_list = a_list[0].querySelectorAll("time")
        if(time_tag_list.length > 0){
          postData.href = a_list[0].href
          postData.date_time = time_tag_list[0].getAttribute("datetime")

          data_node_list = node.querySelectorAll("div.css-175oi2r.r-18u37iz.r-1h0z5md.r-13awgt0")
          if(data_node_list.length < 4){
            console.log("数据区数量不正确：" + data_node_list.length)
            continue
          }
          postData.reply_count = getDateCount(data_node_list[0])
          if(postData.reply_count == null){
            continue
          }

          postData.repost_count = getDateCount(data_node_list[1])
          if(postData.repost_count == null){
            continue
          }

          postData.like_count = getDateCount(data_node_list[2])
          if(postData.like_count == null){
            continue
          }
          postData.view_count = getDateCount(data_node_list[3])
          if(postData.view_count == null){
            continue
          }

          postData.post_text = getPostText(node)
          if(postData.view_count == null){
            continue
          }

          repost_user = getRepoUserAddress(node)
          if(repost_user != null){
            postData.repost_user_id = repost_user.user_id;
            postData.repost_user_name = repost_user.user_name
          }
          
          infoMap.set(postData.href,postData)
        }else{
          continue
        }
        
      }else{
        continue
      }
    }else{
      continue
    }
  }
}

/**
 * 获取被转发用户的用户id和用户名
 * {
 *  user_id,user_name
 * }
 * @param {*} node 
 * @returns 
 */
function getRepoUserAddress(node){
  repo_div = node.querySelectorAll("div.css-175oi2r.r-adacv.r-1udh08x.r-1ets6dv.r-1867qdf.r-rs99b7.r-o7ynqc.r-6416eg.r-1ny4l3l.r-1loqt21")
  if(repo_div.length == 0){
    return null
  }
  user_div = repo_div[0].querySelectorAll("div.css-175oi2r.r-1wbh5a2.r-dnmrzs.r-1ny4l3l.r-1awozwy.r-18u37iz")
  if(user_div.length == 0){
    return null
  }
  name_div = user_div[0].querySelectorAll("div.css-175oi2r.r-1awozwy.r-18u37iz.r-1wbh5a2.r-dnmrzs")
  id_div = user_div[0].querySelectorAll("div.css-175oi2r.r-18u37iz.r-1wbh5a2.r-1ez5h0i")

  if(name_div.length == 0 || id_div.length == 0){
    return null
  }

  name_span = name_div[0].querySelectorAll("span.css-1jxf684.r-bcqeeo.r-1ttztb7.r-qvutc0.r-poiln3")
  if(name_span.length == 0){
    return null
  }
  user_id_span = id_div[0].querySelectorAll("span.css-1jxf684.r-bcqeeo.r-1ttztb7.r-qvutc0.r-poiln3")
  if(user_id_span.length!=0){
    return {
      user_name:name_span[0].textContent,
      user_id:user_id_span[0].textContent
    }
  }
  return null
}


/**
 * 获取数据区对应div中包含的数量
 * @param {} node 
 * @returns 
 */
function getDateCount(data_div){        
  data_count_div = data_div.querySelectorAll("div.css-175oi2r.r-xoduu5.r-1udh08x")
  if(data_count_div.length==0){
    return null;
  }
  span_tag = data_count_div[0].querySelectorAll("span.css-1jxf684.r-bcqeeo.r-1ttztb7.r-qvutc0.r-poiln3")
  if(span_tag.length == 0){
    return null
  }
  return span_tag[0].textContent;
}

/**
 * 获取帖子内容
 * @param {*} node 
 * @returns 
 */
function getPostText(node){
  post_div_list = node.querySelectorAll("div.css-146c3p1.r-bcqeeo.r-1ttztb7.r-qvutc0.r-37j5jr.r-a023e6.r-rjixqe.r-16dba41.r-bnwqim")
  if(post_div_list.length == 0){
    return null
  }
  return post_div_list[0].textContent;
}

