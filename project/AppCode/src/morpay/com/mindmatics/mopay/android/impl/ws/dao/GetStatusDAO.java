/*    */ package com.mindmatics.mopay.android.impl.ws.dao;
/*    */ 
/*    */ import com.mindmatics.mopay.android.impl.util.JSONHttpUtil;
/*    */ import com.mindmatics.mopay.android.impl.ws.WsPath;
/*    */ import com.mindmatics.mopay.android.impl.ws.exception.DataAccessException;
/*    */ import com.mindmatics.mopay.android.impl.ws.exception.DataParseException;
/*    */ import com.mindmatics.mopay.android.impl.ws.model.QueryStatusReq;
/*    */ import org.json.JSONException;
/*    */ 
/*    */ public class GetStatusDAO
/*    */   implements IHttpRequestOnSuccess
/*    */ {
/*    */   private IGetStatusSuccess listener;
/*    */ 
/*    */   public GetStatusDAO()
/*    */   {
/*    */   }
/*    */ 
/*    */   public GetStatusDAO(IGetStatusSuccess pListener)
/*    */   {
/* 23 */     this.listener = pListener;
/*    */   }
/*    */ 
/*    */   public void getStatus(String pGuid) throws DataAccessException {
/* 27 */     QueryStatusReq r = new QueryStatusReq();
/* 28 */     r.setGuid(pGuid);
/*    */     try {
/* 30 */       String req = JSONHttpUtil.serializeQueryStatusReq(r);
/* 31 */       new JSONHttpUtil(this).postAsync(req, WsPath.Status.getPath());
/*    */     } catch (JSONException e) {
/* 33 */       throw new DataParseException("Serializing JSON QueryStatusReq failed :", e);
/*    */     }
/*    */   }
/*    */ 
/*    */   public void onSuccess(String pResponseString) throws JSONException
/*    */   {
/* 39 */     if (this.listener != null)
/* 40 */       this.listener.getStatusSuccess(JSONHttpUtil.deserializeQueryStatusRes(pResponseString));
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.ws.dao.GetStatusDAO
 * JD-Core Version:    0.6.2
 */