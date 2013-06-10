package org.antivirus.ui.versionUpdate;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.os.Bundle;
import android.webkit.URLUtil;
import org.antivirus.Strings;
import org.antivirus.core.Logger;

public class VersionUpdateDialog extends Activity
{
  AlertDialog a;
  private String b;
  private int c;

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.b = getIntent().getStringExtra("url");
    if ((getIntent().getExtras().get("revision") == null) || (this.b == null) || (!URLUtil.isValidUrl(this.b)) || ((!URLUtil.isHttpUrl(this.b)) && (!URLUtil.isHttpsUrl(this.b))))
    {
      Logger.error(getClass().getName() + ": intent extras are invalid");
      finish();
    }
    while (true)
    {
      return;
      this.c = getIntent().getIntExtra("revision", 0);
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
      localBuilder.setTitle(Strings.getString(2131296579));
      localBuilder.setCancelable(true);
      localBuilder.setNegativeButton(Strings.getString(2131296587), new a(this));
      localBuilder.setOnCancelListener(new b(this));
      localBuilder.setIcon(2130837585);
      localBuilder.setMessage(Strings.getString(2131296580));
      localBuilder.setPositiveButton(Strings.getString(2131296586), new c(this));
      this.a = localBuilder.create();
      this.a.setCanceledOnTouchOutside(false);
      this.a.show();
    }
  }

  protected void onDestroy()
  {
    if (this.a != null)
      this.a.dismiss();
    super.onDestroy();
  }

  protected void onResume()
  {
    super.onResume();
    Intent localIntent = getIntent();
    if (localIntent.getIntExtra("from_notification", -1) == 1)
    {
      org.antivirus.ganalytics.a.a(this, "version_update", "opened_from_notification", null);
      localIntent.removeExtra("from_notification");
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.versionUpdate.VersionUpdateDialog
 * JD-Core Version:    0.6.2
 */