package org.antivirus.ui.urlFilter;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import org.antivirus.Strings;

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
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setTitle(Strings.getString(2131296377).replace("[appname]", getString(2131296256)));
    localBuilder.setMessage(Strings.getString(2131296437));
    localBuilder.setIcon(2130837679);
    localBuilder.setPositiveButton(Strings.getString(2131296438), new a(this));
    localBuilder.setNegativeButton(Strings.getString(2131296439), new b(this));
    localBuilder.setCancelable(false);
    this.a = localBuilder.show();
  }

  protected void onDestroy()
  {
    if (this.a != null)
      this.a.dismiss();
    super.onDestroy();
  }

  protected void onPause()
  {
    if (this.a != null)
      this.a.dismiss();
    if (!isFinishing())
      finish();
    super.onPause();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.urlFilter.UrlWarningActivity
 * JD-Core Version:    0.6.2
 */