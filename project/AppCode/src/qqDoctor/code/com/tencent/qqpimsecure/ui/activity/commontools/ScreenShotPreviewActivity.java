package com.tencent.qqpimsecure.ui.activity.commontools;

import a;
import age;
import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.widget.ImageView;

public class ScreenShotPreviewActivity extends Activity
{
  public static boolean a = false;
  private ImageView b;
  private String c;
  private Handler d = new age(this);

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903360);
    a = true;
    this.b = ((ImageView)findViewById(2131230849));
    this.c = getIntent().getStringExtra("strFileName");
    if (this.c != null)
    {
      Bitmap localBitmap = a.a(this.c);
      if (localBitmap != null)
        this.b.setImageBitmap(localBitmap);
    }
    this.d.sendEmptyMessageDelayed(0, 2000L);
  }

  public void onDestroy()
  {
    a = false;
    super.onDestroy();
  }

  public void onPause()
  {
    a = false;
    super.onPause();
  }

  public void onResume()
  {
    a = true;
    super.onResume();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.commontools.ScreenShotPreviewActivity
 * JD-Core Version:    0.6.2
 */