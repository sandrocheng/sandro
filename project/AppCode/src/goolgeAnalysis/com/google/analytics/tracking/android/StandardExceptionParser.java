/*     */ package com.google.analytics.tracking.android;
/*     */ 
/*     */ import android.content.Context;
/*     */ import android.content.pm.ActivityInfo;
/*     */ import android.content.pm.PackageInfo;
/*     */ import android.content.pm.PackageManager;
/*     */ import android.content.pm.PackageManager.NameNotFoundException;
/*     */ import java.util.Collection;
/*     */ import java.util.HashSet;
/*     */ import java.util.Set;
/*     */ import java.util.TreeSet;
/*     */ 
/*     */ public class StandardExceptionParser
/*     */   implements ExceptionParser
/*     */ {
/*  39 */   private final TreeSet<String> includedPackages = new TreeSet();
/*     */ 
/*     */   public StandardExceptionParser(Context context, Collection<String> additionalPackages) {
/*  42 */     setIncludedPackages(context, additionalPackages);
/*     */   }
/*     */ 
/*     */   public void setIncludedPackages(Context context, Collection<String> additionalPackages)
/*     */   {
/*  57 */     this.includedPackages.clear();
/*  58 */     Set packages = new HashSet();
/*  59 */     if (additionalPackages != null) {
/*  60 */       packages.addAll(additionalPackages);
/*     */     }
/*  62 */     if (context != null)
/*     */     {
/*     */       try
/*     */       {
/*  66 */         String appPackage = context.getApplicationContext().getPackageName();
/*  67 */         this.includedPackages.add(appPackage);
/*  68 */         PackageInfo pi = context.getApplicationContext().getPackageManager().getPackageInfo(appPackage, 15);
/*     */ 
/*  74 */         ActivityInfo[] ai = pi.activities;
/*  75 */         if (ai != null)
/*  76 */           for (ActivityInfo sx : ai)
/*  77 */             packages.add(sx.packageName);
/*     */       }
/*     */       catch (PackageManager.NameNotFoundException e)
/*     */       {
/*  81 */         Log.i("No package found");
/*     */       }
/*     */ 
/*     */     }
/*     */ 
/*  89 */     for (String packageName : packages) {
/*  90 */       boolean needToAdd = true;
/*  91 */       for (String oldName : this.includedPackages) {
/*  92 */         if (!packageName.startsWith(oldName)) {
/*  93 */           if (!oldName.startsWith(packageName)) break;
/*  94 */           this.includedPackages.remove(oldName); break;
/*     */         }
/*     */ 
/*  98 */         needToAdd = false;
/*     */       }
/*     */ 
/* 101 */       if (needToAdd)
/* 102 */         this.includedPackages.add(packageName);
/*     */     }
/*     */   }
/*     */ 
/*     */   protected Throwable getCause(Throwable t)
/*     */   {
/* 116 */     Throwable result = t;
/* 117 */     while (result.getCause() != null) {
/* 118 */       result = result.getCause();
/*     */     }
/* 120 */     return result;
/*     */   }
/*     */ 
/*     */   protected StackTraceElement getBestStackTraceElement(Throwable t)
/*     */   {
/* 131 */     StackTraceElement[] elements = t.getStackTrace();
/* 132 */     if ((elements == null) || (elements.length == 0))
/* 133 */       return null;
/*     */     StackTraceElement e;
/*     */     String className;
/* 135 */     for (e : elements) {
/* 136 */       className = e.getClassName();
/* 137 */       for (String packageName : this.includedPackages) {
/* 138 */         if (className.startsWith(packageName)) {
/* 139 */           return e;
/*     */         }
/*     */       }
/*     */     }
/* 143 */     return elements[0];
/*     */   }
/*     */ 
/*     */   protected String getDescription(Throwable cause, StackTraceElement element, String threadName)
/*     */   {
/* 155 */     StringBuilder descriptionBuilder = new StringBuilder();
/* 156 */     descriptionBuilder.append(cause.getClass().getSimpleName());
/* 157 */     if (element != null) {
/* 158 */       String[] classNameParts = element.getClassName().split("\\.");
/* 159 */       String className = "unknown";
/* 160 */       if ((classNameParts != null) && (classNameParts.length > 0)) {
/* 161 */         className = classNameParts[(classNameParts.length - 1)];
/*     */       }
/* 163 */       descriptionBuilder.append(String.format(" (@%s:%s)", new Object[] { className, element.getMethodName() }));
/*     */     }
/*     */ 
/* 168 */     if (threadName != null) {
/* 169 */       descriptionBuilder.append(String.format(" {%s}", new Object[] { threadName }));
/*     */     }
/* 171 */     return descriptionBuilder.toString();
/*     */   }
/*     */ 
/*     */   public String getDescription(String threadName, Throwable t)
/*     */   {
/* 176 */     return getDescription(getCause(t), getBestStackTraceElement(getCause(t)), threadName);
/*     */   }
/*     */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\libGoogleAnalyticsV2.jar
 * Qualified Name:     com.google.analytics.tracking.android.StandardExceptionParser
 * JD-Core Version:    0.6.2
 */