/*    */ package com.mindmatics.mopay.android.impl.util;
/*    */ 
/*    */ import android.content.Context;
/*    */ import android.net.ConnectivityManager;
/*    */ import android.net.NetworkInfo;
/*    */ import android.os.AsyncTask;
/*    */ import com.mindmatics.mopay.android.impl.LogUtil;
/*    */ import com.mindmatics.mopay.android.impl.cfg.WSUrl;
/*    */ import org.apache.http.HttpResponse;
/*    */ import org.apache.http.client.methods.HttpPost;
/*    */ import org.apache.http.params.BasicHttpParams;
/*    */ import org.apache.http.params.HttpConnectionParams;
/*    */ import org.apache.http.params.HttpParams;
/*    */ 
/*    */ public class AndroidSDKUtil
/*    */ {
/*    */   public static boolean networkConnectionActive(Context pContext)
/*    */   {
/* 24 */     boolean rtn = false;
/* 25 */     if (pContext == null) {
/* 26 */       LogUtil.logD(AndroidSDKUtil.class, "networkConnectionActive check with null context.");
/* 27 */       rtn = true;
/*    */     }
/*    */     try
/*    */     {
/* 31 */       ConnectivityManager conMgr = (ConnectivityManager)pContext.getSystemService("connectivity");
/* 32 */       if ((conMgr.getActiveNetworkInfo() != null) && (conMgr.getActiveNetworkInfo().isAvailable()) && (conMgr.getActiveNetworkInfo().isConnected()))
/*    */       {
/* 34 */         LogUtil.logD(AndroidSDKUtil.class, "Internet Connection Present");
/* 35 */         rtn = true;
/*    */       } else {
/* 37 */         HttpPost httpPost = new HttpPost(WSUrl.getWebServiceBaseURL());
/* 38 */         HttpParams httpParameters = new BasicHttpParams();
/*    */ 
/* 40 */         HttpConnectionParams.setConnectionTimeout(httpParameters, 2000);
/*    */ 
/* 43 */         HttpConnectionParams.setSoTimeout(httpParameters, 2000);
/* 44 */         HttpResponse response = (HttpResponse)new HTTPSyncRequestTask(httpParameters).execute(new HttpPost[] { httpPost }).get();
/* 45 */         if (response != null) {
/* 46 */           rtn = true;
/*    */         } else {
/* 48 */           LogUtil.logD(AndroidSDKUtil.class, "Internet Connection Not Present");
/* 49 */           rtn = false;
/*    */         }
/*    */       }
/*    */     } catch (Exception e) {
/* 53 */       LogUtil.logD(AndroidSDKUtil.class, e);
/*    */     }
/* 55 */     return rtn;
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.util.AndroidSDKUtil
 * JD-Core Version:    0.6.2
 */