/**
* FileName: NetworkUtil.java
* @Description: TODO(用一句话描述该文件做什么)
* All rights Reserved, Designed By 21winmess
* Copyright: Copyright(C) 2010-2011 
* Company 21winmess DaLian LTD.
* @author: Allan Zhang
* @version V1.3
* Createdate: 2012-10-19 下午03:50:35
*
* Modification History:
* Date Author Version Discription
* -----------------------------------------------------------------------------------
* 2012-10-19 Qute_Android2.0
* Why & What is modified: <修改原因描述>
*/
package com.tencent.onesecurity.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;

import com.tencent.onesecurity.MainApplication;

/**
 * @ClassName: NetworkUtil
 * @Description:TODO(这里用一句话描述这个类的作用)
 * @author: Allan
 * @date: 2012-10-19 下午03:50:35
 *
 */
public class NetworkUtil {
	public static final byte CONN_NONE = -1;
	 public static final byte CONN_WIFI = 0;
	 public static final byte CONN_NET = 1;
	 public static final byte CONN_WAP = 2;
	    
	public NetworkUtil()
   {
   }
	
	public static byte getNetworkType()
   {
       Context context = MainApplication.getContext();
       ConnectivityManager connectivity = (ConnectivityManager)context.getSystemService("connectivity");
       NetworkInfo info = connectivity.getActiveNetworkInfo();
       if(info == null || info.getState() != android.net.NetworkInfo.State.CONNECTING && info.getState() != android.net.NetworkInfo.State.CONNECTED)
           return -1;


       if(info.getType() == 1)
           return 0;
       if(info.getType() == 0)
           return ((byte)(Proxy.getDefaultHost() == null && Proxy.getHost(context) == null ? 1 : 2));
       else
           return -1;
   }
   public static String getProxyHost()
   {
	   Context context = MainApplication.getContext();
       String host = Proxy.getHost(context);
       if(host == null || host.length() == 0)
           return Proxy.getDefaultHost();
       else
           return host;
   }
   public static int getProxyPort()
   {
	   Context context = MainApplication.getContext();
       int port = Proxy.getPort(context);
       if(port <= 0)
           return Proxy.getDefaultPort();
       else
           return port;
   }
}
