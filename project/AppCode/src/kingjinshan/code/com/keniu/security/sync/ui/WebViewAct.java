package com.keniu.security.sync.ui;

import android.content.Intent;
import android.os.Bundle;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ProgressBar;
import com.keniu.security.main.BaseTitleActivity;

public class WebViewAct extends BaseTitleActivity
{
  private WebView a;
  private ProgressBar b;

  protected void onCreate(Bundle paramBundle)
  {
    int i = getIntent().getIntExtra("type", -1);
    String str = null;
    int j;
    switch (i)
    {
    default:
      j = -1;
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      super.a(paramBundle, 2130903172, j);
      this.b = ((ProgressBar)findViewById(2131230915));
      this.a = ((WebView)findViewById(2131231292));
      this.a.loadUrl(str);
      this.a.getSettings().setJavaScriptEnabled(true);
      this.a.setVerticalScrollBarEnabled(false);
      this.a.setHorizontalScrollBarEnabled(false);
      this.a.setWebViewClient(new ar(this));
      this.a.addJavascriptInterface(new as(this), "sync");
      return;
      j = 2131429476;
      str = "http://i.ijinshan.com/jump.php?act=modify&source=mosecurity";
      continue;
      j = 2131429478;
      str = "http://i.ijinshan.com/jump.php?act=forget_mobile&source=mosecurity&mobile=";
      continue;
      j = 2131429443;
      str = "file:///android_asset/html/private_protect.html";
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.ui.WebViewAct
 * JD-Core Version:    0.6.2
 */