package com.tencent.onesecurity.manager.viewnotify;

import android.app.Activity;
import android.content.Intent;

import com.tencent.onesecurity.ui.activity.MainActivity;

/**
 * 
* @ClassName: MainViewNotify
* @Description:主页面3子view跳转通知
* @author: Sandro
* @date: 2012-12-13 上午11:37:29
*
 */
public class MainViewNotify {
	
	private static MainviewListener mListener;
	
	public static void setListener(MainviewListener listener){
		mListener = listener;
	}
	
	/**
	 * 
	 * @param pageIndex
	 * @see	 BOOST_INDEX = 0; 
	 * @see  ANTIVIRUS_INDEX = 1; 
	 * @see  VAULT_INDEX = 2;
	 */
	public static void notifyChange(int pageIndex,Activity activity, int pageAction){
        Intent i = new Intent();
        i.setClass(activity,MainActivity.class);
        i.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
        i.addFlags(Intent.FLAG_ACTIVITY_SINGLE_TOP);
        activity.startActivity(i);
		if(mListener!=null){
			mListener.pageChangeNotify(pageIndex , pageAction);
		}
	}

	public interface MainviewListener{
		
		/**
		 * 
		 * @param pageIndex
		 * @see	 BOOST_INDEX = 0; 
		 * @see  ANTIVIRUS_INDEX = 1; 
		 * @see  VAULT_INDEX = 2;
		 */
		public void pageChangeNotify(int pageIndex , int pageAction);
	}
}
