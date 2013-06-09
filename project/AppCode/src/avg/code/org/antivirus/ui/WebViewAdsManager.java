package org.antivirus.ui;

import android.app.Activity;
import android.content.res.Configuration;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;

public class WebViewAdsManager
{
  private boolean a = false;
  private boolean b = false;
  private WebView c;
  private boolean d = true;
  private final int e = 1024;
  private final String f = "http://www.avg.com/mobile-ads?a=";
  private final String g = "http://www.avg.com/mobile-ads-testing";

  private void a(Activity paramActivity, LinearLayout paramLinearLayout)
  {
    Display localDisplay = paramActivity.getWindowManager().getDefaultDisplay();
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    localDisplay.getMetrics(localDisplayMetrics);
    int i = 50;
    if (localDisplayMetrics.heightPixels >= 800)
      i = 90;
    label168: 
    while (true)
    {
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, (int)(i * (localDisplayMetrics.densityDpi / 160.0D)));
      this.c.setLayoutParams(localLayoutParams);
      double d1 = localDisplayMetrics.widthPixels / localDisplayMetrics.xdpi;
      double d2 = localDisplayMetrics.heightPixels / localDisplayMetrics.ydpi;
      Math.sqrt(Math.pow(d1, 2.0D) + Math.pow(d2, 2.0D));
      if (d1 > d2)
        paramLinearLayout.setVisibility(8);
      while (true)
      {
        return;
        if (localDisplayMetrics.heightPixels < 480)
          break label168;
        i = 60;
        break;
        paramLinearLayout.setVisibility(0);
      }
    }
  }

  // ERROR //
  public void initAds(Activity paramActivity, int paramInt, org.antivirus.core.b.a parama, String paramString)
  {
    // Byte code:
    //   0: new 117	org/antivirus/core/EngineSettings
    //   3: dup
    //   4: aload_1
    //   5: invokevirtual 121	android/app/Activity:getApplicationContext	()Landroid/content/Context;
    //   8: invokespecial 124	org/antivirus/core/EngineSettings:<init>	(Landroid/content/Context;)V
    //   11: astore 5
    //   13: aload_1
    //   14: invokevirtual 121	android/app/Activity:getApplicationContext	()Landroid/content/Context;
    //   17: aload 5
    //   19: invokestatic 130	org/antivirus/core/telephony/TelephonyInfo:getUniqueId	(Landroid/content/Context;Lorg/antivirus/core/EngineSettings;)Ljava/lang/String;
    //   22: astore 7
    //   24: aload_1
    //   25: invokevirtual 42	android/app/Activity:getWindowManager	()Landroid/view/WindowManager;
    //   28: invokeinterface 48 1 0
    //   33: astore 8
    //   35: new 50	android/util/DisplayMetrics
    //   38: dup
    //   39: invokespecial 51	android/util/DisplayMetrics:<init>	()V
    //   42: astore 9
    //   44: aload 8
    //   46: aload 9
    //   48: invokevirtual 57	android/view/Display:getMetrics	(Landroid/util/DisplayMetrics;)V
    //   51: getstatic 135	android/os/Build:MODEL	Ljava/lang/String;
    //   54: ifnull +565 -> 619
    //   57: getstatic 135	android/os/Build:MODEL	Ljava/lang/String;
    //   60: astore 10
    //   62: aload 10
    //   64: ldc 137
    //   66: invokestatic 143	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   69: astore 11
    //   71: ldc 145
    //   73: astore 12
    //   75: getstatic 150	android/os/Build$VERSION:SDK	Ljava/lang/String;
    //   78: invokestatic 156	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   81: iconst_3
    //   82: if_icmple +23 -> 105
    //   85: ldc 132
    //   87: ldc 158
    //   89: invokevirtual 164	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   92: aconst_null
    //   93: invokevirtual 170	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   96: invokevirtual 174	java/lang/Object:toString	()Ljava/lang/String;
    //   99: astore 34
    //   101: aload 34
    //   103: astore 12
    //   105: aload 12
    //   107: ldc 137
    //   109: invokestatic 143	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   112: astore 14
    //   114: aload_3
    //   115: ifnull +532 -> 647
    //   118: aload_3
    //   119: invokevirtual 179	org/antivirus/core/b/a:b	()Z
    //   122: ifeq +504 -> 626
    //   125: iconst_1
    //   126: istore 33
    //   128: goto +525 -> 653
    //   131: new 181	org/antivirus/core/b/g
    //   134: dup
    //   135: aload_1
    //   136: invokevirtual 121	android/app/Activity:getApplicationContext	()Landroid/content/Context;
    //   139: invokespecial 182	org/antivirus/core/b/g:<init>	(Landroid/content/Context;)V
    //   142: astore 16
    //   144: aload 16
    //   146: invokevirtual 185	org/antivirus/core/b/g:f	()J
    //   149: lstore 17
    //   151: getstatic 191	org/antivirus/AvApplication:mAvgFeatures	Lorg/antivirus/core/b/a;
    //   154: getfield 194	org/antivirus/core/b/a:o	I
    //   157: istore 19
    //   159: aload 16
    //   161: invokevirtual 196	org/antivirus/core/b/g:c	()Ljava/lang/String;
    //   164: astore 20
    //   166: aload 20
    //   168: invokevirtual 202	java/lang/String:length	()I
    //   171: iconst_4
    //   172: if_icmple +19 -> 191
    //   175: aload 20
    //   177: iconst_0
    //   178: bipush 252
    //   180: aload 20
    //   182: invokevirtual 202	java/lang/String:length	()I
    //   185: iadd
    //   186: invokevirtual 206	java/lang/String:substring	(II)Ljava/lang/String;
    //   189: astore 20
    //   191: new 208	java/lang/StringBuilder
    //   194: dup
    //   195: invokespecial 209	java/lang/StringBuilder:<init>	()V
    //   198: astore 21
    //   200: aload 21
    //   202: ldc 211
    //   204: invokevirtual 215	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   207: aload 7
    //   209: invokevirtual 215	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   212: ldc 217
    //   214: invokevirtual 215	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   217: invokestatic 222	org/antivirus/Strings:getLanguage	()Ljava/lang/String;
    //   220: invokevirtual 215	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   223: ldc 224
    //   225: invokevirtual 215	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   228: aload 9
    //   230: getfield 81	android/util/DisplayMetrics:widthPixels	I
    //   233: invokevirtual 227	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   236: pop
    //   237: aload 21
    //   239: bipush 88
    //   241: invokevirtual 230	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   244: aload 9
    //   246: getfield 60	android/util/DisplayMetrics:heightPixels	I
    //   249: invokevirtual 227	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   252: bipush 88
    //   254: invokevirtual 230	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   257: aload 9
    //   259: getfield 65	android/util/DisplayMetrics:densityDpi	I
    //   262: invokevirtual 227	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   265: ldc 232
    //   267: invokevirtual 215	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   270: aload 4
    //   272: invokevirtual 215	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   275: pop
    //   276: aload 21
    //   278: ldc 234
    //   280: invokevirtual 215	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   283: aload 11
    //   285: invokevirtual 215	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   288: ldc 236
    //   290: invokevirtual 215	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   293: aload 14
    //   295: invokevirtual 215	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   298: ldc 238
    //   300: invokevirtual 215	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   303: getstatic 150	android/os/Build$VERSION:SDK	Ljava/lang/String;
    //   306: invokevirtual 215	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   309: pop
    //   310: aload 21
    //   312: ldc 240
    //   314: invokevirtual 215	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   317: pop
    //   318: aload 21
    //   320: ldc 242
    //   322: invokevirtual 215	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   325: ldc 244
    //   327: invokevirtual 215	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   330: ldc 246
    //   332: invokevirtual 215	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   335: iload 15
    //   337: invokevirtual 227	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   340: ldc 248
    //   342: invokevirtual 215	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   345: lload 17
    //   347: invokevirtual 251	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   350: ldc 253
    //   352: invokevirtual 215	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   355: iload 19
    //   357: invokevirtual 227	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   360: pop
    //   361: aload 21
    //   363: ldc 255
    //   365: invokevirtual 215	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   368: aload 20
    //   370: invokevirtual 215	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   373: pop
    //   374: aload 21
    //   376: invokevirtual 256	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   379: astore 28
    //   381: new 208	java/lang/StringBuilder
    //   384: dup
    //   385: invokespecial 209	java/lang/StringBuilder:<init>	()V
    //   388: aload 28
    //   390: invokevirtual 215	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   393: ldc_w 258
    //   396: invokevirtual 215	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   399: invokevirtual 256	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   402: invokevirtual 262	java/lang/String:getBytes	()[B
    //   405: invokestatic 267	org/a/a/a/b/a:c	([B)Ljava/lang/String;
    //   408: astore 29
    //   410: new 198	java/lang/String
    //   413: dup
    //   414: new 208	java/lang/StringBuilder
    //   417: dup
    //   418: invokespecial 209	java/lang/StringBuilder:<init>	()V
    //   421: aload 28
    //   423: invokevirtual 215	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   426: ldc_w 269
    //   429: invokevirtual 215	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   432: aload 29
    //   434: invokevirtual 215	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   437: invokevirtual 256	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   440: invokevirtual 262	java/lang/String:getBytes	()[B
    //   443: iconst_0
    //   444: invokestatic 274	org/a/a/a/a/a:a	([BZ)[B
    //   447: invokespecial 277	java/lang/String:<init>	([B)V
    //   450: astore 30
    //   452: new 208	java/lang/StringBuilder
    //   455: dup
    //   456: ldc 29
    //   458: invokespecial 280	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   461: aload 30
    //   463: invokevirtual 215	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   466: invokevirtual 256	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   469: astore 31
    //   471: aload_0
    //   472: new 74	android/webkit/WebView
    //   475: dup
    //   476: aload_1
    //   477: invokespecial 281	android/webkit/WebView:<init>	(Landroid/content/Context;)V
    //   480: putfield 72	org/antivirus/ui/WebViewAdsManager:c	Landroid/webkit/WebView;
    //   483: aload_0
    //   484: getfield 72	org/antivirus/ui/WebViewAdsManager:c	Landroid/webkit/WebView;
    //   487: invokevirtual 285	android/webkit/WebView:getSettings	()Landroid/webkit/WebSettings;
    //   490: iconst_1
    //   491: invokevirtual 291	android/webkit/WebSettings:setLoadsImagesAutomatically	(Z)V
    //   494: aload_0
    //   495: getfield 72	org/antivirus/ui/WebViewAdsManager:c	Landroid/webkit/WebView;
    //   498: invokevirtual 285	android/webkit/WebView:getSettings	()Landroid/webkit/WebSettings;
    //   501: iconst_0
    //   502: invokevirtual 294	android/webkit/WebSettings:setJavaScriptEnabled	(Z)V
    //   505: aload_0
    //   506: getfield 72	org/antivirus/ui/WebViewAdsManager:c	Landroid/webkit/WebView;
    //   509: iconst_0
    //   510: invokevirtual 297	android/webkit/WebView:setVerticalScrollBarEnabled	(Z)V
    //   513: aload_0
    //   514: getfield 72	org/antivirus/ui/WebViewAdsManager:c	Landroid/webkit/WebView;
    //   517: iconst_0
    //   518: invokevirtual 300	android/webkit/WebView:setHorizontalScrollBarEnabled	(Z)V
    //   521: aload_0
    //   522: getfield 72	org/antivirus/ui/WebViewAdsManager:c	Landroid/webkit/WebView;
    //   525: iconst_0
    //   526: invokevirtual 303	android/webkit/WebView:setFocusable	(Z)V
    //   529: aload_0
    //   530: getfield 72	org/antivirus/ui/WebViewAdsManager:c	Landroid/webkit/WebView;
    //   533: iconst_0
    //   534: invokevirtual 306	android/webkit/WebView:setBackgroundColor	(I)V
    //   537: aload_1
    //   538: iload_2
    //   539: invokevirtual 310	android/app/Activity:findViewById	(I)Landroid/view/View;
    //   542: checkcast 102	android/widget/LinearLayout
    //   545: astore 32
    //   547: aload 32
    //   549: aload_0
    //   550: getfield 72	org/antivirus/ui/WebViewAdsManager:c	Landroid/webkit/WebView;
    //   553: invokevirtual 314	android/widget/LinearLayout:addView	(Landroid/view/View;)V
    //   556: aload 32
    //   558: iconst_0
    //   559: invokevirtual 315	android/widget/LinearLayout:setBackgroundColor	(I)V
    //   562: aload_0
    //   563: getfield 72	org/antivirus/ui/WebViewAdsManager:c	Landroid/webkit/WebView;
    //   566: new 317	org/antivirus/ui/WebViewAdsManager$1
    //   569: dup
    //   570: aload_0
    //   571: aload_1
    //   572: aload 32
    //   574: invokespecial 319	org/antivirus/ui/WebViewAdsManager$1:<init>	(Lorg/antivirus/ui/WebViewAdsManager;Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    //   577: invokevirtual 323	android/webkit/WebView:setWebViewClient	(Landroid/webkit/WebViewClient;)V
    //   580: aload_0
    //   581: getfield 72	org/antivirus/ui/WebViewAdsManager:c	Landroid/webkit/WebView;
    //   584: new 325	org/antivirus/ui/WebViewAdsManager$2
    //   587: dup
    //   588: aload_0
    //   589: invokespecial 328	org/antivirus/ui/WebViewAdsManager$2:<init>	(Lorg/antivirus/ui/WebViewAdsManager;)V
    //   592: invokevirtual 332	android/webkit/WebView:setOnTouchListener	(Landroid/view/View$OnTouchListener;)V
    //   595: new 334	java/lang/Thread
    //   598: dup
    //   599: new 336	org/antivirus/ui/WebViewAdsManager$3
    //   602: dup
    //   603: aload_0
    //   604: aload 31
    //   606: aload_1
    //   607: invokespecial 339	org/antivirus/ui/WebViewAdsManager$3:<init>	(Lorg/antivirus/ui/WebViewAdsManager;Ljava/lang/String;Landroid/app/Activity;)V
    //   610: invokespecial 342	java/lang/Thread:<init>	(Ljava/lang/Runnable;)V
    //   613: invokevirtual 345	java/lang/Thread:start	()V
    //   616: goto +44 -> 660
    //   619: ldc 145
    //   621: astore 10
    //   623: goto -561 -> 62
    //   626: iconst_3
    //   627: istore 33
    //   629: goto +24 -> 653
    //   632: astore 6
    //   634: aload 6
    //   636: invokestatic 351	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   639: goto +21 -> 660
    //   642: astore 13
    //   644: goto -539 -> 105
    //   647: iconst_0
    //   648: istore 15
    //   650: goto -519 -> 131
    //   653: iload 33
    //   655: istore 15
    //   657: goto -526 -> 131
    //   660: return
    //
    // Exception table:
    //   from	to	target	type
    //   0	75	632	java/lang/Exception
    //   105	623	632	java/lang/Exception
    //   75	101	642	java/lang/Exception
  }

  public void onConfigurationChanged(Activity paramActivity, int paramInt, Configuration paramConfiguration)
  {
    if (!this.a);
    while (true)
    {
      return;
      a(paramActivity, (LinearLayout)paramActivity.findViewById(paramInt));
    }
  }

  public void stop()
  {
    if ((this.d) && (this.c != null))
      this.c.stopLoading();
    this.d = false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.WebViewAdsManager
 * JD-Core Version:    0.6.2
 */