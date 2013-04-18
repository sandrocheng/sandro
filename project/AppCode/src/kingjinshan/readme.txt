金山代码分析
入口 Activity : com.keniu.security.main.SplashActivity
主页 Activity : com.keniu.security.main.MainActivity  
	布局文件 ： main_activity.xml	

1 流量监控
	主页显示位置 main_activity_first.xml -> id:content_traffic  对应的对象是：J (mark 流量内容textview)，赋值位置 private void J()(mark 主页流量值--该方法没有找到调用地点)
	<string name="main_module_traffic_bottom_tip_1">本月已用%1$s，剩余%2$s</string> id 2131429407