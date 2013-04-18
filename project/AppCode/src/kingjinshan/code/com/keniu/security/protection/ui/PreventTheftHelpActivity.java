package com.keniu.security.protection.ui;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebView;
import android.widget.TextView;
import com.keniu.security.main.BaseTitleActivity;

public class PreventTheftHelpActivity extends BaseTitleActivity
{
  public static String a = "extra_title";
  public static String b = "extra_url";
  private WebView c;

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903105);
    TextView localTextView = (TextView)findViewById(2131231035);
    String str1 = getIntent().getStringExtra(a);
    String str2 = getIntent().getStringExtra(b);
    localTextView.setText(str1);
    findViewById(2131231036).setVisibility(8);
    this.c = ((WebView)findViewById(2131231037));
    this.c.setBackgroundColor(0);
    this.c.loadUrl(str2);
    this.c.setVerticalScrollBarEnabled(false);
    this.c.setHorizontalScrollBarEnabled(false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.ui.PreventTheftHelpActivity
 * JD-Core Version:    0.6.2
 */