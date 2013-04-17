/*     */ package com.mindmatics.mopay.android.impl;
/*     */ 
/*     */ import com.mindmatics.mopay.android.activity.MopayActivity;
/*     */ import com.mindmatics.mopay.android.impl.model.AbstractInitPaymentReq;
/*     */ import java.io.UnsupportedEncodingException;
/*     */ import java.security.MessageDigest;
/*     */ import java.security.NoSuchAlgorithmException;
/*     */ import java.util.ArrayList;
/*     */ import java.util.Arrays;
/*     */ import java.util.Iterator;
/*     */ import java.util.List;
/*     */ import java.util.Map;
/*     */ import java.util.Set;
/*     */ 
/*     */ public class TokenUtil
/*     */ {
/*     */   public static final String ALPH = "0123456789ABCDEF";
/*     */ 
/*     */   public static <T extends AbstractInitPaymentReq> String generateToken(T pInitPaymentReq, Map<String, String> pParams)
/*     */   {
/*  31 */     String rtn = "";
/*  32 */     if (pInitPaymentReq.getPaymentType() == 1) {
/*  33 */       String checkSum = generateChecksumString(getButtonChecksumRelevantParameterNames(), pParams);
/*  34 */       rtn = createToken(checkSum, pInitPaymentReq.getSecret());
/*  35 */     } else if (pInitPaymentReq.getPaymentType() == 2) {
/*  36 */       String checkSum = generateChecksumString(getTariffKeyChecksumRelevantParameterNames(), pParams);
/*  37 */       rtn = createToken(checkSum, pInitPaymentReq.getSecret());
/*     */     }
/*  39 */     return rtn;
/*     */   }
/*     */ 
/*     */   public static String generateTokenForButton(Map<String, String> pParams, String pSecret) {
/*  43 */     String checkSum = generateChecksumString(getButtonChecksumRelevantParameterNames(), pParams);
/*  44 */     return createToken(checkSum, pSecret);
/*     */   }
/*     */ 
/*     */   private static String createToken(String pParamString, String pSecret) {
/*  48 */     return createMD5("UTF-8", pSecret, new Object[] { pParamString });
/*     */   }
/*     */ 
/*     */   private static List<String> getTariffKeyChecksumRelevantParameterNames() {
/*  52 */     String[] params = { "tariffkey", "projectid", "myid", "backurl", "productname", "servicename", "externaluid", "msisdn" };
/*     */ 
/*  54 */     return Arrays.asList(params);
/*     */   }
/*     */ 
/*     */   private static List<String> getButtonChecksumRelevantParameterNames() {
/*  58 */     String[] params = { "buttonid", "myid", "backurl", "productname", "servicename", "externaluid", "msisdn" };
/*     */ 
/*  60 */     return Arrays.asList(params);
/*     */   }
/*     */ 
/*     */   private static List<String> getAmountChecksumRelevantParameterNames() {
/*  64 */     String[] params = { "buttonid", "amount", "currency", "myid", "backurl", "productname", "servicename", "externaluid", "msisdn" };
/*     */ 
/*  66 */     return Arrays.asList(params);
/*     */   }
/*     */ 
/*     */   private static <T extends AbstractRequestTask> String generateChecksumString(List<String> pRelevantParams, T pRequestTask) {
/*  70 */     List reqParams = new ArrayList();
/*  71 */     Map params = pRequestTask.getParameterMap();
/*     */ 
/*  73 */     Set it = params.keySet();
/*  74 */     for (String string : it) {
/*  75 */       reqParams.add(string);
/*     */     }
/*     */ 
/*  78 */     List parameterNameList = new ArrayList();
/*  79 */     StringBuffer sb = new StringBuffer();
/*     */ 
/*  81 */     for (Iterator i$ = pRelevantParams.iterator(); i$.hasNext(); ) { param = (String)i$.next();
/*  82 */       for (String reqParam : reqParams)
/*  83 */         if (param.equals(reqParam.toLowerCase()))
/*  84 */           if (params.get(reqParam) == null) {
/*  85 */             parameterNameList.add(param);
/*  86 */             sb.append("");
/*     */           } else {
/*  88 */             parameterNameList.add(param);
/*  89 */             sb.append((String)params.get(reqParam));
/*     */           }
/*     */     }
/*     */     String param;
/*  94 */     return sb.toString();
/*     */   }
/*     */ 
/*     */   private static String generateChecksumString(List<String> pRelevantParams, Map<String, String> pParams) {
/*  98 */     List reqParams = new ArrayList();
/*     */ 
/* 100 */     Set it = pParams.keySet();
/* 101 */     for (String string : it) {
/* 102 */       reqParams.add(string);
/*     */     }
/*     */ 
/* 105 */     List parameterNameList = new ArrayList();
/* 106 */     StringBuffer sb = new StringBuffer();
/*     */ 
/* 108 */     for (Iterator i$ = pRelevantParams.iterator(); i$.hasNext(); ) { param = (String)i$.next();
/* 109 */       for (String reqParam : reqParams)
/* 110 */         if (param.equals(reqParam.toLowerCase()))
/* 111 */           if (pParams.get(reqParam) == null) {
/* 112 */             parameterNameList.add(param);
/* 113 */             sb.append("");
/*     */           } else {
/* 115 */             parameterNameList.add(param);
/* 116 */             sb.append((String)pParams.get(reqParam));
/*     */           }
/*     */     }
/*     */     String param;
/* 121 */     return sb.toString();
/*     */   }
/*     */ 
/*     */   private static String createMD5(String pEncoding, String pSecret, Object[] pKeys)
/*     */   {
/* 133 */     StringBuffer message = new StringBuffer();
/* 134 */     for (Object key : pKeys) {
/* 135 */       if (key != null) {
/* 136 */         message.append(String.valueOf(key));
/*     */       }
/*     */     }
/*     */ 
/* 140 */     LogUtil.logD(MopayActivity.class, new StringBuilder().append("Checksum token MD5@").append(pEncoding).append(" will be generated from String: ").append(message).append(" with pSecret ****").append(pSecret != null ? pSecret.substring(4) : "NULL").toString());
/*     */     try
/*     */     {
/* 143 */       MessageDigest digest = MessageDigest.getInstance("MD5");
/* 144 */       digest.update(new StringBuilder().append(pSecret).append(message.toString()).toString().getBytes(pEncoding));
/* 145 */       return getHexFromByte(digest.digest());
/*     */     } catch (NoSuchAlgorithmException e) {
/* 147 */       throw new RuntimeException(e);
/*     */     } catch (UnsupportedEncodingException e) {
/* 149 */       throw new RuntimeException(e);
/*     */     }
/*     */   }
/*     */ 
/*     */   private static String getHexFromByte(byte[] pBytes)
/*     */   {
/* 159 */     if (pBytes != null) {
/* 160 */       StringBuffer stringbuffer = new StringBuffer();
/* 161 */       for (int i = 0; i < pBytes.length; i++) {
/* 162 */         stringbuffer.append("0123456789ABCDEF".charAt(pBytes[i] >> 4 & 0xF));
/* 163 */         stringbuffer.append("0123456789ABCDEF".charAt(pBytes[i] & 0xF));
/*     */       }
/* 165 */       return stringbuffer.toString();
/*     */     }
/* 167 */     return "";
/*     */   }
/*     */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.TokenUtil
 * JD-Core Version:    0.6.2
 */