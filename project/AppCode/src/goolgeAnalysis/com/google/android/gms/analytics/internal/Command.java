/*    */ package com.google.android.gms.analytics.internal;
/*    */ 
/*    */ import android.os.Parcel;
/*    */ import android.os.Parcelable;
/*    */ import android.os.Parcelable.Creator;
/*    */ 
/*    */ public class Command
/*    */   implements Parcelable
/*    */ {
/*    */   public static final String APPEND_VERSION = "appendVersion";
/*    */   public static final String APPEND_QUEUE_TIME = "appendQueueTime";
/*    */   public static final String APPEND_CACHE_BUSTER = "appendCacheBuster";
/*    */   private String id;
/*    */   private String urlParam;
/*    */   private String value;
/* 54 */   public static final Parcelable.Creator<Command> CREATOR = new Parcelable.Creator()
/*    */   {
/*    */     public Command createFromParcel(Parcel in) {
/* 57 */       return new Command(in);
/*    */     }
/*    */ 
/*    */     public Command[] newArray(int size)
/*    */     {
/* 62 */       return new Command[size];
/*    */     }
/* 54 */   };
/*    */ 
/*    */   public Command(String id, String urlParam, String value)
/*    */   {
/* 37 */     this.id = id;
/* 38 */     this.urlParam = urlParam;
/* 39 */     this.value = value;
/*    */   }
/*    */ 
/*    */   public String getId() {
/* 43 */     return this.id;
/*    */   }
/*    */ 
/*    */   public String getUrlParam() {
/* 47 */     return this.urlParam;
/*    */   }
/*    */ 
/*    */   public String getValue() {
/* 51 */     return this.value;
/*    */   }
/*    */ 
/*    */   public Command()
/*    */   {
/*    */   }
/*    */ 
/*    */   Command(Parcel in)
/*    */   {
/* 71 */     readFromParcel(in);
/*    */   }
/*    */ 
/*    */   public int describeContents()
/*    */   {
/* 76 */     return 0;
/*    */   }
/*    */ 
/*    */   public void writeToParcel(Parcel out, int flags)
/*    */   {
/* 81 */     out.writeString(this.id);
/* 82 */     out.writeString(this.urlParam);
/* 83 */     out.writeString(this.value);
/*    */   }
/*    */ 
/*    */   private void readFromParcel(Parcel in) {
/* 87 */     this.id = in.readString();
/* 88 */     this.urlParam = in.readString();
/* 89 */     this.value = in.readString();
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\libGoogleAnalyticsV2.jar
 * Qualified Name:     com.google.android.gms.analytics.internal.Command
 * JD-Core Version:    0.6.2
 */