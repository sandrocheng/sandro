package com.antivirus.apploader;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import java.io.File;
import java.util.HashMap;
import java.util.TreeMap;

class b extends c
{
  b(a parama, Context paramContext)
  {
    super(parama, paramContext);
  }

  private PendingIntent a(AlarmManager paramAlarmManager)
  {
    Intent localIntent = new Intent(this.b, AppLoaderAlarmReceiver.class);
    localIntent.setAction("com.droidsec.apploaderalarm");
    PendingIntent localPendingIntent = PendingIntent.getBroadcast(this.b, 0, localIntent, 134217728);
    paramAlarmManager.cancel(localPendingIntent);
    return localPendingIntent;
  }

  private void a()
  {
    AlarmManager localAlarmManager = (AlarmManager)this.b.getSystemService("alarm");
    PendingIntent localPendingIntent = a(localAlarmManager);
    localAlarmManager.setInexactRepeating(1, AppLoaderService.a(), 86400000L, localPendingIntent);
  }

  private void a(long paramLong)
  {
    AlarmManager localAlarmManager = (AlarmManager)this.b.getSystemService("alarm");
    PendingIntent localPendingIntent = a(localAlarmManager);
    localAlarmManager.setInexactRepeating(1, paramLong + System.currentTimeMillis(), 86400000L, localPendingIntent);
  }

  private boolean b()
  {
    try
    {
      ConnectivityManager localConnectivityManager = (ConnectivityManager)this.b.getSystemService("connectivity");
      if (localConnectivityManager != null)
      {
        NetworkInfo localNetworkInfo = localConnectivityManager.getActiveNetworkInfo();
        if ((localNetworkInfo != null) && ((localNetworkInfo.getType() == 1) || (localNetworkInfo.getType() == 9)))
        {
          bool2 = localNetworkInfo.isConnected();
          Intent localIntent = this.b.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
          if ((localIntent != null) && (localIntent.getIntExtra("plugged", 0) != 0))
          {
            i = 1;
            bool1 = false;
            if (bool2)
            {
              bool1 = false;
              if (i != 0)
                bool1 = true;
            }
            return bool1;
          }
        }
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        boolean bool1 = false;
        continue;
        int i = 0;
        continue;
        boolean bool2 = false;
      }
    }
  }

  public void run()
  {
    while (true)
    {
      f localf;
      int i;
      HashMap localHashMap;
      Object localObject1;
      int n;
      try
      {
        localf = new f();
        if (!"no".equals(localf.a(this.b, "nevercomunicate", "no")))
          break label706;
        if (!localf.a(this.b))
          localf.d(this.b);
        i = Integer.parseInt(localf.a(this.b, "trys", "0"));
        if ((b()) && (i < 5))
        {
          TreeMap localTreeMap1 = localf.e(this.b);
          if ((localTreeMap1 == null) || (localTreeMap1.size() <= 0))
            break label726;
          localHashMap = new g().a(this.b, localTreeMap1);
          break label729;
          j = 0;
          if (localObject1 != null)
          {
            if (!"OK".equals(localObject1))
              continue;
            String str3 = (String)localHashMap.get("NextCommunication");
            if (str3 != null)
              localf.b(this.b, "nextcom", str3);
            String str4 = (String)localHashMap.get("APKsToSend");
            TreeMap localTreeMap2 = new TreeMap();
            if (str4 != null)
            {
              String[] arrayOfString1 = str4.split("\\|");
              if (arrayOfString1 != null)
              {
                int m = arrayOfString1.length;
                n = 0;
                if (n < m)
                {
                  String[] arrayOfString2 = arrayOfString1[n].split("~~");
                  if ((arrayOfString2 == null) || (arrayOfString2.length != 2) || (arrayOfString2[0] == null) || (arrayOfString2[1] == null) || (arrayOfString2[0].length() <= 0) || (arrayOfString2[1].length() <= 0))
                    break label741;
                  localTreeMap2.put(arrayOfString2[0], arrayOfString2[1]);
                  localTreeMap1.remove(arrayOfString2[0]);
                  break label741;
                  localObject1 = (String)localHashMap.get("Status");
                  continue;
                }
              }
            }
            if (localTreeMap1.size() > 0)
              localf.a(this.b, localTreeMap1, 1);
            int k = localTreeMap2.size();
            j = 0;
            if (k > 0)
              localf.a(this.b, localTreeMap2, 2);
          }
          if (!"no".equals(localf.a(this.b, "nevercomunicate", "no")))
            break label654;
          Object localObject2 = localf.b(this.b);
          localf.b(this.b, "trys", i + 1 + "");
          if ((TextUtils.isEmpty((CharSequence)localObject2)) || (!b()) || (j != 0))
            break label645;
          if (!TextUtils.isEmpty((CharSequence)localObject2))
          {
            File localFile = new File((String)localObject2);
            if (!d.a(this.b, localFile))
              break label639;
            localf.a(this.b, (String)localObject2);
            localf.b(this.b, "trys", "0");
            String str2 = localf.b(this.b);
            localObject2 = str2;
          }
          try
          {
            Thread.sleep(25000L);
          }
          catch (Exception localException2)
          {
          }
          continue;
          if ("ERROR".equals(localObject1))
          {
            j = 1;
            continue;
          }
          boolean bool = "DONOTCOMMAGAIN".equals(localObject1);
          j = 0;
          if (!bool)
            continue;
          localf.b(this.b, "nevercomunicate", "yes");
          localf.f(this.b);
          localf.g(this.b);
          a((AlarmManager)this.b.getSystemService("alarm"));
          j = 0;
          continue;
        }
      }
      catch (Exception localException1)
      {
        this.b.stopService(new Intent(this.b, AppLoaderService.class));
        return;
      }
      label639: int j = 1;
      continue;
      label645: localf.c(this.b);
      label654: if (i < 6)
      {
        String str1 = localf.a(this.b, "nextcom", "86400000");
        if ("86400000".equals(str1))
        {
          a();
        }
        else
        {
          a(Long.parseLong(str1));
          continue;
          label706: a((AlarmManager)this.b.getSystemService("alarm"));
          continue;
          label726: localHashMap = null;
          label729: if (localHashMap == null)
          {
            localObject1 = "DONOTCOMMAGAIN";
            continue;
            label741: n++;
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.apploader.b
 * JD-Core Version:    0.6.2
 */