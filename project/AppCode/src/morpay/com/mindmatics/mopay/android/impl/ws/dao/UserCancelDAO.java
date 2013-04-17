/*    */ package com.mindmatics.mopay.android.impl.ws.dao;
/*    */ 
/*    */ import com.mindmatics.mopay.android.impl.util.JSONHttpUtil;
/*    */ import com.mindmatics.mopay.android.impl.ws.WsPath;
/*    */ import com.mindmatics.mopay.android.impl.ws.exception.DataAccessException;
/*    */ import com.mindmatics.mopay.android.impl.ws.exception.DataParseException;
/*    */ import com.mindmatics.mopay.android.impl.ws.model.UserCancelReq;
/*    */ import org.json.JSONException;
/*    */ 
/*    */ public class UserCancelDAO
/*    */   implements IHttpRequestOnSuccess
/*    */ {
/*    */   private IUserCancelSuccess listener;
/*    */ 
/*    */   public UserCancelDAO()
/*    */   {
/*    */   }
/*    */ 
/*    */   public UserCancelDAO(IUserCancelSuccess pListener)
/*    */   {
/* 24 */     this.listener = pListener;
/*    */   }
/*    */ 
/*    */   public void userCancel(String pGuid) throws DataAccessException {
/* 28 */     UserCancelReq req = new UserCancelReq();
/* 29 */     req.setGuid(pGuid);
/* 30 */     userCancel(req);
/*    */   }
/*    */ 
/*    */   private void userCancel(UserCancelReq pReq) throws DataAccessException {
/*    */     try {
/* 35 */       String req = JSONHttpUtil.serializeUserCancelReq(pReq);
/* 36 */       new JSONHttpUtil(this).postAsync(req, WsPath.UserCancel.getPath());
/*    */     } catch (JSONException e) {
/* 38 */       throw new DataParseException("Serializing JSON UserCancelReq failed :", e);
/*    */     }
/*    */   }
/*    */ 
/*    */   public void onSuccess(String pResponseString) throws JSONException
/*    */   {
/* 44 */     if (this.listener != null)
/* 45 */       this.listener.userCancelSuccess(JSONHttpUtil.deserializeUserCancelRes(pResponseString));
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.ws.dao.UserCancelDAO
 * JD-Core Version:    0.6.2
 */