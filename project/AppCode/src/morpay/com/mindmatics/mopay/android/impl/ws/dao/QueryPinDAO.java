/*    */ package com.mindmatics.mopay.android.impl.ws.dao;
/*    */ 
/*    */ import com.mindmatics.mopay.android.impl.util.JSONHttpUtil;
/*    */ import com.mindmatics.mopay.android.impl.ws.WsPath;
/*    */ import com.mindmatics.mopay.android.impl.ws.exception.DataAccessException;
/*    */ import com.mindmatics.mopay.android.impl.ws.exception.DataParseException;
/*    */ import com.mindmatics.mopay.android.impl.ws.model.QueryPinReq;
/*    */ import com.mindmatics.mopay.android.impl.ws.model.QueryPinRes;
/*    */ import org.json.JSONException;
/*    */ 
/*    */ public class QueryPinDAO
/*    */   implements IHttpRequestOnSuccess
/*    */ {
/*    */   private IQueryPinSuccess listener;
/*    */   public static final String TYPE_BILLING_TAN = "BILLING_TAN";
/*    */   public static final String TYPE_AUTHENTICATION_TAN = "AUTH_TAN";
/*    */   public static final String TYPE_HANDSHAKE_SMS = "HANDSHAKE_SMS";
/*    */ 
/*    */   public QueryPinDAO()
/*    */   {
/*    */   }
/*    */ 
/*    */   public QueryPinDAO(IQueryPinSuccess pListener)
/*    */   {
/* 24 */     this.listener = pListener;
/*    */   }
/*    */ 
/*    */   public void queryPinAsync(String pGuid, String pType)
/*    */     throws DataAccessException
/*    */   {
/* 32 */     QueryPinReq queryPinReq = new QueryPinReq();
/* 33 */     queryPinReq.setGuid(pGuid);
/* 34 */     queryPinReq.setType(pType);
/*    */     try
/*    */     {
/* 37 */       String req = JSONHttpUtil.serializeQueryPinReq(queryPinReq);
/* 38 */       new JSONHttpUtil(this).postAsync(req, WsPath.QueryPin.getPath());
/*    */     } catch (JSONException e) {
/* 40 */       throw new DataParseException("Serializing JSON QueryPinReq failed :", e);
/*    */     }
/*    */   }
/*    */ 
/*    */   public QueryPinRes queryPinSync(String pGuid, String pType) throws DataAccessException {
/* 45 */     QueryPinReq queryPinReq = new QueryPinReq();
/* 46 */     queryPinReq.setGuid(pGuid);
/* 47 */     queryPinReq.setType(pType);
/*    */     try {
/* 49 */       String req = JSONHttpUtil.serializeQueryPinReq(queryPinReq);
/* 50 */       String response = new JSONHttpUtil(this).postSync(req, WsPath.QueryPin.getPath());
/* 51 */       return JSONHttpUtil.deserializeQueryPinRes(response);
/*    */     } catch (JSONException e) {
/* 53 */       throw new DataParseException("Serializing JSON QueryPinReq failed :", e);
/*    */     }
/*    */   }
/*    */ 
/*    */   public void onSuccess(String pResponseString) throws JSONException
/*    */   {
/* 59 */     if (this.listener != null)
/* 60 */       this.listener.queryPinSuccess(JSONHttpUtil.deserializeQueryPinRes(pResponseString));
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.ws.dao.QueryPinDAO
 * JD-Core Version:    0.6.2
 */