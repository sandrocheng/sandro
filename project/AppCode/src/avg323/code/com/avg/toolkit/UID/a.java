package com.avg.toolkit.UID;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.os.Environment;
import android.provider.Settings.System;
import android.text.TextUtils;
import com.avg.toolkit.e;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Properties;
import java.util.UUID;
import java.util.zip.CRC32;
import java.util.zip.Checksum;

public class a
  implements e
{
  private static volatile String a;
  private static volatile boolean b;
  private WeakReference c;

  public a(Context paramContext)
  {
    this.c = new WeakReference(paramContext);
  }

  private String a(Context paramContext, File paramFile)
  {
    if (paramFile == null)
      paramFile = i(paramContext);
    try
    {
      boolean bool1 = paramFile.exists();
      localObject = null;
      if (bool1)
      {
        boolean bool2 = paramFile.canRead();
        localObject = null;
        if (bool2)
        {
          Properties localProperties = new Properties();
          localProperties.load(new FileInputStream(paramFile));
          str = localProperties.getProperty("uuid.id");
        }
      }
    }
    catch (Exception localException1)
    {
      try
      {
        String[] arrayOfString = c(str);
        boolean bool3 = a(arrayOfString);
        localObject = null;
        if (bool3);
        for (localObject = arrayOfString[1]; ; localObject = null)
        {
          return localObject;
          localException1 = localException1;
        }
      }
      catch (Exception localException2)
      {
        while (true)
        {
          String str;
          Object localObject = str;
        }
      }
    }
  }

  private void a(Context paramContext, boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = paramContext.getSharedPreferences("uuid.prefs", 0).edit();
    localEditor.putBoolean("uuid.is.alarm.set", paramBoolean);
    localEditor.commit();
  }

  private void a(String paramString)
  {
    a(paramString, true);
  }

  // ERROR //
  private void a(String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 24	com/avg/toolkit/UID/a:c	Ljava/lang/ref/WeakReference;
    //   4: invokevirtual 98	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   7: checkcast 69	android/content/Context
    //   10: astore_3
    //   11: aload_3
    //   12: ifnull +105 -> 117
    //   15: aload_3
    //   16: ldc 67
    //   18: iconst_0
    //   19: invokevirtual 73	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   22: invokeinterface 79 1 0
    //   27: astore 4
    //   29: aload 4
    //   31: ldc 54
    //   33: aload_1
    //   34: invokeinterface 102 3 0
    //   39: pop
    //   40: aload 4
    //   42: invokeinterface 90 1 0
    //   47: pop
    //   48: aload_0
    //   49: monitorenter
    //   50: aload_1
    //   51: putstatic 104	com/avg/toolkit/UID/a:a	Ljava/lang/String;
    //   54: aload_0
    //   55: monitorexit
    //   56: aload_3
    //   57: invokevirtual 108	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   60: ldc 110
    //   62: aload_3
    //   63: invokevirtual 114	android/content/Context:getPackageName	()Ljava/lang/String;
    //   66: invokevirtual 120	android/content/pm/PackageManager:checkPermission	(Ljava/lang/String;Ljava/lang/String;)I
    //   69: istore 8
    //   71: aload_0
    //   72: aload_3
    //   73: invokespecial 124	com/avg/toolkit/UID/a:f	(Landroid/content/Context;)Ljava/lang/String;
    //   76: astore 9
    //   78: aload_1
    //   79: aload 9
    //   81: invokevirtual 130	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   84: ifne +8 -> 92
    //   87: aload 9
    //   89: ifnull +3 -> 92
    //   92: iload_2
    //   93: ifne +24 -> 117
    //   96: aload 9
    //   98: ifnonnull +19 -> 117
    //   101: iload 8
    //   103: ifne +14 -> 117
    //   106: aload_3
    //   107: invokevirtual 134	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   110: ldc 136
    //   112: aload_1
    //   113: invokestatic 141	android/provider/Settings$System:putString	(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    //   116: pop
    //   117: return
    //   118: astore 7
    //   120: aload_0
    //   121: monitorexit
    //   122: aload 7
    //   124: athrow
    //   125: astore 10
    //   127: aload 10
    //   129: invokestatic 146	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   132: goto -15 -> 117
    //
    // Exception table:
    //   from	to	target	type
    //   50	56	118	finally
    //   120	122	118	finally
    //   106	117	125	java/lang/Exception
  }

  private boolean a(String[] paramArrayOfString)
  {
    boolean bool = false;
    if (paramArrayOfString != null)
      bool = b(paramArrayOfString[1]).equals(paramArrayOfString[0]);
    return bool;
  }

  private String b(String paramString)
  {
    String str = null;
    if (paramString != null)
    {
      CRC32 localCRC32 = new CRC32();
      byte[] arrayOfByte = paramString.getBytes();
      localCRC32.update(arrayOfByte, 0, arrayOfByte.length);
      str = Long.toHexString(localCRC32.getValue());
    }
    return str;
  }

  private void b(Context paramContext, String paramString)
  {
    int i = 1;
    File localFile1 = i(paramContext);
    File localFile2 = localFile1.getParentFile();
    if ((!localFile1.exists()) || (((localFile2 != null) && (localFile2.canWrite())) || ((localFile2 != null) || (j(paramContext) == null))));
    while (true)
    {
      if (i != 0);
      try
      {
        Properties localProperties = new Properties();
        String str = b(paramString);
        localProperties.put("uuid.id", str + '#' + paramString);
        localProperties.store(new FileOutputStream(localFile1), null);
        label117: return;
      }
      catch (Exception localException)
      {
        break label117;
      }
      i = 0;
    }
  }

  private void b(Context paramContext, boolean paramBoolean)
  {
    AlarmManager localAlarmManager = (AlarmManager)paramContext.getSystemService("alarm");
    PendingIntent localPendingIntent = h(paramContext);
    if (paramBoolean)
      localAlarmManager.set(0, 2500L + System.currentTimeMillis(), localPendingIntent);
    while (true)
    {
      a(paramContext, paramBoolean);
      return;
      localAlarmManager.cancel(localPendingIntent);
    }
  }

  private void c(Context paramContext)
  {
    Intent localIntent = new Intent("com.avg.action.send_your_id");
    localIntent.putExtra("com.avg.extra.key.whoami", paramContext.getPackageName());
    localIntent.setFlags(8);
    paramContext.sendBroadcast(localIntent);
  }

  private String[] c(String paramString)
  {
    boolean bool = TextUtils.isEmpty(paramString);
    String[] arrayOfString = null;
    if (!bool)
    {
      int i = paramString.indexOf('#');
      arrayOfString = null;
      if (i > 0)
      {
        arrayOfString = new String[2];
        arrayOfString[0] = paramString.substring(0, i);
        arrayOfString[1] = paramString.substring(i + 1);
      }
    }
    return arrayOfString;
  }

  private String d(Context paramContext)
  {
    return l(paramContext);
  }

  private String e(Context paramContext)
  {
    return paramContext.getSharedPreferences("uuid.prefs", 0).getString("uuid.id", null);
  }

  private String f(Context paramContext)
  {
    try
    {
      String str2 = Settings.System.getString(paramContext.getContentResolver(), "droidsecurity.uniqueid");
      str1 = str2;
      return str1;
    }
    catch (Exception localException)
    {
      while (true)
      {
        com.avg.toolkit.f.a.a(localException);
        String str1 = null;
      }
    }
  }

  private boolean g(Context paramContext)
  {
    return paramContext.getSharedPreferences("uuid.prefs", 0).getBoolean("uuid.is.alarm.set", false);
  }

  private PendingIntent h(Context paramContext)
  {
    Intent localIntent = new Intent(paramContext, SharedIdReceiver.class);
    localIntent.putExtra("com.avg.extra.key.whoami", paramContext.getPackageName());
    localIntent.putExtra("com.avg.extra.is_from_alarm", true);
    return PendingIntent.getBroadcast(paramContext, 0, localIntent, 1073741824);
  }

  private File i(Context paramContext)
  {
    int i;
    File localFile;
    if ((Environment.getExternalStorageState() != "mounted") || (Environment.getExternalStorageState() != "mounted_ro"))
    {
      i = 1;
      localObject = null;
      if (i != 0)
      {
        localFile = new File(Environment.getExternalStorageDirectory(), "/.avg");
        if ((!localFile.exists()) || (!localFile.isDirectory()))
          break label77;
      }
    }
    label77: for (Object localObject = new File(localFile, "/.avg"); ; localObject = localFile)
    {
      return localObject;
      i = 0;
      break;
    }
  }

  private String j(Context paramContext)
  {
    return a(paramContext, null);
  }

  private void k(Context paramContext)
  {
    boolean bool = false;
    if (paramContext == null)
      bool = true;
    try
    {
      if (a != null)
      {
        if (!bool)
          return;
        break label82;
        while (true)
        {
          if (localObject == null)
            localObject = d(paramContext);
          a((String)localObject, bool);
          b(paramContext, (String)localObject);
          if (bool)
            break;
          a(paramContext, false);
          break;
          String str = j(paramContext);
          localObject = str;
        }
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        Object localObject;
        com.avg.toolkit.f.a.a(localException);
        break;
        label82: if (bool)
          localObject = null;
      }
    }
  }

  private String l(Context paramContext)
  {
    return UUID.randomUUID().toString();
  }

  public String a()
  {
    while (true)
    {
      String str1;
      try
      {
        Context localContext = (Context)this.c.get();
        str1 = a;
        if ((str1 == null) && (localContext != null))
        {
          str2 = e(localContext);
          try
          {
            a = str2;
            return str2;
          }
          finally
          {
          }
        }
      }
      finally
      {
      }
      String str2 = str1;
    }
  }

  public void a(Context paramContext)
  {
    try
    {
      if (a != null)
      {
        String str = e(paramContext);
        Intent localIntent = new Intent("com.avg.action.take_id");
        localIntent.putExtra("com.avg.extra.key.whoami", paramContext.getPackageName());
        localIntent.putExtra("com.avg.extra.key.myid", str);
        paramContext.sendBroadcast(localIntent);
      }
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }

  public void a(Context paramContext, String paramString)
  {
    try
    {
      if ((a == null) && (!TextUtils.isEmpty(paramString)))
      {
        b(paramContext, false);
        a(paramString, false);
        b(paramContext, paramString);
      }
      else
      {
        com.avg.toolkit.f.a.a("either we already have a const id or intent was missing an ID");
      }
    }
    catch (Exception localException)
    {
      com.avg.toolkit.f.a.a(localException);
    }
  }

  public void a(Bundle paramBundle)
  {
  }

  public void a(com.avg.toolkit.e.a parama)
  {
  }

  public void a(List paramList)
  {
  }

  public void a(boolean paramBoolean)
  {
  }

  public int b()
  {
    return 19000;
  }

  public void b(Context paramContext)
  {
    k(paramContext);
  }

  public void b(Bundle paramBundle)
  {
    Context localContext = (Context)this.c.get();
    String str1;
    String str2;
    if (localContext != null)
    {
      str1 = paramBundle.getString("__SAD");
      str2 = paramBundle.getString("com.avg.extra.key.whoami");
      if (!paramBundle.getBoolean("com.avg.extra.is_from_alarm", false))
        break label48;
      b(localContext);
    }
    while (true)
    {
      return;
      label48: if ((str2 != null) && (!localContext.getPackageName().equals(str2)) && (str1 != null))
        if (str1.equals("com.avg.action.take_id"))
          a(localContext, paramBundle.getString("com.avg.extra.key.myid"));
        else if (str1.equals("com.avg.action.send_your_id"))
          a(localContext);
    }
  }

  public void b(com.avg.toolkit.e.a parama)
  {
  }

  public void c()
  {
    Context localContext = (Context)this.c.get();
    String str2;
    if (localContext != null)
    {
      b = false;
      String str1 = e(localContext);
      boolean bool = g(localContext);
      if ((str1 == null) && (!bool))
      {
        str2 = f(localContext);
        if (str2 != null)
          break label63;
        c(localContext);
        b(localContext, true);
      }
    }
    while (true)
    {
      return;
      label63: a(str2);
      b(localContext, str2);
    }
  }

  public void d()
  {
    while (true)
    {
      String str;
      int i;
      try
      {
        if ((this.c != null) && (this.c.get() != null) && (b != true))
        {
          Context localContext = (Context)this.c.get();
          b = true;
          str = j(localContext);
          if ((a == null) || (str == null))
            break label107;
          if (str.equals(a))
            break label111;
          break label107;
          if (i != 0)
            k(null);
        }
        else
        {
          return;
          i = 0;
          continue;
        }
        if (str == null)
          continue;
        a(str, false);
        continue;
      }
      finally
      {
      }
      label107: if (str == null)
        label111: i = 1;
    }
  }

  public void onDestroy()
  {
    a = null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.toolkit.UID.a
 * JD-Core Version:    0.6.2
 */