/*    */ package com.mindmatics.mopay.android.api;
/*    */ 
/*    */ import android.content.Intent;
/*    */ import com.mindmatics.mopay.android.api.impl.MopayResult;
/*    */ import com.mindmatics.mopay.android.api.impl.PaymentRes;
/*    */ import com.mindmatics.mopay.android.impl.LogUtil;
/*    */ 
/*    */ public class MopayResultFactory
/*    */ {
/*    */   public static IMopayResult createMopayResult(int pRequestCode, int pResultCode, Intent pData)
/*    */   {
/* 33 */     if (pRequestCode == 31111) {
/* 34 */       LogUtil.logD(MopayResultFactory.class, "requestCode is mopay action payment " + pRequestCode);
/*    */ 
/* 38 */       if (pResultCode == 32222)
/*    */       {
/* 40 */         return createMopayResult(pData);
/*    */       }
/* 42 */       LogUtil.logD(MopayResultFactory.class, "Unknown activity resultCode: " + pResultCode);
/* 43 */       MopayResult mopayResult = new MopayResult();
/* 44 */       mopayResult.setErrorCode(20090801L);
/* 45 */       mopayResult.setStatus(MopayStatus.ERROR);
/* 46 */       mopayResult.setErrorMessage("Unknown activity resultCode: " + pResultCode);
/* 47 */       return mopayResult;
/*    */     }
/*    */ 
/* 52 */     LogUtil.logD(MopayResultFactory.class, "Unknown activity  requestCode: " + pRequestCode);
/* 53 */     MopayResult mopayResult = new MopayResult();
/* 54 */     mopayResult.setErrorCode(20090801L);
/* 55 */     mopayResult.setStatus(MopayStatus.ERROR);
/* 56 */     mopayResult.setErrorMessage("Unknown Activity RequestCode: " + pRequestCode + ".  Not a mopay request code!");
/* 57 */     return mopayResult;
/*    */   }
/*    */ 
/*    */   private static MopayResult createMopayResult(Intent pData)
/*    */   {
/* 71 */     PaymentRes res = (PaymentRes)pData.getSerializableExtra("Mopay4AndroidPaymentResult");
/*    */ 
/* 73 */     MopayResult mopayResult = new MopayResult();
/*    */ 
/* 75 */     mopayResult.setStatus(res.getPaymentStatus() != null ? MopayStatus.parseStatus(res.getPaymentStatus()) : MopayStatus.parseStatus(""));
/* 76 */     mopayResult.setGuid(res.getGuid() != null ? res.getGuid() : "");
/* 77 */     mopayResult.setErrorMessage(res.getErrorMessage() != null ? res.getErrorMessage() : "");
/* 78 */     mopayResult.setErrorCode(res.getErrorCode() != null ? res.getErrorCode().longValue() : 0L);
/* 79 */     mopayResult.setAmount(Double.valueOf(res.getAmount() != null ? res.getAmount().doubleValue() : 0.0D));
/* 80 */     mopayResult.setCountry(res.getCountry() != null ? res.getCountry() : "");
/* 81 */     mopayResult.setCurrency(res.getCurrency() != null ? res.getCurrency() : "");
/* 82 */     mopayResult.setMsisdn(res.getMsisdn() != null ? res.getMsisdn() : "");
/* 83 */     mopayResult.setErrorDetail(res.getErrorDetail() != null ? res.getErrorDetail().intValue() : 0);
/*    */ 
/* 86 */     return mopayResult;
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.api.MopayResultFactory
 * JD-Core Version:    0.6.2
 */