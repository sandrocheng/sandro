package com.antivirus.ui.privacy;

import android.content.ComponentName;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.IBinder;
import android.support.v4.app.Fragment;
import android.support.v4.app.o;
import android.view.View;
import com.antivirus.m;
import com.antivirus.ui.main.HandheldMainActivity;
import com.avg.toolkit.ads.WebViewAdsManager;

public class PrivacyActivity extends com.antivirus.ui.a
{
  private Fragment n = null;
  private Fragment o = null;
  private WebViewAdsManager p;

  protected void a(ComponentName paramComponentName, IBinder paramIBinder)
  {
    Fragment localFragment1 = f().a("Privacy");
    if (localFragment1 != null)
    {
      ((b)localFragment1).a();
      Fragment localFragment2 = f().a("FooterFragment");
      if (localFragment2 == null)
        break label82;
      ((a)localFragment2).a();
    }
    while (true)
    {
      a(this.p, "privacy");
      return;
      this.n = new b();
      a(this.n, 2131230929, "Privacy");
      break;
      label82: this.o = new a();
      a(this.o, 2131230930, "FooterFragment");
    }
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
    a(true, 2130837550, 2130837551, m.a(this, 2131296784), false);
    findViewById(2131230930).setVisibility(0);
    this.p = ((WebViewAdsManager)findViewById(2131230911));
    p();
  }

  public void onDestroy()
  {
    if (this.p != null)
      this.p.a();
    q();
    super.onDestroy();
  }

  protected void onResume()
  {
    super.onResume();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.privacy.PrivacyActivity
 * JD-Core Version:    0.6.2
 */