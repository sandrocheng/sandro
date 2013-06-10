package org.antivirus.ui.privacy;

import android.app.Dialog;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ListView;
import java.util.ArrayList;
import org.antivirus.AVService;
import org.antivirus.Strings;
import org.antivirus.ui.BaseToolActivity;
import org.antivirus.ui.WebViewAdsManager;

public class PrivacyActivity extends BaseToolActivity
{
  ArrayList a = new ArrayList();
  private int b = 30;
  private final int c = 0;
  private final int d = 1;
  private final int e = 2;
  private final int f = 3;
  private final int g = 4;
  private final int h = 5;
  private f i;
  private org.antivirus.core.b.a j;
  private ListView k;
  private boolean l;
  private int m;
  private Dialog n;
  private WebViewAdsManager o;
  private ServiceConnection p = new a(this);

  private void c()
  {
    new Thread(new d(this, this)).start();
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    this.o.onConfigurationChanged(this, 2131230906, paramConfiguration);
    super.onConfigurationChanged(paramConfiguration);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903073);
    this.k = ((ListView)findViewById(2131230813));
    View localView = getLayoutInflater().inflate(2130903074, null);
    this.k.addFooterView(localView, null, false);
    a(true, 2130837530, 2130837531, Strings.getString(2131296690), false);
    this.o = new WebViewAdsManager();
    bindService(new Intent(this, AVService.class), this.p, 1);
    this.l = true;
    this.m = -1;
    c();
  }

  public void onDestroy()
  {
    if (this.n != null)
    {
      this.n.dismiss();
      this.n = null;
    }
    if (this.o != null)
      this.o.stop();
    if (this.l)
    {
      unbindService(this.p);
      this.l = false;
    }
    super.onDestroy();
  }

  protected void onResume()
  {
    super.onResume();
    c();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.privacy.PrivacyActivity
 * JD-Core Version:    0.6.2
 */