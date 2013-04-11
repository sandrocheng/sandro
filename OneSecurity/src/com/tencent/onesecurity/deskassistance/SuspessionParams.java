package com.tencent.onesecurity.deskassistance;

import android.graphics.PixelFormat;
import android.view.Gravity;
import android.view.WindowManager;

public class SuspessionParams {
	
	
   public static  WindowManager.LayoutParams wmBaseParams  = new WindowManager.LayoutParams(); 
  
   public static  WindowManager.LayoutParams wmTrafficParams;
   public static  WindowManager.LayoutParams wmLocationParams;
	public static WindowManager.LayoutParams wmWhirlPoolParams;
 
   public static  WindowManager.LayoutParams wmPermissionParams;
	public static WindowManager.LayoutParams wmBatteryParams;
  
static {
	   
	  
       wmBaseParams.gravity = Gravity.LEFT|Gravity.TOP;
		wmBaseParams.type = WindowManager.LayoutParams.TYPE_SYSTEM_ALERT; // 2002表示系统级窗口,2003为最顶层
		wmBaseParams.format = PixelFormat.RGBA_8888; // 透明的图片，2.3的系统必须要
       wmBaseParams.flags |= WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE;//不这样的话，仅仅他能够获得焦点，不管是不是遮住
       wmBaseParams.width = WindowManager.LayoutParams.WRAP_CONTENT;//PhoneInfoUtil.dip2px(mContext,120);
       wmBaseParams.height = WindowManager.LayoutParams.WRAP_CONTENT;//PhoneInfoUtil.dip2px(mContext,25);
  
	   wmTrafficParams  = new WindowManager.LayoutParams();
	   wmTrafficParams.copyFrom(wmBaseParams);   
		wmTrafficParams.alpha = (float) 1.0;
	 
	   
	   wmLocationParams =  new WindowManager.LayoutParams();
	   wmLocationParams.copyFrom(wmBaseParams);
	   
	   
	   wmPermissionParams = new WindowManager.LayoutParams();
	   wmPermissionParams.gravity = Gravity.LEFT|Gravity.TOP;
	   wmPermissionParams.type = 2003;  // 2002表示系统级窗口,2003为最顶层
	   wmPermissionParams.format = 1;   //透明的图片，2.3的系统必须要
	   wmPermissionParams.flags |= WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE;//不这样的话，仅仅他能够获得焦点，不管是不是遮住
	   wmPermissionParams.width = WindowManager.LayoutParams.WRAP_CONTENT;//PhoneInfoUtil.dip2px(mContext,120);
	   wmPermissionParams.height = WindowManager.LayoutParams.WRAP_CONTENT;//PhoneInfoUtil.dip2px(mContext,25);
	   wmPermissionParams.gravity =  Gravity.CENTER_HORIZONTAL|Gravity.CENTER_VERTICAL;	
	 
		wmBatteryParams = new WindowManager.LayoutParams();
		wmBatteryParams.gravity = Gravity.LEFT | Gravity.TOP;
		wmBatteryParams.type = 2003; // 2002表示系统级窗口,2003为最顶层
		wmBatteryParams.format = 1; // 透明的图片，2.3的系统必须要
		// wmBatteryParams.flags |=
		// WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE; //
		// 不这样的话，仅仅他能够获得焦点，不管是不是遮住
		wmBatteryParams.width = WindowManager.LayoutParams.WRAP_CONTENT;// PhoneInfoUtil.dip2px(mContext,120);
		wmBatteryParams.height = WindowManager.LayoutParams.WRAP_CONTENT;// PhoneInfoUtil.dip2px(mContext,25);
		wmBatteryParams.gravity = Gravity.CENTER_HORIZONTAL | Gravity.CENTER_VERTICAL;
	   
   }

}
