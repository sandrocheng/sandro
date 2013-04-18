package com.keniu.security.i;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.Toast;
import com.keniu.security.d.d;
import com.keniu.security.malware.AppMettle;
import com.keniu.security.malware.TransparentVircusAcitvity;
import java.io.File;

final class p extends Handler
{
  p(o paramo)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    String str1 = o.d(this.a).getString(2131429172);
    switch (paramMessage.what)
    {
    default:
    case 1:
      do
        return;
      while (paramMessage.arg1 != 1);
      String str22;
      String str20;
      Object localObject6;
      String str17;
      switch (paramMessage.arg2)
      {
      default:
        str22 = "";
        str20 = "";
        localObject6 = null;
        str17 = null;
      case 0:
      case 1:
      }
      Intent localIntent2;
      while (true)
      {
        Notification localNotification2 = new Notification(2130837753, str20, System.currentTimeMillis());
        localNotification2.flags = 16;
        localIntent2 = new Intent();
        if (!o.a((String)localObject6))
          break label574;
        String str24 = str22 + o.d(this.a).getString(2131429160);
        Uri localUri = Uri.fromFile(new File((String)localObject6));
        localIntent2.setAction("android.intent.action.VIEW");
        localIntent2.setDataAndType(localUri, "application/vnd.android.package-archive");
        str23 = str24;
        PendingIntent localPendingIntent2 = PendingIntent.getActivity(o.d(this.a), 0, localIntent2, 0);
        localNotification2.setLatestEventInfo(o.d(this.a), str1, str23, localPendingIntent2);
        o.e(this.a).notify(o.f, localNotification2);
        o.f(this.a).postDelayed(new q(this), 10000L);
        break;
        b localb2 = (b)paramMessage.obj;
        str17 = localb2.c;
        String str25 = localb2.a;
        String str26 = o.d(this.a).getString(2131429157);
        Object[] arrayOfObject7 = new Object[3];
        arrayOfObject7[0] = localb2.b;
        arrayOfObject7[1] = localb2.b;
        arrayOfObject7[2] = o.d(this.a).getString(2131429163);
        str20 = String.format(str26, arrayOfObject7);
        String str27 = o.d(this.a).getString(2131429158);
        Object[] arrayOfObject8 = new Object[1];
        arrayOfObject8[0] = localb2.b;
        str22 = String.format(str27, arrayOfObject8);
        localObject6 = str25;
        continue;
        AppMettle localAppMettle2 = (AppMettle)paramMessage.obj;
        str17 = localAppMettle2.a.packageName;
        String str18 = localAppMettle2.a.publicSourceDir;
        String str19 = o.d(this.a).getString(2131429157);
        Object[] arrayOfObject5 = new Object[3];
        arrayOfObject5[0] = localAppMettle2.a.loadLabel(o.c(this.a));
        arrayOfObject5[1] = localAppMettle2.a.loadLabel(o.c(this.a));
        arrayOfObject5[2] = o.d(this.a).getString(2131429163);
        str20 = String.format(str19, arrayOfObject5);
        String str21 = o.d(this.a).getString(2131429158);
        Object[] arrayOfObject6 = new Object[1];
        arrayOfObject6[0] = localAppMettle2.a.loadLabel(o.c(this.a));
        str22 = String.format(str21, arrayOfObject6);
        localObject6 = str18;
      }
      label574: String str23 = str22 + o.d(this.a).getString(2131429159);
      localIntent2.setAction("android.intent.action.MAIN");
      localIntent2.addCategory("android.intent.category.LAUNCHER");
      if (o.a(this.a, str17) != null);
      for (ComponentName localComponentName = new ComponentName(str17, o.a(this.a, str17)); ; localComponentName = null)
      {
        localIntent2.setComponent(localComponentName);
        break;
        Toast.makeText(o.d(this.a), "无法启动此应用", 0).show();
      }
    case 0:
    }
    Object localObject3;
    Object localObject2;
    Object localObject4;
    String str7;
    Object localObject5;
    Object localObject1;
    switch (paramMessage.arg2)
    {
    default:
      localObject3 = null;
      localObject2 = null;
      localObject4 = "";
      str7 = "";
      localObject5 = null;
      localObject1 = null;
    case 0:
    case 1:
    }
    while (true)
    {
      Notification localNotification1 = new Notification(2130837752, str7, System.currentTimeMillis());
      localNotification1.flags = 34;
      Intent localIntent1 = new Intent(o.d(this.a), TransparentVircusAcitvity.class);
      Bundle localBundle = new Bundle();
      localBundle.putInt("notificationID", o.e);
      localBundle.putString("packName", (String)localObject2);
      localBundle.putInt("watcherModel", paramMessage.arg1);
      localBundle.putString("malName", (String)localObject1);
      localBundle.putString("softName", (String)localObject5);
      localBundle.putString("filePath", (String)localObject3);
      localIntent1.putExtras(localBundle);
      localIntent1.addFlags(268435456);
      PendingIntent localPendingIntent1 = PendingIntent.getActivity(o.d(this.a), o.e, localIntent1, 0);
      localNotification1.setLatestEventInfo(o.d(this.a), str1, (CharSequence)localObject4, localPendingIntent1);
      o.e(this.a).notify(o.e, localNotification1);
      break;
      b localb1 = (b)paramMessage.obj;
      String str10 = localb1.c;
      String str11 = localb1.d;
      String str12 = localb1.b;
      String str13 = localb1.a;
      String str14 = o.d(this.a).getString(2131429157);
      Object[] arrayOfObject3 = new Object[3];
      arrayOfObject3[0] = localb1.b;
      arrayOfObject3[1] = localb1.b;
      arrayOfObject3[2] = o.d(this.a).getString(2131429162);
      str7 = String.format(str14, arrayOfObject3);
      String str15 = o.d(this.a).getString(2131429161);
      Object[] arrayOfObject4 = new Object[1];
      arrayOfObject4[0] = localb1.b;
      String str16 = String.format(str15, arrayOfObject4);
      localObject2 = str10;
      localObject1 = str11;
      localObject3 = str13;
      localObject4 = str16;
      localObject5 = str12;
      continue;
      AppMettle localAppMettle1 = (AppMettle)paramMessage.obj;
      String str2 = localAppMettle1.a.packageName;
      String str3 = localAppMettle1.b.t;
      String str4 = (String)localAppMettle1.a.loadLabel(o.c(this.a));
      String str5 = localAppMettle1.a.publicSourceDir;
      String str6 = o.d(this.a).getString(2131429157);
      Object[] arrayOfObject1 = new Object[3];
      arrayOfObject1[0] = localAppMettle1.a.loadLabel(o.c(this.a));
      arrayOfObject1[1] = localAppMettle1.a.loadLabel(o.c(this.a));
      arrayOfObject1[2] = o.d(this.a).getString(2131429162);
      str7 = String.format(str6, arrayOfObject1);
      String str8 = o.d(this.a).getString(2131429161);
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = localAppMettle1.a.loadLabel(o.c(this.a));
      String str9 = String.format(str8, arrayOfObject2);
      localObject1 = str3;
      localObject2 = str2;
      localObject3 = str5;
      localObject4 = str9;
      localObject5 = str4;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.i.p
 * JD-Core Version:    0.6.2
 */