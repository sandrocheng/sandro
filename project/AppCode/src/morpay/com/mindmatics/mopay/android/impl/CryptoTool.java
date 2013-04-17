/*     */ package com.mindmatics.mopay.android.impl;
/*     */ 
/*     */ import java.security.SecureRandom;
/*     */ import javax.crypto.Cipher;
/*     */ import javax.crypto.KeyGenerator;
/*     */ import javax.crypto.SecretKey;
/*     */ import javax.crypto.spec.SecretKeySpec;
/*     */ 
/*     */ public class CryptoTool
/*     */ {
/*     */   private static final String HEX = "0123456789ABCDEF";
/*     */ 
/*     */   public static String encrypt(String pKey, String pSimpleText)
/*     */     throws Exception
/*     */   {
/*  35 */     byte[] rawKey = getRawKey(pKey.getBytes());
/*  36 */     byte[] result = encrypt(rawKey, pSimpleText.getBytes());
/*  37 */     return toHex(result);
/*     */   }
/*     */ 
/*     */   public static String decrypt(String pKey, String pEncrypted)
/*     */     throws Exception
/*     */   {
/*  49 */     byte[] rawKey = getRawKey(pKey.getBytes());
/*  50 */     byte[] enc = toByte(pEncrypted);
/*  51 */     byte[] result = decrypt(rawKey, enc);
/*  52 */     return new String(result);
/*     */   }
/*     */ 
/*     */   private static byte[] getRawKey(byte[] pSeed)
/*     */     throws Exception
/*     */   {
/*  63 */     KeyGenerator keyGen = KeyGenerator.getInstance("AES");
/*  64 */     SecureRandom sr = SecureRandom.getInstance("SHA1PRNG");
/*  65 */     sr.setSeed(pSeed);
/*  66 */     keyGen.init(128, sr);
/*  67 */     SecretKey skey = keyGen.generateKey();
/*  68 */     byte[] raw = skey.getEncoded();
/*  69 */     return raw;
/*     */   }
/*     */ 
/*     */   private static byte[] encrypt(byte[] pRaw, byte[] pClear)
/*     */     throws Exception
/*     */   {
/*  81 */     SecretKeySpec skeySpec = new SecretKeySpec(pRaw, "AES");
/*  82 */     Cipher cipher = Cipher.getInstance("AES");
/*  83 */     cipher.init(1, skeySpec);
/*  84 */     return cipher.doFinal(pClear);
/*     */   }
/*     */ 
/*     */   private static byte[] decrypt(byte[] pRaw, byte[] pEncrypted) throws Exception {
/*  88 */     SecretKeySpec skeySpec = new SecretKeySpec(pRaw, "AES");
/*  89 */     Cipher cipher = Cipher.getInstance("AES");
/*  90 */     cipher.init(2, skeySpec);
/*  91 */     byte[] decrypted = cipher.doFinal(pEncrypted);
/*  92 */     return decrypted;
/*     */   }
/*     */ 
/*     */   public static String toHex(String pTxt) {
/*  96 */     return toHex(pTxt.getBytes());
/*     */   }
/*     */ 
/*     */   public static String fromHex(String pHex) {
/* 100 */     return new String(toByte(pHex));
/*     */   }
/*     */ 
/*     */   public static byte[] toByte(String pHexString) {
/* 104 */     int len = pHexString.length() / 2;
/* 105 */     byte[] result = new byte[len];
/* 106 */     for (int i = 0; i < len; i++) {
/* 107 */       result[i] = Integer.valueOf(pHexString.substring(2 * i, 2 * i + 2), 16).byteValue();
/*     */     }
/* 109 */     return result;
/*     */   }
/*     */ 
/*     */   public static String toHex(byte[] pBuf) {
/* 113 */     if (pBuf == null) {
/* 114 */       return "";
/*     */     }
/* 116 */     StringBuffer result = new StringBuffer(2 * pBuf.length);
/* 117 */     for (int i = 0; i < pBuf.length; i++) {
/* 118 */       appendHex(result, pBuf[i]);
/*     */     }
/* 120 */     return result.toString();
/*     */   }
/*     */ 
/*     */   private static void appendHex(StringBuffer pSb, byte pB) {
/* 124 */     pSb.append("0123456789ABCDEF".charAt(pB >> 4 & 0xF)).append("0123456789ABCDEF".charAt(pB & 0xF));
/*     */   }
/*     */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.CryptoTool
 * JD-Core Version:    0.6.2
 */