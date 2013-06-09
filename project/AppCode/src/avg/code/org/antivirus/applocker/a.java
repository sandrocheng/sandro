package org.antivirus.applocker;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.antivirus.Strings;
import org.antivirus.core.Logger;

public final class a
{
  public static boolean a = false;
  private final int b = 300000;
  private final int c = 600000;
  private final String d = "lock";
  private String e = null;
  private String f = null;
  private String g = null;
  private long h = 0L;
  private long i = 0L;
  private boolean j = true;
  private final String k = AppBlockActivity.class.getCanonicalName();
  private HashMap l = new HashMap();

  public static Map a(Context paramContext)
  {
    return paramContext.getSharedPreferences("lock", 0).getAll();
  }

  public static void a(Context paramContext, String[] paramArrayOfString)
  {
    int m = 0;
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("lock", 0);
    SharedPreferences.Editor localEditor = localSharedPreferences.edit();
    Iterator localIterator = localSharedPreferences.getAll().keySet().iterator();
    int n = 0;
    if (localIterator.hasNext())
    {
      String str2 = (String)localIterator.next();
      if (str2 == null)
        break label182;
      localEditor.putBoolean(str2, false);
    }
    label182: for (int i3 = 1; ; i3 = n)
    {
      n = i3;
      break;
      if (paramArrayOfString != null)
      {
        int i2 = paramArrayOfString.length;
        i1 = n;
        while (m < i2)
        {
          String str1 = paramArrayOfString[m];
          if (str1 != null)
          {
            localEditor.putBoolean(str1, true);
            i1 = 1;
          }
          m++;
        }
      }
      int i1 = n;
      if (i1 != 0)
        localEditor.commit();
      Intent localIntent = new Intent(paramContext, AppBlockService.class);
      localIntent.putExtra("__SAC", 121);
      paramContext.startService(localIntent);
      return;
    }
  }

  // ERROR //
  public static int d(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 138	org/antivirus/applocker/a:a	(Landroid/content/Context;)Ljava/util/Map;
    //   4: astore_1
    //   5: iconst_1
    //   6: anewarray 107	java/lang/String
    //   9: dup
    //   10: iconst_0
    //   11: ldc 140
    //   13: aastore
    //   14: astore_2
    //   15: new 118	android/content/Intent
    //   18: dup
    //   19: ldc 142
    //   21: aconst_null
    //   22: invokespecial 145	android/content/Intent:<init>	(Ljava/lang/String;Landroid/net/Uri;)V
    //   25: astore_3
    //   26: aload_3
    //   27: ldc 147
    //   29: invokevirtual 151	android/content/Intent:addCategory	(Ljava/lang/String;)Landroid/content/Intent;
    //   32: pop
    //   33: aload_0
    //   34: invokevirtual 155	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   37: astore 7
    //   39: aload 7
    //   41: aload_3
    //   42: iconst_0
    //   43: invokevirtual 161	android/content/pm/PackageManager:queryIntentActivities	(Landroid/content/Intent;I)Ljava/util/List;
    //   46: invokeinterface 167 1 0
    //   51: astore 8
    //   53: aload 7
    //   55: new 118	android/content/Intent
    //   58: dup
    //   59: ldc 169
    //   61: invokespecial 172	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   64: iconst_0
    //   65: invokevirtual 161	android/content/pm/PackageManager:queryIntentActivities	(Landroid/content/Intent;I)Ljava/util/List;
    //   68: astore 9
    //   70: aload 9
    //   72: invokeinterface 176 1 0
    //   77: ifle +228 -> 305
    //   80: aload 9
    //   82: iconst_0
    //   83: invokeinterface 180 2 0
    //   88: checkcast 182	android/content/pm/ResolveInfo
    //   91: getfield 186	android/content/pm/ResolveInfo:activityInfo	Landroid/content/pm/ActivityInfo;
    //   94: getfield 191	android/content/pm/ActivityInfo:packageName	Ljava/lang/String;
    //   97: astore 17
    //   99: aload_1
    //   100: ifnull +205 -> 305
    //   103: aload_1
    //   104: invokeinterface 89 1 0
    //   109: aload 17
    //   111: invokeinterface 195 2 0
    //   116: ifeq +189 -> 305
    //   119: aload_1
    //   120: aload 17
    //   122: invokeinterface 198 2 0
    //   127: checkcast 200	java/lang/Boolean
    //   130: invokevirtual 203	java/lang/Boolean:booleanValue	()Z
    //   133: istore 18
    //   135: iload 18
    //   137: ifeq +168 -> 305
    //   140: iconst_1
    //   141: istore 5
    //   143: aload 8
    //   145: invokeinterface 206 1 0
    //   150: ifeq +134 -> 284
    //   153: aload 8
    //   155: invokeinterface 207 1 0
    //   160: checkcast 182	android/content/pm/ResolveInfo
    //   163: astore 10
    //   165: aload 10
    //   167: getfield 186	android/content/pm/ResolveInfo:activityInfo	Landroid/content/pm/ActivityInfo;
    //   170: getfield 191	android/content/pm/ActivityInfo:packageName	Ljava/lang/String;
    //   173: astore 11
    //   175: aload 10
    //   177: getfield 186	android/content/pm/ResolveInfo:activityInfo	Landroid/content/pm/ActivityInfo;
    //   180: getfield 210	android/content/pm/ActivityInfo:name	Ljava/lang/String;
    //   183: pop
    //   184: iconst_0
    //   185: istore 13
    //   187: iload 13
    //   189: aload_2
    //   190: arraylength
    //   191: if_icmpge +108 -> 299
    //   194: aload 11
    //   196: aload_2
    //   197: iload 13
    //   199: aaload
    //   200: invokevirtual 213	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   203: ifeq +65 -> 268
    //   206: iconst_1
    //   207: istore 14
    //   209: iload 14
    //   211: ifne +81 -> 292
    //   214: aload_1
    //   215: ifnull +77 -> 292
    //   218: aload_1
    //   219: invokeinterface 89 1 0
    //   224: aload 11
    //   226: invokeinterface 195 2 0
    //   231: ifeq +61 -> 292
    //   234: aload_1
    //   235: aload 11
    //   237: invokeinterface 198 2 0
    //   242: checkcast 200	java/lang/Boolean
    //   245: invokevirtual 203	java/lang/Boolean:booleanValue	()Z
    //   248: istore 16
    //   250: iload 16
    //   252: ifeq +40 -> 292
    //   255: iload 5
    //   257: iconst_1
    //   258: iadd
    //   259: istore 15
    //   261: iload 15
    //   263: istore 5
    //   265: goto -122 -> 143
    //   268: iinc 13 1
    //   271: goto -84 -> 187
    //   274: astore 4
    //   276: iconst_0
    //   277: istore 5
    //   279: aload 4
    //   281: invokestatic 219	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   284: iload 5
    //   286: ireturn
    //   287: astore 4
    //   289: goto -10 -> 279
    //   292: iload 5
    //   294: istore 15
    //   296: goto -35 -> 261
    //   299: iconst_0
    //   300: istore 14
    //   302: goto -93 -> 209
    //   305: iconst_0
    //   306: istore 5
    //   308: goto -165 -> 143
    //
    // Exception table:
    //   from	to	target	type
    //   15	135	274	java/lang/Exception
    //   143	250	287	java/lang/Exception
  }

