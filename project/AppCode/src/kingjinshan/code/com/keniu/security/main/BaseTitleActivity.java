package com.keniu.security.main;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;

public class BaseTitleActivity extends Activity
{
  protected void a(Bundle paramBundle, int paramInt)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(paramInt);
    ((TextView)findViewById(2131230727)).setText(super.getTitle());
  }

  protected void a(Bundle paramBundle, int paramInt1, int paramInt2)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(paramInt1);
    ((TextView)findViewById(2131230727)).setText(paramInt2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.BaseTitleActivity
 * JD-Core Version:    0.6.2
 */