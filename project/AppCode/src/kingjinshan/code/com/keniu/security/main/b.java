package com.keniu.security.main;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.widget.Toast;
import com.keniu.security.MoSecurityApplication;
import com.keniu.security.util.au;
import java.io.File;

final class b extends Handler
{
  b(a parama)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      a.a(this.a, 0);
      a.b(this.a, paramMessage.arg1);
      if (a.a(this.a) != null)
      {
        a.b(this.a);
        continue;
        a.a(this.a, paramMessage.arg1);
        if (a.a(this.a) != null)
        {
          a.b(this.a);
          continue;
          a.b(this.a, 0);
          a.a(this.a, 0);
          a.c(this.a);
          int i = paramMessage.arg1;
          String str = (String)paramMessage.obj;
          this.a.b();
          MainActivity.b(a.d(this.a));
          if (i == 0)
          {
            Toast.makeText(a.d(this.a), a.d(this.a).getString(2131428123), 1).show();
          }
          else if (i == 1)
          {
            if (a.e(this.a))
              Toast.makeText(a.d(this.a), a.d(this.a).getString(2131428124), 1).show();
            else
              a.c(this.a, 1);
          }
          else if (i == 4)
          {
            a.c(this.a, 4);
          }
          else if (i == 3)
          {
            if (a.e(this.a))
              Toast.makeText(a.d(this.a), a.d(this.a).getString(2131428117), 1).show();
            else
              a.c(this.a, 3);
          }
          else if (i == 2)
          {
            Uri localUri = Uri.fromFile(new File(str));
            Intent localIntent = new Intent("android.intent.action.VIEW");
            localIntent.setDataAndType(localUri, "application/vnd.android.package-archive");
            if (a.e(this.a))
            {
              MoSecurityApplication localMoSecurityApplication = MoSecurityApplication.a();
              PendingIntent localPendingIntent = PendingIntent.getActivity(localMoSecurityApplication.getApplicationContext(), 0, localIntent, 0);
              au.a(localMoSecurityApplication, 2131428122, 2131428122, localMoSecurityApplication.getString(2131428119), localPendingIntent, 290, 2130837512);
            }
            else
            {
              a.d(this.a).startActivity(localIntent);
            }
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.b
 * JD-Core Version:    0.6.2
 */