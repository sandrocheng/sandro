package com.antivirus.ui.scan;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import com.antivirus.AVService;
import com.antivirus.m;

public class FileRemover extends Activity
{
  private com.avg.toolkit.e.a a;
  private boolean b;
  private ServiceConnection c = new a(this);

  private void b()
  {
    String str1 = getIntent().getExtras().getString("categtory");
    String str2 = getIntent().getExtras().getString("appName");
    String str3 = getIntent().getExtras().getString("suspicious_package");
    AlertDialog.Builder localBuilder;
    if ((str2 != null) && (this.a != null))
    {
      localBuilder = new AlertDialog.Builder(this);
      if (!this.a.b())
        break label255;
    }
    label255: for (String str4 = m.a(this, 2131296819); ; str4 = m.a(this, 2131296820))
    {
      localBuilder.setTitle(str4 + " " + m.a(this, 2131296473));
      String str5 = m.a(this, 2131296821).replace("[appname]", str2).replace("[category]", str1);
      String str6 = m.a(this, 2131296823);
      localBuilder.setMessage(str5 + "\n" + str6);
      localBuilder.setIcon(2130837722);
      localBuilder.setPositiveButton(m.a(this, 2131296636), new b(this, str2, str3));
      localBuilder.setNegativeButton(m.a(this, 2131296527), new c(this));
      localBuilder.setOnCancelListener(new d(this));
      AlertDialog localAlertDialog = localBuilder.create();
      localAlertDialog.setCanceledOnTouchOutside(false);
      localAlertDialog.show();
      return;
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
 * Qualified Name:     com.antivirus.ui.scan.FileRemover
 * JD-Core Version:    0.6.2
 */