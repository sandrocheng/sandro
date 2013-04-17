/*    */ package com.mindmatics.mopay.android.impl.ws.dao;
/*    */ 
/*    */ import com.mindmatics.mopay.android.impl.StaticMessages;
/*    */ import com.mindmatics.mopay.android.impl.util.JSONHttpUtil;
/*    */ import com.mindmatics.mopay.android.impl.ws.WsPath;
/*    */ import com.mindmatics.mopay.android.impl.ws.exception.DataAccessException;
/*    */ import com.mindmatics.mopay.android.impl.ws.exception.DataParseException;
/*    */ import com.mindmatics.mopay.android.impl.ws.model.AbortSessionReq;
/*    */ import org.json.JSONException;
/*    */ 
/*    */ public class AbortSessionDAO
/*    */   implements IHttpRequestOnSuccess
/*    */ {
/*    */   private IAbortSessionSuccess listener;
/*    */ 
/*    */   public AbortSessionDAO()
/*    */   {
/*    */   }
/*    */ 
/*    */   public AbortSessionDAO(IAbortSessionSuccess pListener)
/*    */   {
/* 24 */     this.listener = pListener;
/*    */   }
/*    */ 
/*    */   public void abortPayment(String pGuid) throws DataAccessException {
/* 28 */     abortPayment(pGuid, 0L, "");
/*    */   }
/*    */ 
/*    */   public void abortPayment(String pGuid, long pErrorCode) throws DataAccessException {
/* 32 */     String errorMessage = StaticMessages.getStaticErrorMessageForMerchantCallback(pErrorCode);
/* 33 */     abortPayment(pGuid, pErrorCode, errorMessage);
/*    */   }
/*    */ 
/*    */   private void abortPayment(String pGuid, long pErrorCode, String pErrorMessage) throws DataAccessException
/*    */   {
/* 38 */     AbortSessionReq abortReq = new AbortSessionReq();
/* 39 */     abortReq.setGuid(pGuid);
/* 40 */     abortReq.setErrorCode(pErrorCode);
/*    */     try {
/* 42 */       String req = JSONHttpUtil.serializeAbortSessionReq(abortReq);
/* 43 */       new JSONHttpUtil(this).postAsync(req, WsPath.Abort.getPath());
/*    */     } catch (JSONException e) {
/* 45 */       throw new DataParseException("Serializing JSON AbortSessionReq failed :", e);
/*    */     }
/*    */   }
/*    */ 
/*    */   public void onSuccess(String pResponseString) throws JSONException
/*    */   {
/* 51 */     if (this.listener != null)
/* 52 */       this.listener.abortSessionSuccess(JSONHttpUtil.deserializeJsonRes(pResponseString));
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.ws.dao.AbortSessionDAO
 * JD-Core Version:    0.6.2
 */