/*    */ package com.mindmatics.mopay.android.impl.util;
/*    */ 
/*    */ import android.os.AsyncTask;
/*    */ import com.mindmatics.mopay.android.impl.LogUtil;
/*    */ import com.mindmatics.mopay.android.impl.cfg.WSUrl;
/*    */ import java.io.IOException;
/*    */ import org.apache.http.HttpResponse;
/*    */ import org.apache.http.client.methods.HttpPost;
/*    */ import org.apache.http.impl.client.BasicResponseHandler;
/*    */ import org.apache.http.impl.client.DefaultHttpClient;
/*    */ 
/*    */ public class HTTPRequestTask extends AsyncTask<HttpPost, Void, Void>
/*    */ {
/*    */   private JSONHttpUtil jsonHttpUtil;
/*    */   private HttpResponse response;
/*    */   private String responseString;
/*    */ 
/*    */   public HTTPRequestTask(JSONHttpUtil pJSONHttpUtil)
/*    */   {
/* 24 */     this.jsonHttpUtil = pJSONHttpUtil;
/*    */   }
/*    */ 
/*    */   protected Void doInBackground(HttpPost[] pParams)
/*    */   {
/* 29 */     run(pParams[0]);
/* 30 */     return null;
/*    */   }
/*    */ 
/*    */   private void run(HttpPost pHttpPost) {
/* 34 */     DefaultHttpClient httpClient = new DefaultHttpClient(WSUrl.getHttpParamsWSDefault());
/*    */     try {
/* 36 */       this.response = httpClient.execute(pHttpPost);
/* 37 */       this.responseString = new BasicResponseHandler().handleResponse(this.response);
/*    */     } catch (IOException e) {
/* 39 */       LogUtil.logD(this, "Execution of HTTPRequest failed" + e);
/*    */     }
/*    */   }
/*    */ 
/*    */   protected void onPostExecute(Void result)
/*    */   {
/* 45 */     this.jsonHttpUtil.receiveHttpResponse(this.responseString);
/* 46 */     this.jsonHttpUtil = null;
/* 47 */     this.response = null;
/* 48 */     this.responseString = null;
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.util.HTTPRequestTask
 * JD-Core Version:    0.6.2
 */