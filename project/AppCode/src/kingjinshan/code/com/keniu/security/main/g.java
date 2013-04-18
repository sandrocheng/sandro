package com.keniu.security.main;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.widget.Toast;
import com.hoi.widget.q;
import com.keniu.security.MoSecurityApplication;
import com.keniu.security.util.ax;
import java.io.File;

final class g extends Handler
{
  g(f paramf)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    switch (paramMessage.what)
    {
    default:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    }
    while (true)
    {
      return;
      Toast.makeText(f.a(this.a), "网络错误", 1).show();
      if (f.b(this.a).isShowing())
      {
        f.b(this.a).dismiss();
        continue;
        Toast.makeText(f.a(this.a), "SD卡空间不足", 1).show();
        if (f.b(this.a).isShowing())
        {
          f.b(this.a).dismiss();
          continue;
          if (f.b(this.a).isShowing())
          {
            f.b(this.a).a(paramMessage.arg1);
            f.b(this.a).c(0);
            q localq = f.b(this.a);
            Context localContext = f.a(this.a);
            Object[] arrayOfObject = new Object[1];
            arrayOfObject[0] = ax.c(paramMessage.arg1);
            localq.a(localContext.getString(2131428118, arrayOfObject));
            f.b(this.a).a(true);
            continue;
            f.c(this.a);
            if (f.b(this.a).isShowing())
              f.b(this.a).dismiss();
            Toast.makeText(f.a(this.a), "您已取消下载", 1).show();
            continue;
            if (f.b(this.a).isShowing())
            {
              f.b(this.a).c(paramMessage.arg1);
              continue;
              if (f.b(this.a).isShowing())
                f.b(this.a).dismiss();
              Toast.makeText(f.a(this.a), "下载失败", 1).show();
              continue;
              if (f.b(this.a).isShowing())
                f.b(this.a).dismiss();
              Uri localUri = Uri.fromFile(new File(f.d(this.a)));
              Intent localIntent = new Intent("android.intent.action.VIEW");
              localIntent.setDataAndType(localUri, "application/vnd.android.package-archive");
              if (f.e(this.a))
              {
                PendingIntent localPendingIntent = PendingIntent.getActivity(f.a(this.a), 55, localIntent, 268435456);
                NotificationManager localNotificationManager = (NotificationManager)MoSecurityApplication.a().getSystemService("notification");
                Notification localNotification = new Notification(2130837823, "金山手机卫士提示您", System.currentTimeMillis());
                localNotification.flags = 16;
                localNotification.setLatestEventInfo(f.a(this.a), "金山手机卫士提示您", "下载完成，点击安装", localPendingIntent);
                localNotificationManager.notify(136, localNotification);
              }
              else
              {
                f.a(this.a).startActivity(localIntent);
              }
            }
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.g
 * JD-Core Version:    0.6.2
 */