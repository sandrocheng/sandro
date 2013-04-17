腾讯电池管家
ac 类 定义了keyguardManager,使用KeyguardLock类进行替换和回复锁屏界面

OnSuspendedViewTouch类：一个线性布局的子类
BatteryChargingBehindWindow类：OnSuspendedViewTouch子类，加载layout_battery_charge_behind_window layout布局文件,一个纯黑全屏背景布局
BatteryChargingPrivateWindow类：LinearLayout子类 加载layout_battery_charge_private_window layout布局文件，显示的是充电屏保划开后下面的黑色中间是电池logo的View
BatteryChargingWindow 类： OnSuspendedViewTouch子类，充电屏保主页面

BatteryEventReceiver类 监听电量的receiver,PowerManagerApplication中注册监听
----1 onReceive方法中 调用ac.c(mark:init_saver_compent)
---------ac.c方法 ：1 ac初始化 mark ac_init
					2 BatteryChargingWindow 初始化（mark BatteryChargingWindow_init）
                    3 如果sdk版本号<=10 BatteryChargingBehindWindow初始化（//mark BatteryChargingBehindWindow_init）
					
ScreenEventReceiver类：监听屏幕开关的receiver，	PowerManagerApplication中注册监听	
---- onReceive方法：执行 ac.b()方法 （mark add_saver_views）
                              ----- BatteryChargingWindow.c(); //mark add_BatteryChargingWindow_view
									使用updateViewLayout添加BatteryChargingWindow，
									sdk版本号 > 10  type = 2010(TYPE_SYSTEM_ERROR) , flag 0x228
										0x228 -> 1000101000
											FLAG_NOT_FOCUSABLE ->8 (0x00000008) ->1000
											FLAG_NOT_TOUCH_MODAL-> 32 (0x00000020)->10000
											FLAG_LAYOUT_IN_SCREEN -> 256 (0x00000100) -> 1000000000
									sdk版本号 <= 10 type = 2006(TYPE_SYSTEM_OVERLAY),  flag 0x208
										0x208 -> 1000001000
											FLAG_NOT_FOCUSABLE ->8 (0x00000008) ->1000
											FLAG_LAYOUT_IN_SCREEN -> 256 (0x00000100) -> 1000000000
							  ----- if(sdk版本号 <= 10) BatteryChargingBehindWindow.b();(mark add_BatteryChargingBehindWindow_view)
									updateViewLayout flags|=0x200 type = 2010
										0x200 -> 1000000000:FLAG_LAYOUT_IN_SCREEN -> 256 (0x00000100)
							  ------ BatteryChargingPrivateWindow.a()(mark add_BatteryChargingPrivateWindow_view)
									updateViewLayout  type = 2010; flags |= 0x200
									0x200 -> 1000000000:FLAG_LAYOUT_IN_SCREEN -> 256 (0x00000100)
										