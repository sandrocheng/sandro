/*    */ package com.google.analytics.tracking.android;
/*    */ 
/*    */ import android.content.Context;
/*    */ import android.content.res.Resources;
/*    */ import android.text.TextUtils;
/*    */ 
/*    */ class ParameterLoaderImpl
/*    */   implements ParameterLoader
/*    */ {
/*    */   private final Context mContext;
/*    */ 
/*    */   public ParameterLoaderImpl(Context context)
/*    */   {
/* 19 */     if (context == null) {
/* 20 */       throw new NullPointerException("Context cannot be null");
/*    */     }
/* 22 */     this.mContext = context.getApplicationContext();
/*    */   }
/*    */ 
/*    */   private int getResourceIdForType(String key, String type)
/*    */   {
/* 35 */     if (this.mContext == null) {
/* 36 */       return 0;
/*    */     }
/* 38 */     return this.mContext.getResources().getIdentifier(key, type, this.mContext.getPackageName());
/*    */   }
/*    */ 
/*    */   public String getString(String key)
/*    */   {
/* 43 */     int id = getResourceIdForType(key, "string");
/* 44 */     if (id == 0) {
/* 45 */       return null;
/*    */     }
/* 47 */     return this.mContext.getString(id);
/*    */   }
/*    */ 
/*    */   public boolean getBoolean(String key)
/*    */   {
/* 53 */     int id = getResourceIdForType(key, "bool");
/* 54 */     if (id == 0) {
/* 55 */       return false;
/*    */     }
/* 57 */     return "true".equalsIgnoreCase(this.mContext.getString(id));
/*    */   }
/*    */ 
/*    */   public int getInt(String key, int defaultValue)
/*    */   {
/* 63 */     int id = getResourceIdForType(key, "integer");
/* 64 */     if (id == 0)
/* 65 */       return defaultValue;
/*    */     try
/*    */     {
/* 68 */       return Integer.parseInt(this.mContext.getString(id));
/*    */     } catch (NumberFormatException e) {
/* 70 */       Log.w("NumberFormatException parsing " + this.mContext.getString(id));
/* 71 */     }return defaultValue;
/*    */   }
/*    */ 
/*    */   public boolean isBooleanKeyPresent(String key)
/*    */   {
/* 78 */     return getResourceIdForType(key, "bool") != 0;
/*    */   }
/*    */ 
/*    */   public Double getDoubleFromString(String key)
/*    */   {
/* 83 */     String value = getString(key);
/* 84 */     if (TextUtils.isEmpty(value))
/* 85 */       return null;
/*    */     try
/*    */     {
/* 88 */       return Double.valueOf(Double.parseDouble(value));
/*    */     } catch (NumberFormatException e) {
/* 90 */       Log.w("NumberFormatException parsing " + value);
/* 91 */     }return null;
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\libGoogleAnalyticsV2.jar
 * Qualified Name:     com.google.analytics.tracking.android.ParameterLoaderImpl
 * JD-Core Version:    0.6.2
 */