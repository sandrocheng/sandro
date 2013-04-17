/*     */ package com.mindmatics.mopay.android.api.impl;
/*     */ 
/*     */ import com.mindmatics.mopay.android.api.IMopayResult;
/*     */ import com.mindmatics.mopay.android.api.MopayStatus;
/*     */ 
/*     */ public class MopayResult
/*     */   implements IMopayResult
/*     */ {
/*     */   private String guid;
/*     */   private MopayStatus status;
/*     */   private long errorCode;
/*     */   private int errorDetail;
/*     */   private String errorMessage;
/*     */   private String currency;
/*     */   private Double amount;
/*     */   private String country;
/*     */   private String msisdn;
/*     */ 
/*     */   public String getGuid()
/*     */   {
/*  34 */     return this.guid;
/*     */   }
/*     */ 
/*     */   public MopayStatus getStatus()
/*     */   {
/*  44 */     return this.status;
/*     */   }
/*     */ 
/*     */   public long getErrorCode()
/*     */   {
/*  55 */     return this.errorCode;
/*     */   }
/*     */ 
/*     */   public int getErrorDetail()
/*     */   {
/*  67 */     return this.errorDetail;
/*     */   }
/*     */ 
/*     */   public String getErrorMessage()
/*     */   {
/*  76 */     return this.errorMessage;
/*     */   }
/*     */ 
/*     */   public String getCurrency()
/*     */   {
/*  86 */     return this.currency;
/*     */   }
/*     */ 
/*     */   public Double getAmount()
/*     */   {
/*  96 */     return this.amount;
/*     */   }
/*     */ 
/*     */   public String getCountry()
/*     */   {
/* 106 */     return this.country;
/*     */   }
/*     */ 
/*     */   public String getMsisdn()
/*     */   {
/* 116 */     return this.msisdn;
/*     */   }
/*     */ 
/*     */   public void setGuid(String pGuid)
/*     */   {
/* 126 */     this.guid = pGuid;
/*     */   }
/*     */ 
/*     */   public void setStatus(MopayStatus pStatus)
/*     */   {
/* 134 */     this.status = pStatus;
/*     */   }
/*     */ 
/*     */   public void setErrorCode(long pErrorCode)
/*     */   {
/* 142 */     this.errorCode = pErrorCode;
/*     */   }
/*     */ 
/*     */   public void setErrorDetail(int pErrorDetail)
/*     */   {
/* 150 */     this.errorDetail = pErrorDetail;
/*     */   }
/*     */ 
/*     */   public void setErrorMessage(String pErrorMessage)
/*     */   {
/* 158 */     this.errorMessage = pErrorMessage;
/*     */   }
/*     */ 
/*     */   public void setCurrency(String pCurrency)
/*     */   {
/* 166 */     this.currency = pCurrency;
/*     */   }
/*     */ 
/*     */   public void setAmount(Double pAmount)
/*     */   {
/* 173 */     this.amount = pAmount;
/*     */   }
/*     */ 
/*     */   public void setCountry(String pCountry)
/*     */   {
/* 181 */     this.country = pCountry;
/*     */   }
/*     */ 
/*     */   public void setMsisdn(String pMsisdn)
/*     */   {
/* 189 */     this.msisdn = pMsisdn;
/*     */   }
/*     */ 
/*     */   public String toString()
/*     */   {
/* 195 */     StringBuffer sb = new StringBuffer();
/* 196 */     sb.append(getClass().getSimpleName());
/* 197 */     sb.append("{guid='").append(this.guid).append('\'');
/* 198 */     sb.append(", status=").append(this.status);
/* 199 */     sb.append(", errorCode=").append(this.errorCode);
/* 200 */     sb.append(", errorDetail=").append(this.errorDetail);
/* 201 */     sb.append(", errorMessage='").append(this.errorMessage).append('\'');
/* 202 */     sb.append(", currency='").append(this.currency).append('\'');
/* 203 */     sb.append(", amount=").append(this.amount);
/* 204 */     sb.append(", country='").append(this.country).append('\'');
/* 205 */     sb.append(", msisdn='").append(this.msisdn).append('\'');
/* 206 */     sb.append('}');
/* 207 */     return sb.toString();
/*     */   }
/*     */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.api.impl.MopayResult
 * JD-Core Version:    0.6.2
 */