/*    */ package com.mindmatics.mopay.android.impl.ws.dao;
/*    */ 
/*    */ import com.mindmatics.mopay.android.impl.util.JSONHttpUtil;
/*    */ import com.mindmatics.mopay.android.impl.ws.WsPath;
/*    */ import com.mindmatics.mopay.android.impl.ws.exception.DataAccessException;
/*    */ import com.mindmatics.mopay.android.impl.ws.exception.DataParseException;
/*    */ import com.mindmatics.mopay.android.impl.ws.model.LogReq;
/*    */ import org.json.JSONException;
/*    */ 
/*    */ public class LogDAO
/*    */   implements IHttpRequestOnSuccess
/*    */ {
/*    */   private ILogSuccess listener;
/*    */ 
/*    */   public LogDAO()
/*    */   {
/*    */   }
/*    */ 
/*    */   public LogDAO(ILogSuccess pListener)
/*    */   {
/* 23 */     this.listener = pListener;
/*    */   }
/*    */ 
/*    */   public void info(String pMessage) throws DataAccessException {
/* 27 */     log("INFO", pMessage);
/*    */   }
/*    */ 
/*    */   public void error(String pMessage) throws DataAccessException {
/* 31 */     log("ERROR", pMessage);
/*    */   }
/*    */ 
/*    */   public void warn(String pMessage) throws DataAccessException {
/* 35 */     log("WARN", pMessage);
/*    */   }
/*    */ 
/*    */   public void debug(String pMessage) throws DataAccessException {
/* 39 */     log("DEBUG", pMessage);
/*    */   }
/*    */ 
/*    */   public void fatal(String pMessage) throws DataAccessException {
/* 43 */     log("FATAL", pMessage);
/*    */   }
/*    */ 
/*    */   private void log(String pLevel, String pMessage) throws DataAccessException {
/* 47 */     LogReq logReq = new LogReq();
/* 48 */     logReq.setLevel(pLevel);
/* 49 */     logReq.setMessage(pMessage);
/*    */     try
/*    */     {
/* 52 */       String reqJson = JSONHttpUtil.serializeLogReq(logReq);
/* 53 */       new JSONHttpUtil(this).postAsync(reqJson, WsPath.Log.getPath());
/*    */     } catch (JSONException e) {
/* 55 */       throw new DataParseException("Serializing JSON LogReq failed :", e);
/*    */     }
/*    */   }
/*    */ 
/*    */   public void onSuccess(String pResponseString) throws JSONException
/*    */   {
/* 61 */     if (this.listener != null)
/* 62 */       this.listener.logSuccess(JSONHttpUtil.deserializeLogReq(pResponseString));
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.ws.dao.LogDAO
 * JD-Core Version:    0.6.2
 */