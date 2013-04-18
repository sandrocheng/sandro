package com.ijinshan.software.recommand;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import java.util.ArrayList;

final class a extends Handler
{
  a(FileDownloadService paramFileDownloadService)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
      this.a.stopService(FileDownloadService.d(this.a));
    case 0:
    case 1:
    }
    while (true)
    {
      return;
      c localc2 = (c)paramMessage.obj;
      Uri localUri = Uri.fromFile(localc2.g);
      Intent localIntent = new Intent("android.intent.action.VIEW");
      localIntent.setDataAndType(localUri, "application/vnd.android.package-archive");
      PendingIntent localPendingIntent = PendingIntent.getActivity(this.a, 0, localIntent, 134217728);
      localc2.h.flags = 16;
      localc2.h.tickerText = (localc2.b + this.a.getString(2131428336));
      localc2.h.setLatestEventInfo(this.a, localc2.b, this.a.getString(2131428335), localPendingIntent);
      FileDownloadService.a(this.a).notify(localc2.a, localc2.h);
      FileDownloadService.b(this.a).remove(localc2.b);
      this.a.stopService(localIntent);
      continue;
      c localc1 = (c)paramMessage.obj;
      localc1.h.flags = 16;
      localc1.h.tickerText = (localc1.b + this.a.getString(2131428334));
      localc1.h.setLatestEventInfo(this.a, localc1.b, this.a.getString(2131428333), FileDownloadService.c(this.a));
      FileDownloadService.a(this.a).notify(localc1.a, localc1.h);
      FileDownloadService.b(this.a).remove(localc1.b);
      this.a.stopService(FileDownloadService.d(this.a));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.software.recommand.a
 * JD-Core Version:    0.6.2
 */