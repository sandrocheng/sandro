/*     */ package com.mindmatics.mopay.android.impl;
/*     */ 
/*     */ import android.content.Context;
/*     */ import android.content.res.Configuration;
/*     */ import android.content.res.Resources;
/*     */ import android.graphics.Point;
/*     */ import android.util.DisplayMetrics;
/*     */ import android.util.TypedValue;
/*     */ import android.view.WindowManager;
/*     */ 
/*     */ public final class Display
/*     */ {
/*     */   private static int width;
/*     */   private static int height;
/*     */   private static int orientation;
/*     */   private static int sDisplayWidth;
/*     */   private static int sDisplayHeight;
/*     */   private static float sDisplayDensity;
/*  21 */   private static int sDensityDpi = -1;
/*     */ 
/*  23 */   private static int dipWidth = 250;
/*     */ 
/*  25 */   private static int dipHeight = 250;
/*     */ 
/*  27 */   private static final DisplayMetrics DISPLAY_METRICS = new DisplayMetrics();
/*     */ 
/*     */   public static void init(Context pContext)
/*     */   {
/*  34 */     android.view.Display defaultDisplay = getDefaultDisplay(pContext);
/*     */ 
/*  36 */     defaultDisplay.getMetrics(DISPLAY_METRICS);
/*     */ 
/*  40 */     sDisplayWidth = DISPLAY_METRICS.widthPixels;
/*  41 */     sDisplayHeight = DISPLAY_METRICS.heightPixels;
/*     */ 
/*  44 */     orientation = pContext.getResources().getConfiguration().orientation;
/*     */ 
/*  47 */     Point p = new Point();
/*  48 */     defaultDisplay.getSize(p);
/*  49 */     width = p.x;
/*  50 */     height = p.y;
/*     */ 
/*  52 */     sDisplayDensity = DISPLAY_METRICS.density;
/*  53 */     sDensityDpi = DISPLAY_METRICS.densityDpi;
/*     */ 
/*  55 */     if ((sDensityDpi != 120) && (sDensityDpi != 160) && (sDensityDpi != 240))
/*     */     {
/*  58 */       LogUtil.logD(Display.class, "Unexpected screen density! Defaulting to DENSITY_HIGH");
/*  59 */       sDensityDpi = 240;
/*     */     }
/*     */ 
/*  62 */     setMopayDimensions();
/*     */ 
/*  64 */     LogUtil.logD(Display.class, "*******************");
/*  65 */     LogUtil.logD(Display.class, "display init from metrics: w=" + sDisplayWidth + " h=" + sDisplayHeight);
/*  66 */     LogUtil.logD(Display.class, "display init from defaultDisplay: w=" + width + " h=" + height);
/*  67 */     LogUtil.logD(Display.class, "display init orientation: " + orientation);
/*  68 */     LogUtil.logD(Display.class, "display init density: " + sDensityDpi);
/*  69 */     LogUtil.logD(Display.class, "display init displayDensity: " + sDisplayDensity);
/*  70 */     LogUtil.logD(Display.class, "mopay width= " + getNeededWidth() + " height= " + getNeededHeight());
/*  71 */     LogUtil.logD(Display.class, "*******************");
/*     */   }
/*     */ 
/*     */   private static void setMopayDimensions()
/*     */   {
/*  77 */     switch (sDensityDpi)
/*     */     {
/*     */     case 120:
/*     */     }
/*     */ 
/* 116 */     if (orientation == 1) {
/* 117 */       dipWidth = 270;
/* 118 */       dipHeight = 380;
/*     */     } else {
/* 120 */       dipWidth = 280;
/* 121 */       dipHeight = 380;
/*     */ 
/* 124 */       int x = height - getNeededHeight();
/* 125 */       if (x < 0) {
/* 126 */         int dipOut = pixelToDip(x);
/*     */ 
/* 128 */         dipHeight -= Math.abs(dipOut) + Math.abs(70);
/* 129 */         LogUtil.logD(Display.class, "dipHeight " + dipHeight);
/*     */       }
/*     */     }
/*     */   }
/*     */ 
/*     */   public static android.view.Display getDefaultDisplay(Context pContext)
/*     */   {
/* 138 */     WindowManager wm = (WindowManager)pContext.getSystemService("window");
/* 139 */     return wm.getDefaultDisplay();
/*     */   }
/*     */ 
/*     */   public static DisplayMetrics getDisplayMetrics(Context pContext)
/*     */   {
/* 144 */     if (DISPLAY_METRICS == null) {
/* 145 */       init(pContext);
/*     */     }
/* 147 */     return DISPLAY_METRICS;
/*     */   }
/*     */ 
/*     */   public static int getNeededWidth() {
/* 151 */     return Math.round(dipWidth * sDisplayDensity);
/*     */   }
/*     */ 
/*     */   public static int getNeededHeight() {
/* 155 */     return Math.round(dipHeight * sDisplayDensity);
/*     */   }
/*     */ 
/*     */   public static int dipToPixels(int pDip) {
/* 159 */     return Math.round(pDip * sDisplayDensity);
/*     */   }
/*     */ 
/*     */   public static int dipToPixels2(int pDip)
/*     */   {
/* 164 */     float px = TypedValue.applyDimension(1, pDip, DISPLAY_METRICS);
/*     */ 
/* 166 */     return Math.round(px);
/*     */   }
/*     */ 
/*     */   public static int pixelToDip(int pPix)
/*     */   {
/* 171 */     return Math.round(pPix / sDisplayDensity);
/*     */   }
/*     */ 
/*     */   public static int pixelToDip2(int pPix)
/*     */   {
/* 177 */     float px = TypedValue.applyDimension(0, pPix, DISPLAY_METRICS);
/*     */ 
/* 179 */     return Math.round(px);
/*     */   }
/*     */ 
/*     */   public static String getResourceFolder(Context pContext)
/*     */   {
/* 188 */     String folder = "";
/*     */ 
/* 190 */     if (sDensityDpi == -1) {
/* 191 */       init(pContext);
/*     */     }
/*     */ 
/* 194 */     switch (sDensityDpi) {
/*     */     case 120:
/* 196 */       folder = "drawable-ldpi/";
/* 197 */       break;
/*     */     case 160:
/* 199 */       folder = "drawable-mdpi/";
/* 200 */       break;
/*     */     case 240:
/* 202 */       folder = "drawable-hdpi/";
/* 203 */       break;
/*     */     default:
/* 205 */       folder = "drawable-hdpi/";
/*     */     }
/*     */ 
/* 209 */     return folder;
/*     */   }
/*     */ 
/*     */   public static String resToString()
/*     */   {
/* 214 */     return sDisplayWidth + "x" + sDisplayHeight;
/*     */   }
/*     */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.Display
 * JD-Core Version:    0.6.2
 */