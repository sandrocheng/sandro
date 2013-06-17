package com.avg.toolkit.ads;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;

public class WebViewAdsManager extends LinearLayout
{
  private boolean a = false;
  private boolean b = false;
  private WebView c = null;
  private boolean d = true;
  private c e = null;
  private Integer f;
  private boolean g;
  private final int h = 1024;
  private final String i = "http://www.avg.com/mobile-ads?a=";
  private final String j = "http://www.avg.com/mobile-ads-testing?a=";

  public WebViewAdsManager(Context paramContext)
  {
    super(paramContext);
  }

  public WebViewAdsManager(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  private void a(Activity paramActivity)
  {
    Display localDisplay = paramActivity.getWindowManager().getDefaultDisplay();
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    localDisplay.getMetrics(localDisplayMetrics);
    int k = 50;
    double d1;
    double d2;
    if (this.f != null)
    {
      k = this.f.intValue();
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, (int)(k * (localDisplayMetrics.densityDpi / 160.0D)));
      this.c.setLayoutParams(localLayoutParams);
      d1 = localDisplayMetrics.widthPixels / localDisplayMetrics.xdpi;
      d2 = localDisplayMetrics.heightPixels / localDisplayMetrics.ydpi;
      Math.sqrt(Math.pow(d1, 2.0D) + Math.pow(d2, 2.0D));
      if (!this.g)
        break label173;
      this.c.setVisibility(0);
    }
    while (true)
    {
      return;
      if (localDisplayMetrics.heightPixels >= 800)
      {
        k = 90;
        break;
      }
      if (localDisplayMetrics.heightPixels < 480)
        break;
      k = 60;
      break;
      label173: if (d1 > d2)
        this.c.setVisibility(8);
      else
        this.c.setVisibility(0);
    }
  }

  public void a()
  {
    if ((this.d) && (this.c != null))
      this.c.stopLoading();
    this.d = false;
  }

  public void a(Activity paramActivity, Configuration paramConfiguration)
  {
    if (!this.a);
    while (true)
    {
      return;
      a(paramActivity);
    }
  }

  public void a(Activity paramActivity, String paramString1, String paramString2, Integer paramInteger, boolean paramBoolean)
  {
    this.f = paramInteger;
    this.g = paramBoolean;
    if (this.c != null)
    {
      this.a = false;
      this.b = false;
      this.d = true;
    }
    if (this.c == null)
    {
      this.c = new WebView(paramActivity);
      this.c.setVisibility(8);
      this.c.getSettings().setLoadsImagesAutomatically(true);
      this.c.getSettings().setJavaScriptEnabled(false);
      this.c.setVerticalScrollBarEnabled(false);
      this.c.setHorizontalScrollBarEnabled(false);
      this.c.setFocusable(false);
      this.c.setBackgroundColor(0);
      addView(this.c);
      setBackgroundColor(0);
      this.c.setWebViewClient(new a(this, paramActivity));
      this.c.setOnTouchListener(new b(this));
    }
    if (this.e != null)
      this.e.a = false;
    this.e = new c(this, paramActivity, paramString1, paramString2);
    try
    {
      new Thread(this.e).start();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.toolkit.ads.WebViewAdsManager
 * JD-Core Version:    0.6.2
 */