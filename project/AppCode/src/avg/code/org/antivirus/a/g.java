package org.antivirus.a;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Message;
import android.webkit.URLUtil;
import java.util.Map;
import org.antivirus.AVSettings;
import org.antivirus.Strings;
import org.antivirus.core.Logger;
import org.antivirus.core.a.q;
import org.antivirus.core.a.v;
import org.antivirus.core.b.a;
import org.antivirus.ui.versionUpdate.VersionUpdateDialog;

public class g extends v
{
  public final boolean a()
  {
    return false;
  }

  public final boolean a(Context paramContext)
  {
    String str = new org.antivirus.core.b.g(paramContext).c();
    if (str.length() > 4)
      str = str.substring(0, -4 + str.length());
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = String.valueOf(this.h.o);
    arrayOfObject[1] = String.valueOf(this.h.p);
    arrayOfObject[2] = str;
    this.f = arrayOfObject;
    return true;
  }

  public final boolean a(Context paramContext, Message paramMessage)
  {
    return true;
  }

  public final boolean a(Context paramContext, Object paramObject)
  {
    boolean bool;
    if (!(paramObject instanceof Map))
      bool = false;
    while (true)
    {
      return bool;
      Map localMap = (Map)paramObject;
      int i;
      String str1;
      try
      {
        i = Integer.parseInt((String)localMap.get("Version"));
        if (i <= Integer.parseInt("174757"))
          break label389;
        str1 = (String)localMap.get("Type");
        if ((str1.equals("DIRECT")) || (str1.equals("EXTERNAL")))
          break label96;
        bool = false;
      }
      catch (Exception localException1)
      {
        Logger.log(localException1);
        bool = false;
      }
      continue;
      label96: String str2 = (String)localMap.get("URL");
      if ((str2 == null) || (((!str1.equals("EXTERNAL")) || (!str2.matches("market://.*"))) && ((!URLUtil.isValidUrl(str2)) || ((!URLUtil.isHttpUrl(str2)) && (!URLUtil.isHttpsUrl(str2))))))
      {
        bool = false;
      }
      else
      {
        try
        {
          NotificationManager localNotificationManager = (NotificationManager)paramContext.getSystemService("notification");
          Notification localNotification = new Notification(2130837585, Strings.getString(2131296585), System.currentTimeMillis());
          localNotification.flags = (0x10 | localNotification.flags);
          if (str1.equals("DIRECT"))
          {
            Intent localIntent1 = new Intent(paramContext, VersionUpdateDialog.class);
            localIntent1.putExtra("url", str2);
            localIntent1.putExtra("revision", i);
            localIntent1.putExtra("from_notification", 1);
            localIntent1.setFlags(268435456);
            PendingIntent localPendingIntent1 = PendingIntent.getActivity(paramContext, 0, localIntent1, 134217728);
            localNotification.setLatestEventInfo(paramContext, Strings.getString(2131296583), Strings.getString(2131296584), localPendingIntent1);
          }
          while (true)
          {
            localNotificationManager.notify(2001, localNotification);
            break;
            Intent localIntent2 = new Intent("android.intent.action.VIEW");
            localIntent2.setData(Uri.parse(str2));
            localIntent2.setFlags(268435456);
            PendingIntent localPendingIntent2 = PendingIntent.getActivity(paramContext, 0, localIntent2, 134217728);
            localNotification.setLatestEventInfo(paramContext, Strings.getString(2131296583), Strings.getString(2131296589), localPendingIntent2);
            AVSettings.setVersionUpdateNotificationLastTime(System.currentTimeMillis());
          }
        }
        catch (Exception localException2)
        {
          Logger.log(localException2);
          bool = false;
        }
        continue;
        label389: bool = true;
      }
    }
  }

  public final q b()
  {
    return q.c;
  }

  public final int c()
  {
    return 1121;
  }

  public final String d()
  {
    return "AVVersionsArchive.getLatestVersion2";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.a.g
 * JD-Core Version:    0.6.2
 */