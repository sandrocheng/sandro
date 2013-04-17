/*    */ package com.mindmatics.mopay.android.impl.util;
/*    */ 
/*    */ import android.os.AsyncTask;
/*    */ import com.mindmatics.mopay.android.impl.LogUtil;
/*    */ import com.mindmatics.mopay.android.impl.cfg.WSUrl;
/*    */ import java.io.IOException;
/*    */ import org.apache.http.HttpResponse;
/*    */ import org.apache.http.client.methods.HttpPost;
/*    */ import org.apache.http.impl.client.DefaultHttpClient;
/*    */ import org.apache.http.params.HttpParams;
/*    */ 
/*    */ public class HTTPSyncRequestTask extends AsyncTask<HttpPost, Void, HttpResponse>
/*    */ {
/*    */   private HttpParams params;
/*    */ 
/*    */   public HTTPSyncRequestTask()
/*    */   {
/*    */   }
/*    */ 
/*    */   public HTTPSyncRequestTask(HttpParams pHttpParams)
/*    */   {
/* 25 */     this.params = pHttpParams;
/*    */   }
/*    */ 
/*    */   protected HttpResponse doInBackground(HttpPost[] pParams)
/*    */   {
/* 31 */     return run(pParams[0]);
/*    */   }
/*    */ 
/*    */   private HttpResponse run(HttpPost pHttpPost) {
/* 35 */     DefaultHttpClient httpClient = new DefaultHttpClient(this.params != null ? this.params : WSUrl.getHttpParamsWSDefault());
/*    */     try {
/* 37 */       return httpClient.execute(pHttpPost);
/*    */     } catch (IOException e) {
/* 39 */       LogUtil.logD(this, "Execution of HTTPRequest failed" + e);
/*    */     }
/* 41 */     return null;
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.util.HTTPSyncRequestTask
 * JD-Core Version:    0.6.2
 */