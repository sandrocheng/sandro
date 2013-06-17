package com.antivirus.ui.versionUpdate;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.os.Bundle;
import android.webkit.URLUtil;
import com.antivirus.m;

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
      com.avg.toolkit.f.a.a(getClass().getName() + ": intent extras are invalid");
      finish();
    }
    while (true)
    {
      return;
      this.c = getIntent().getIntExtra("revision", 0);
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
      localBuilder.setTitle(m.a(this, 2131296679));
      localBuilder.setCancelable(true);
      localBuilder.setNegativeButton(m.a(this, 2131296687), new a(this));
      localBuilder.setOnCancelListener(new b(this));
      localBuilder.setIcon(2130837609);
      localBuilder.setMessage(m.a(this, 2131296680));
      localBuilder.setPositiveButton(m.a(this, 2131296686), new c(this));
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
      com.avg.toolkit.c.a.a(this, "version_update", "opened_from_notification", null, 0);
      localIntent.removeExtra("from_notification");
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.versionUpdate.VersionUpdateDialog
 * JD-Core Version:    0.6.2
 */