  private static String[] e(Context paramContext)
  {
    String[] arrayOfString = new String[2];
    try
    {
      List localList = ((ActivityManager)paramContext.getSystemService("activity")).getRunningTasks(1);
      if ((localList != null) && (localList.size() > 0))
      {
        arrayOfString[0] = ((ActivityManager.RunningTaskInfo)localList.get(0)).topActivity.getPackageName();
        arrayOfString[1] = ((ActivityManager.RunningTaskInfo)localList.get(0)).topActivity.getClassName();
      }
      return arrayOfString;
    }
    catch (Exception localException)
    {
      while (true)
        Logger.log(localException);
    }
  }

  public final void a()
  {
    if (a)
      this.i = 0L;
  }

  public final void a(String paramString)
  {
    this.g = paramString;
    try
    {
      this.l.put(paramString, Long.valueOf(System.currentTimeMillis()));
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Logger.log(localException);
    }
  }

  public final void a(boolean paramBoolean)
  {
    this.j = paramBoolean;
  }

  public final boolean b(Context paramContext)
  {
    Map localMap = a(paramContext);
    boolean bool;
    if (!this.j)
      bool = false;
    while (true)
    {
      return bool;
      if (localMap == null)
      {
        bool = false;
      }
      else
      {
        Iterator localIterator = localMap.values().iterator();
        while (true)
          if (localIterator.hasNext())
            if (((Boolean)localIterator.next()).booleanValue())
            {
              bool = true;
              break;
            }
        bool = false;
      }
    }
  }

  public final void c(Context paramContext)
  {
    if (!this.j);
    while (true)
    {
      return;
      String[] arrayOfString = e(paramContext);
      if ((arrayOfString == null) || (arrayOfString[0] == null) || (arrayOfString[1] == null) || (arrayOfString[0].length() <= 0) || (arrayOfString[1].length() <= 0))
        continue;
      if ((arrayOfString[0].equals(paramContext.getPackageName())) && (arrayOfString[1].equals(this.k)))
      {
        this.f = paramContext.getPackageName();
        continue;
      }
      if ((arrayOfString[0].equals(this.f)) || (arrayOfString[0].equals(this.g)))
        continue;
      String str = arrayOfString[0];
      try
      {
        label124: long l1;
        if (!this.j)
        {
          bool1 = false;
          l1 = System.currentTimeMillis();
          boolean bool2 = this.j;
          m = 0;
          if (bool2)
            break label301;
        }
        while (true)
        {
          if ((m != 0) && (bool1))
          {
            long l2 = l1 - this.i;
            if ((a) && (l2 <= 300000L))
              break label397;
            this.i = l1;
            Intent localIntent = new Intent(paramContext, AppBlockActivity.class);
            localIntent.setFlags(402653184);
            localIntent.putExtra("blocked_app", str);
            localIntent.putExtra("title", Strings.getString(2131296323));
            localIntent.putExtra("firest_edit_text", Strings.getString(2131296327));
            paramContext.startActivity(localIntent);
          }
          this.g = null;
          break;
          if (TextUtils.isEmpty(str))
          {
            bool1 = false;
            break label124;
          }
          SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("lock", 0);
          if (TextUtils.isEmpty(str))
            break label405;
          bool1 = localSharedPreferences.getBoolean(str, false);
          break label124;
          label301: if (this.e == null)
          {
            this.f = str;
            this.h = l1;
            m = 1;
          }
          else
          {
            if ((this.f == null) || (!str.equals(this.f)))
              break label386;
            boolean bool3 = l1 - this.h < 600000L;
            m = 0;
            if (bool3)
              m = 1;
            this.h = l1;
          }
        }
      }
      catch (Exception localException)
      {
        while (true)
        {
          Logger.log(localException);
          continue;
          label386: this.f = str;
          int m = 1;
          continue;
          label397: a(str);
          continue;
          label405: boolean bool1 = false;
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.applocker.a
 * JD-Core Version:    0.6.2
 */