package com.antivirus.ui.urlFilter;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import com.antivirus.m;
import com.avg.toolkit.e.e;

public class UrlWarningActivity extends Activity
{
  private AlertDialog a;

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if ((getIntent() == null) || (getIntent().getExtras() == null) || (getIntent().getExtras().getString("md5sum") == null))
      finish();
    com.avg.toolkit.e.a locala = e.a();
    String str;
    if (locala == null)
      str = m.a(this, 2131296472);
    while (true)
    {
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
      localBuilder.setTitle(m.a(this, 2131296579).replace("[appname]", str));
      localBuilder.setMessage(m.a(this, 2131296634));
      localBuilder.setIcon(2130837722);
      localBuilder.setPositiveButton(m.a(this, 2131296635), new a(this));
      localBuilder.setNegativeButton(m.a(this, 2131296636), new b(this));
      localBuilder.setCancelable(false);
      this.a = localBuilder.show();
      return;
      if (locala.b())
        str = m.a(this, 2131296819);
      else
        str = m.a(this, 2131296820);
    }
  }

  protected void onDestroy()
  {
    if (this.a != null)
      this.a.dismiss();
    super.onDestroy();
  }

  protected void onPause()
  {
    super.onPause();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.urlFilter.UrlWarningActivity
 * JD-Core Version:    0.6.2
 */