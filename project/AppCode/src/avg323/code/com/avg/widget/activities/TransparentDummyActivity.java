package com.avg.widget.activities;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.avg.ui.general.j;
import com.avg.widget.e;

public class TransparentDummyActivity extends Activity
{
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(e.empty_layout);
    Intent localIntent = getIntent();
    int i = localIntent.getIntExtra("FEATURE_EXPIRED_TITLE", 0);
    int j = localIntent.getIntExtra("FEATURE_EXPIRED_SUBTITLE", 0);
    int k = localIntent.getIntExtra("FEATURE_EXPIRED_BODY", 0);
    int m = localIntent.getIntExtra("FEATURE_EXPIRED_ICON", 0);
    if ((i == 0) || (j == 0) || (k == 0) || (m == 0))
      finish();
    while (true)
    {
      return;
      j.a(this, getString(i), getString(j), getString(k), m, true);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.widget.activities.TransparentDummyActivity
 * JD-Core Version:    0.6.2
 */