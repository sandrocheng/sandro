package com.antivirus.ui.protection;

import android.content.ComponentName;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.IBinder;
import android.support.v4.app.Fragment;
import com.antivirus.m;
import com.antivirus.ui.main.HandheldMainActivity;
import com.avg.toolkit.ads.WebViewAdsManager;

public class ProtectionActivity extends com.antivirus.ui.a
{
  public com.antivirus.a n;
  private Fragment o = null;
  private WebViewAdsManager p;

  protected void a(ComponentName paramComponentName, IBinder paramIBinder)
  {
    this.o = new r();
    a(this.o, 2131230929, "Protection");
    this.n = ((com.antivirus.a)paramIBinder);
    a(this.p, "protection");
  }

  public void i()
  {
    finish();
    Intent localIntent = new Intent(this, HandheldMainActivity.class);
    localIntent.setFlags(608305152);
    startActivity(localIntent);
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    this.p.a(this, paramConfiguration);
    super.onConfigurationChanged(paramConfiguration);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903080);
    a(true, 2130837552, 2130837553, m.a(this, 2131296783), false);
    this.p = ((WebViewAdsManager)findViewById(2131230911));
    p();
  }

  protected void onDestroy()
  {
    if (this.p != null)
      this.p.a();
    q();
    super.onDestroy();
  }

  public void onResume()
  {
    super.onResume();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.protection.ProtectionActivity
 * JD-Core Version:    0.6.2
 */