package com.avg.tuneup.a;

import android.content.ComponentName;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.IBinder;
import com.avg.a.e;
import com.avg.a.f;
import com.avg.toolkit.ads.WebViewAdsManager;
import com.avg.tuneup.g;

public abstract class a extends g
{
  private WebViewAdsManager n;

  protected void a(ComponentName paramComponentName, IBinder paramIBinder)
  {
    a(this.n, "performance");
  }

  protected abstract void a(Bundle paramBundle);

  public void i()
  {
    finish();
  }

  protected Class j()
  {
    return null;
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    this.n.a(this, paramConfiguration);
    super.onConfigurationChanged(paramConfiguration);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(f.fragment_activity);
    a(paramBundle);
    this.n = ((WebViewAdsManager)findViewById(e.banner));
    p();
  }

  public void onDestroy()
  {
    if (this.n != null)
      this.n.a();
    q();
    super.onDestroy();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.a.a
 * JD-Core Version:    0.6.2
 */