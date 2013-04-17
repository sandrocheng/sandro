/*    */ package com.mindmatics.mopay.android.impl.ws.model;
/*    */ 
/*    */ public class ResponseFactory
/*    */ {
/*    */   public static <T extends JsonRes> T createSuccess(Class<T> pResponseClazz)
/*    */   {
/*    */     try
/*    */     {
/* 15 */       JsonRes res = (JsonRes)pResponseClazz.newInstance();
/* 16 */       res.setSuccess(true);
/* 17 */       res.setRetry(false);
/* 18 */       return res;
/*    */     } catch (InstantiationException e) {
/* 20 */       throw new RuntimeException(e);
/*    */     } catch (IllegalAccessException e) {
/* 22 */       throw new RuntimeException(e);
/*    */     }
/*    */   }
/*    */ 
/*    */   public static <T extends JsonRes> T createFail(Class<T> pResponseClazz)
/*    */   {
/*    */     try
/*    */     {
/* 30 */       JsonRes res = (JsonRes)pResponseClazz.newInstance();
/* 31 */       res.setSuccess(false);
/* 32 */       res.setRetry(false);
/* 33 */       return res;
/*    */     } catch (InstantiationException e) {
/* 35 */       throw new RuntimeException(e);
/*    */     } catch (IllegalAccessException e) {
/* 37 */       throw new RuntimeException(e);
/*    */     }
/*    */   }
/*    */ 
/*    */   public static <T extends JsonRes> T createFail(Class<T> pJsonResClass, ErrorDetails pErrorDetails)
/*    */   {
/* 44 */     JsonRes t = createFail(pJsonResClass);
/* 45 */     t.setErrorDetails(pErrorDetails);
/* 46 */     return t;
/*    */   }
/*    */ 
/*    */   public static <T extends JsonRes> T createRetry(Class<T> pResponseClazz)
/*    */   {
/*    */     try {
/* 52 */       JsonRes res = (JsonRes)pResponseClazz.newInstance();
/* 53 */       res.setSuccess(false);
/* 54 */       res.setRetry(true);
/* 55 */       return res;
/*    */     } catch (InstantiationException e) {
/* 57 */       throw new RuntimeException(e);
/*    */     } catch (IllegalAccessException e) {
/* 59 */       throw new RuntimeException(e);
/*    */     }
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.ws.model.ResponseFactory
 * JD-Core Version:    0.6.2
 */