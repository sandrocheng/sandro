package com.tencent.qqpimsecure.ui.activity;

import afn;
import afo;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.webkit.URLUtil;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import de;
import de.a;

public class WebUIActivity extends BaseUIActivity
{
  private a a;

  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    try
    {
      super.dispatchTouchEvent(paramMotionEvent);
      return true;
    }
    catch (Exception localException)
    {
      while (true)
        new StringBuilder("dispatchTouchEvent(), ").append(localException.toString()).toString();
    }
  }

  public BaseView getView()
  {
    this.a = new a(this);
    return this.a;
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (this.a.a(paramInt));
    for (boolean bool = true; ; bool = super.onKeyDown(paramInt, paramKeyEvent))
      return bool;
  }

  public void onWindowFocusChanged(boolean paramBoolean)
  {
  }

  public final class a extends BaseView
  {
    private WebView b;
    private ImageView c;
    private ImageView d;
    private ImageView e;
    private ImageView f;
    private ProgressBar g;

    public a(Context arg2)
    {
      super(2130903275);
    }

    public final boolean a(int paramInt)
    {
      if ((paramInt == 4) && (this.b != null) && (this.b.canGoBack()))
        this.b.goBack();
      for (boolean bool = true; ; bool = false)
        return bool;
    }

    public final void onCreate()
    {
      super.onCreate();
      this.b = ((WebView)findViewById(2131231494));
      this.c = ((ImageView)findViewById(2131231495));
      this.d = ((ImageView)findViewById(2131231496));
      this.e = ((ImageView)findViewById(2131231497));
      this.f = ((ImageView)findViewById(2131231498));
      this.g = ((ProgressBar)findViewById(2131231493));
      afn localafn = new afn(this);
      this.b.setDownloadListener(new afo(this));
      this.c.setOnClickListener(localafn);
      this.d.setOnClickListener(localafn);
      this.e.setOnClickListener(localafn);
      this.f.setOnClickListener(localafn);
      String str;
      if (this.b != null)
      {
        str = WebUIActivity.this.getIntent().getStringExtra("extra_url");
        if (!URLUtil.isNetworkUrl(str))
          break label248;
        this.b.loadUrl(str);
        this.b.getSettings().setJavaScriptEnabled(true);
        if (de.e() != de.a.a)
        {
          this.b.getSettings().setSupportZoom(true);
          this.b.getSettings().setBuiltInZoomControls(true);
        }
        this.b.setWebViewClient(new b((byte)0));
        this.b.setWebChromeClient(new a((byte)0));
      }
      while (true)
      {
        return;
        label248: this.b.loadUrl(str);
      }
    }

    protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
    {
      paramFrameworkTemplateUI.setBackButtonStyle((byte)2);
      paramFrameworkTemplateUI.setOptionButtonStyle((byte)16);
      paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
      int i = WebUIActivity.this.getIntent().getIntExtra("extra_title", 0);
      if (i == 0)
        getFrameworkTemplateUI().setTitleTextData("");
      while (true)
      {
        return;
        getFrameworkTemplateUI().setTitleTextData(i);
      }
    }

    final class a extends WebChromeClient
    {
      private a()
      {
      }

      public final void onProgressChanged(WebView paramWebView, int paramInt)
      {
        if (paramInt < 100)
          WebUIActivity.a.h(WebUIActivity.a.this).setVisibility(0);
        while (true)
        {
          WebUIActivity.a.h(WebUIActivity.a.this).setProgress(paramInt);
          return;
          WebUIActivity.a.h(WebUIActivity.a.this).setVisibility(8);
        }
      }
    }

    final class b extends WebViewClient
    {
      private b()
      {
      }

      public final void onPageFinished(WebView paramWebView, String paramString)
      {
        super.onPageFinished(paramWebView, paramString);
        if (WebUIActivity.a.b(WebUIActivity.a.this).canGoBack())
        {
          WebUIActivity.a.a(WebUIActivity.a.this).setImageResource(2130837551);
          if (!WebUIActivity.a.b(WebUIActivity.a.this).canGoForward())
            break label72;
          WebUIActivity.a.c(WebUIActivity.a.this).setImageResource(2130837550);
        }
        while (true)
        {
          return;
          WebUIActivity.a.a(WebUIActivity.a.this).setImageResource(2130837545);
          break;
          label72: WebUIActivity.a.c(WebUIActivity.a.this).setImageResource(2130837542);
        }
      }

      public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
      {
        if (URLUtil.isNetworkUrl(paramString))
          paramWebView.loadUrl(paramString);
        while (true)
        {
          return true;
          try
          {
            if (!paramString.startsWith("tel:"))
              break label61;
            Intent localIntent1 = new Intent("android.intent.action.DIAL", Uri.parse(paramString));
            WebUIActivity.this.startActivity(localIntent1);
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
          }
          continue;
          label61: if (paramString.startsWith("sms:"))
          {
            Intent localIntent2 = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
            WebUIActivity.this.startActivity(localIntent2);
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.WebUIActivity
 * JD-Core Version:    0.6.2
 */