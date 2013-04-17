/*    */ package com.mindmatics.mopay.android.impl.ws.dao;
/*    */ 
/*    */ import com.mindmatics.mopay.android.impl.LogUtil;
/*    */ import com.mindmatics.mopay.android.impl.util.JSONHttpUtil;
/*    */ import com.mindmatics.mopay.android.impl.ws.WsPath;
/*    */ import com.mindmatics.mopay.android.impl.ws.exception.DataAccessException;
/*    */ import com.mindmatics.mopay.android.impl.ws.exception.DataParseException;
/*    */ import com.mindmatics.mopay.android.impl.ws.model.BackToMerchantReq;
/*    */ import java.util.concurrent.Semaphore;
/*    */ import org.apache.http.params.BasicHttpParams;
/*    */ import org.apache.http.params.HttpConnectionParams;
/*    */ import org.apache.http.params.HttpParams;
/*    */ import org.json.JSONException;
/*    */ 
/*    */ public class BackToMerchantDAO
/*    */   implements IHttpRequestOnSuccess
/*    */ {
/* 22 */   private static final Semaphore mutex = new Semaphore(1);
/*    */   private IBackToMerchantSuccess listener;
/*    */ 
/*    */   public BackToMerchantDAO()
/*    */   {
/*    */   }
/*    */ 
/*    */   public BackToMerchantDAO(IBackToMerchantSuccess pListener)
/*    */   {
/* 30 */     this.listener = pListener;
/*    */   }
/*    */ 
/*    */   public void backToMerchant(String pGuid) throws DataAccessException {
/* 34 */     if (!mutex.tryAcquire()) {
/* 35 */       LogUtil.logD(this, "another back to merchant request is running in parallel; no further request will be started");
/*    */ 
/* 37 */       return;
/*    */     }
/*    */     try {
/* 40 */       BackToMerchantReq backToMerchantReq = new BackToMerchantReq();
/* 41 */       backToMerchantReq.setGuid(pGuid);
/*    */       try {
/* 43 */         String req = JSONHttpUtil.serializeBackToMerchantReq(backToMerchantReq);
/* 44 */         HttpParams httpParameters = new BasicHttpParams();
/* 45 */         HttpConnectionParams.setConnectionTimeout(httpParameters, 2000);
/* 46 */         HttpConnectionParams.setSoTimeout(httpParameters, 2000);
/* 47 */         new JSONHttpUtil(this, httpParameters).postAsync(req, WsPath.BackToMerchant.getPath());
/*    */       } catch (JSONException e) {
/* 49 */         throw new DataParseException("Serializing JSON BackToMerchantReq failed :", e);
/*    */       }
/*    */     } finally {
/* 52 */       mutex.release();
/*    */     }
/*    */   }
/*    */ 
/*    */   public void onSuccess(String pResponseString) throws JSONException
/*    */   {
/* 58 */     if (this.listener != null)
/* 59 */       this.listener.backToMerchantSuccess(JSONHttpUtil.deserializeJsonRes(pResponseString));
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.ws.dao.BackToMerchantDAO
 * JD-Core Version:    0.6.2
 */