package com.tencent.tmsecure.common;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import bta;

public abstract class TMSBootReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    Intent localIntent = new Intent(paramContext, TMSApplication.getSecureServiceClass());
    TMSApplication.getApplicaionContext().startService(localIntent);
    new bta(paramContext).start();
  }

  public static final class a
  {
    private static final short[] a = { 64, 75, 72, 8, 86, 65, 65, 69, 68, 31, 27, 30, 1, 93, 94, 80, 90, 88, 80, 69, 86, 94, 92 };

    private static short[] a(short[] paramArrayOfShort)
    {
      short[] arrayOfShort = new short[paramArrayOfShort.length];
      int i = 35;
      int j = 0;
      while (true)
      {
        if (j >= paramArrayOfShort.length)
          return arrayOfShort;
        arrayOfShort[j] = ((short)(i ^ paramArrayOfShort[j]));
        j++;
        i = (char)(i + 1);
      }
    }

    public final boolean a(Context paramContext)
    {
      short[] arrayOfShort1 = a;
      StringBuffer localStringBuffer = new StringBuffer();
      short[] arrayOfShort2 = a(arrayOfShort1);
      int i = 0;
      while (true)
      {
        String str;
        if (i >= arrayOfShort2.length)
          str = localStringBuffer.toString();
        try
        {
          PackageInfo localPackageInfo = paramContext.getPackageManager().getPackageInfo(str, 0);
          bool = false;
          if (localPackageInfo != null)
            bool = true;
          return bool;
          localStringBuffer.append((char)arrayOfShort2[i]);
          i++;
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException)
        {
          while (true)
          {
            localNameNotFoundException.printStackTrace();
            boolean bool = false;
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.common.TMSBootReceiver
 * JD-Core Version:    0.6.2
 */