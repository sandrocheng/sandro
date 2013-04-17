/*    */ package com.mindmatics.mopay.android.impl.ws.dao;
/*    */ 
/*    */ import com.mindmatics.mopay.android.impl.LogUtil;
/*    */ import com.mindmatics.mopay.android.impl.util.JSONHttpUtil;
/*    */ import com.mindmatics.mopay.android.impl.ws.WsPath;
/*    */ import com.mindmatics.mopay.android.impl.ws.exception.DataAccessException;
/*    */ import com.mindmatics.mopay.android.impl.ws.exception.DataParseException;
/*    */ import com.mindmatics.mopay.android.impl.ws.model.QueryStatusReq;
/*    */ import java.util.concurrent.Semaphore;
/*    */ import org.json.JSONException;
/*    */ 
/*    */ public class QueryStatusDAO
/*    */   implements IHttpRequestOnSuccess
/*    */ {
/* 19 */   private static final Semaphore mutex = new Semaphore(1);
/*    */   private IQueryStatusSuccess listener;
/*    */ 
/*    */   public QueryStatusDAO()
/*    */   {
/*    */   }
/*    */ 
/*    */   public QueryStatusDAO(IQueryStatusSuccess pListener)
/*    */   {
/* 27 */     this.listener = pListener;
/*    */   }
/*    */ 
/*    */   public void querySessionStatus(String pGuid) throws DataAccessException {
/* 31 */     if (!mutex.tryAcquire()) {
/* 32 */       LogUtil.logD(this, "another query status request is running in parallel; no further request will be started");
/*    */ 
/* 34 */       return;
/*    */     }
/*    */     try {
/* 37 */       QueryStatusReq r = new QueryStatusReq();
/* 38 */       r.setGuid(pGuid);
/*    */       try {
/* 40 */         String req = JSONHttpUtil.serializeQueryStatusReq(r);
/* 41 */         new JSONHttpUtil(this).postAsync(req, WsPath.QueryStatus.getPath());
/*    */       } catch (JSONException e) {
/* 43 */         throw new DataParseException("Serializing JSON QueryStatusReq failed :", e);
/*    */       }
/*    */     } finally {
/* 46 */       mutex.release();
/*    */     }
/*    */   }
/*    */ 
/*    */   public void onSuccess(String pResponseString) throws JSONException
/*    */   {
/* 52 */     if (this.listener != null)
/* 53 */       this.listener.queryStatusSuccess(JSONHttpUtil.deserializeQueryStatusRes(pResponseString));
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.ws.dao.QueryStatusDAO
 * JD-Core Version:    0.6.2
 */