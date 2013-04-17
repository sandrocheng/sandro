/*     */ package com.google.analytics.tracking.android;
/*     */ 
/*     */ import android.text.TextUtils;
/*     */ import java.util.ArrayList;
/*     */ import java.util.HashMap;
/*     */ import java.util.List;
/*     */ import java.util.Map;
/*     */ 
/*     */ public final class Transaction
/*     */ {
/*     */   private final String mTransactionId;
/*     */   private final String mAffiliation;
/*     */   private final long mTotalCostInMicros;
/*     */   private final long mTotalTaxInMicros;
/*     */   private final long mShippingCostInMicros;
/*     */   private final String mCurrencyCode;
/*     */   private final Map<String, Item> mItems;
/*     */ 
/*     */   private Transaction(Builder builder)
/*     */   {
/*  29 */     this.mTransactionId = builder.mTransactionId;
/*  30 */     this.mTotalCostInMicros = builder.mTotalCostInMicros;
/*  31 */     this.mAffiliation = builder.mAffiliation;
/*  32 */     this.mTotalTaxInMicros = builder.mTotalTaxInMicros;
/*  33 */     this.mShippingCostInMicros = builder.mShippingCostInMicros;
/*  34 */     this.mCurrencyCode = builder.mCurrencyCode;
/*  35 */     this.mItems = new HashMap();
/*     */   }
/*     */ 
/*     */   public String getTransactionId()
/*     */   {
/*  42 */     return this.mTransactionId;
/*     */   }
/*     */ 
/*     */   public String getAffiliation()
/*     */   {
/*  49 */     return this.mAffiliation;
/*     */   }
/*     */ 
/*     */   public long getTotalCostInMicros()
/*     */   {
/*  57 */     return this.mTotalCostInMicros;
/*     */   }
/*     */ 
/*     */   public long getTotalTaxInMicros()
/*     */   {
/*  65 */     return this.mTotalTaxInMicros;
/*     */   }
/*     */ 
/*     */   public long getShippingCostInMicros()
/*     */   {
/*  73 */     return this.mShippingCostInMicros;
/*     */   }
/*     */ 
/*     */   public String getCurrencyCode()
/*     */   {
/*  80 */     return this.mCurrencyCode;
/*     */   }
/*     */ 
/*     */   public void addItem(Item item)
/*     */   {
/*  90 */     this.mItems.put(item.getSKU(), item);
/*     */   }
/*     */ 
/*     */   public List<Item> getItems()
/*     */   {
/* 100 */     return new ArrayList(this.mItems.values());
/*     */   }
/*     */ 
/*     */   public static final class Item
/*     */   {
/*     */     private final String mSKU;
/*     */     private final String mName;
/*     */     private final String mCategory;
/*     */     private final long mPriceInMicros;
/*     */     private final long mQuantity;
/*     */ 
/*     */     private Item(Builder builder)
/*     */     {
/* 197 */       this.mSKU = builder.mSKU;
/* 198 */       this.mPriceInMicros = builder.mPriceInMicros;
/* 199 */       this.mQuantity = builder.mQuantity;
/* 200 */       this.mName = builder.mName;
/* 201 */       this.mCategory = builder.mCategory;
/*     */     }
/*     */ 
/*     */     public String getSKU()
/*     */     {
/* 208 */       return this.mSKU;
/*     */     }
/*     */ 
/*     */     public String getName()
/*     */     {
/* 215 */       return this.mName;
/*     */     }
/*     */ 
/*     */     public String getCategory()
/*     */     {
/* 222 */       return this.mCategory;
/*     */     }
/*     */ 
/*     */     public long getPriceInMicros()
/*     */     {
/* 230 */       return this.mPriceInMicros;
/*     */     }
/*     */ 
/*     */     public long getQuantity()
/*     */     {
/* 237 */       return this.mQuantity;
/*     */     }
/*     */ 
/*     */     public static final class Builder
/*     */     {
/*     */       private final String mSKU;
/*     */       private final long mPriceInMicros;
/*     */       private final long mQuantity;
/*     */       private final String mName;
/* 248 */       private String mCategory = null;
/*     */ 
/*     */       public Builder(String SKU, String name, long priceInMicros, long quantity)
/*     */       {
/* 259 */         if (TextUtils.isEmpty(SKU)) {
/* 260 */           throw new IllegalArgumentException("SKU must not be empty or null");
/*     */         }
/* 262 */         if (TextUtils.isEmpty(name)) {
/* 263 */           throw new IllegalArgumentException("name must not be empty or null");
/*     */         }
/* 265 */         this.mSKU = SKU;
/* 266 */         this.mName = name;
/* 267 */         this.mPriceInMicros = priceInMicros;
/* 268 */         this.mQuantity = quantity;
/*     */       }
/*     */ 
/*     */       public Builder setProductCategory(String productCategory)
/*     */       {
/* 279 */         this.mCategory = productCategory;
/* 280 */         return this;
/*     */       }
/*     */ 
/*     */       public Transaction.Item build()
/*     */       {
/* 289 */         return new Transaction.Item(this, null);
/*     */       }
/*     */     }
/*     */   }
/*     */ 
/*     */   public static final class Builder
/*     */   {
/*     */     private final String mTransactionId;
/* 108 */     private String mAffiliation = null;
/*     */     private final long mTotalCostInMicros;
/* 110 */     private long mTotalTaxInMicros = 0L;
/* 111 */     private long mShippingCostInMicros = 0L;
/* 112 */     private String mCurrencyCode = null;
/*     */ 
/*     */     public Builder(String transactionId, long totalCostInMicros)
/*     */     {
/* 122 */       if (TextUtils.isEmpty(transactionId)) {
/* 123 */         throw new IllegalArgumentException("orderId must not be empty or null");
/*     */       }
/* 125 */       this.mTransactionId = transactionId;
/* 126 */       this.mTotalCostInMicros = totalCostInMicros;
/*     */     }
/*     */ 
/*     */     public Builder setAffiliation(String affiliation)
/*     */     {
/* 136 */       this.mAffiliation = affiliation;
/* 137 */       return this;
/*     */     }
/*     */ 
/*     */     public Builder setTotalTaxInMicros(long totalTaxInMicros)
/*     */     {
/* 148 */       this.mTotalTaxInMicros = totalTaxInMicros;
/* 149 */       return this;
/*     */     }
/*     */ 
/*     */     public Builder setShippingCostInMicros(long shippingCostInMicros)
/*     */     {
/* 160 */       this.mShippingCostInMicros = shippingCostInMicros;
/* 161 */       return this;
/*     */     }
/*     */ 
/*     */     public Builder setCurrencyCode(String currencyCode)
/*     */     {
/* 171 */       this.mCurrencyCode = currencyCode;
/* 172 */       return this;
/*     */     }
/*     */ 
/*     */     public Transaction build()
/*     */     {
/* 181 */       return new Transaction(this, null);
/*     */     }
/*     */   }
/*     */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\libGoogleAnalyticsV2.jar
 * Qualified Name:     com.google.analytics.tracking.android.Transaction
 * JD-Core Version:    0.6.2
 */