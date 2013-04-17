/*    */ package com.mindmatics.mopay.android.impl.ws.dao;
/*    */ 
/*    */ import com.mindmatics.mopay.android.impl.util.JSONHttpUtil;
/*    */ import com.mindmatics.mopay.android.impl.ws.WsPath;
/*    */ import com.mindmatics.mopay.android.impl.ws.exception.DataAccessException;
/*    */ import com.mindmatics.mopay.android.impl.ws.exception.DataParseException;
/*    */ import com.mindmatics.mopay.android.impl.ws.model.SubmitTanReq;
/*    */ import org.json.JSONException;
/*    */ 
/*    */ public class SubmitTanDAO
/*    */   implements IHttpRequestOnSuccess
/*    */ {
/*    */   private ISubmitBillingTanSuccess listener;
/*    */ 
/*    */   public SubmitTanDAO()
/*    */   {
/*    */   }
/*    */ 
/*    */   public SubmitTanDAO(ISubmitBillingTanSuccess pListener)
/*    */   {
/* 23 */     this.listener = pListener;
/*    */   }
/*    */ 
/*    */   public void submitTan(String pGuid, String pTanType, String pTan) throws DataAccessException
/*    */   {
/* 28 */     SubmitTanReq submitTanReq = new SubmitTanReq();
/* 29 */     submitTanReq.setGuid(pGuid);
/* 30 */     submitTanReq.setTan(pTan);
/* 31 */     submitTanReq.setType(pTanType);
/*    */     try {
/* 33 */       String req = JSONHttpUtil.serializeSubmitTanReq(submitTanReq);
/* 34 */       new JSONHttpUtil(this).postAsync(req, WsPath.SubmitTan.getPath());
/*    */     } catch (JSONException e) {
/* 36 */       throw new DataParseException("Serializing JSON SubmitTanReq failed :", e);
/*    */     }
/*    */   }
/*    */ 
/*    */   public void onSuccess(String pResponseString) throws JSONException
/*    */   {
/* 42 */     if (this.listener != null)
/* 43 */       this.listener.submitTanSuccess(JSONHttpUtil.deserializeSubmitTanRes(pResponseString));
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.ws.dao.SubmitTanDAO
 * JD-Core Version:    0.6.2
 */