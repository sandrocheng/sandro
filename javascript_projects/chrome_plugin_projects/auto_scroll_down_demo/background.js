// 存储滚动状态
// let isScrolling = false;
console.log("background js start")

// // 监听扩展图标点击事件
// chrome.action.onClicked.addListener((tab) => {
//   console.log("tab click")
//   // 切换滚动状态
//   isScrolling = !isScrolling;
  
//   // 向当前标签页发送消息
//   chrome.tabs.sendMessage(tab.id, {
//     action: isScrolling ? 'startScroll' : 'stopScroll'
//   });
  
//   // 更新扩展图标标题
//   chrome.action.setTitle({
//     tabId: tab.id,
//     title: isScrolling ? '停止自动滚动' : '开始自动滚动'
//   });
// })

// 监听来自content script的消息
chrome.runtime.onMessage.addListener((message, sender, sendResponse) => {
  if (message.action === 'scrollStatus') {
    // 返回当前滚动状态
    // sendResponse({ isScrolling });
  }
})

const regex = /.+UserTweets/
chrome.webRequest.onCompleted.addListener(
  function(details) {
    console.log('监听到数据返回:', details.url);
    if (details.statusCode == 200) {
      let match = details.url.match(regex);
      if (match) {
        console.log('页面数据返回:', details.url);
        chrome.tabs.sendMessage(details.tabId, {
            action: 'startScroll' 
        });
      }
    }
  },
  { urls: ["<all_urls>"] }
)

