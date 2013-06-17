package com.antivirus.ui.scan;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import com.antivirus.AVService;
import com.antivirus.core.scanners.ScannerPackagesResult;
import com.antivirus.m;
import java.util.ArrayList;

public class UnInstall extends Activity
{
  private com.avg.toolkit.e.a a;
  private boolean b;
  private ServiceConnection c = new h(this);

  private void a(String paramString)
  {
    ScannerPackagesResult localScannerPackagesResult = new ScannerPackagesResult();
    localScannerPackagesResult.c.add(paramString);
    Bundle localBundle = new Bundle();
    localBundle.putInt("__SAD", 1);
    localBundle.putParcelable("ScannerResult", localScannerPackagesResult);
    AVService.a(this, 2000, 4, localBundle);
  }

  private void b()
  {
    String str1 = getIntent().getExtras().getString("suspicious");
    String str2 = getIntent().getExtras().getString("categtory");
    String str3 = getIntent().getExtras().getString("appName");
    if (str1 == null)
    {
      com.avg.toolkit.f.a.a("null package!?");
      finish();
      return;
    }
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    if (this.a.b());
    for (String str4 = m.a(this, 2131296819); ; str4 = m.a(this, 2131296820))
    {
      localBuilder.setTitle(str4 + " " + m.a(this, 2131296473));
      String str5 = m.a(this, 2131296821).replace("[appname]", str3).replace("[category]", str2);
      String str6 = m.a(this, 2131296822);
      localBuilder.setMessage(str5 + "\n" + str6);
      localBuilder.setIcon(2130837722);
      localBuilder.setPositiveButton(m.a(this, 2131296636), new i(this, str1));
      localBuilder.setNegativeButton(m.a(this, 2131296637), new j(this));
      localBuilder.setOnCancelListener(new k(this));
      AlertDialog localAlertDialog = localBuilder.create();
      localAlertDialog.setCanceledOnTouchOutside(false);
      localAlertDialog.show();
      break;
    }
  }

  void a()
  {
    if (this.b)
    {
      unbindService(this.c);
      this.b = false;
    }
  }

  void a(Context paramContext)
  {
    bindService(new Intent(this, AVService.class), this.c, 1);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a(this);
  }

  protected void onStop()
  {
    a();
    super.onStop();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.scan.UnInstall
 * JD-Core Version:    0.6.2
 */