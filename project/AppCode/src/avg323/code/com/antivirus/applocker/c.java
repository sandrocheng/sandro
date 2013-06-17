package com.antivirus.applocker;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.antivirus.m;
import com.avg.toolkit.f.a;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class c
{
  private static long h = 0L;
  private final int a = 300000;
  private final int b = 600000;
  private final String c = "lock";
  private final String d = "timer";
  private String e = null;
  private String f = null;
  private String g = null;
  private boolean i = true;
  private final String j = AppBlockActivity.class.getCanonicalName();
  private HashMap k = new HashMap();

  private void a(Context paramContext, String paramString1, String paramString2)
  {
    try
    {
      boolean bool = b(paramContext, paramString1, paramString2);
      long l1 = System.currentTimeMillis();
      if ((a(paramString1, l1)) && (bool))
      {
        long l2 = l1 - paramContext.getSharedPreferences("timer", 0).getLong("timer", 0L);
        if ((!com.antivirus.c.q()) || (l2 > 300000L))
        {
          Intent localIntent = new Intent(paramContext, AppBlockActivity.class);
          localIntent.setFlags(402653184);
          localIntent.putExtra("blocked_app", paramString1);
          localIntent.putExtra("title", m.a(paramContext, 2131296531));
          localIntent.putExtra("firest_edit_text", m.a(paramContext, 2131296534));
          paramContext.startActivity(localIntent);
        }
        else
        {
          a(paramString1);
        }
      }
    }
    catch (Exception localException)
    {
      a.a(localException);
    }
  }

  private boolean a(String paramString, long paramLong)
  {
    boolean bool = true;
    if (!this.i)
      bool = false;
    while (true)
    {
      return bool;
      if (this.e != null)
        break;
      this.f = paramString;
      h = paramLong;
    }
    if ((this.f != null) && (paramString.equals(this.f)))
      if (paramLong - h <= 600000L);
    while (true)
    {
      h = paramLong;
      break;
      bool = false;
      continue;
      this.f = paramString;
    }
  }

  private boolean b(Context paramContext, String paramString1, String paramString2)
  {
    boolean bool1 = this.i;
    boolean bool2 = false;
    if (!bool1);
    while (true)
    {
      return bool2;
      boolean bool3 = TextUtils.isEmpty(paramString1);
      bool2 = false;
      if (!bool3)
      {
        SharedPreferences localSharedPreferences = i(paramContext);
        boolean bool4 = TextUtils.isEmpty(paramString1);
        bool2 = false;
        if (!bool4)
          bool2 = localSharedPreferences.getBoolean(paramString1, false);
      }
    }
  }

  private String[] h(Context paramContext)
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
        a.a(localException);
    }
  }

  private SharedPreferences i(Context paramContext)
  {
    return paramContext.getSharedPreferences("lock", 0);
  }

  public Map a(Context paramContext)
  {
    return i(paramContext).getAll();
  }

  public void a(long paramLong, Context paramContext)
  {
    paramContext.getSharedPreferences("timer", 0).edit().putLong("timer", System.currentTimeMillis()).commit();
  }

  public void a(Context paramContext, String[] paramArrayOfString)
  {
    int m = 0;
    SharedPreferences localSharedPreferences = i(paramContext);
    SharedPreferences.Editor localEditor = localSharedPreferences.edit();
    Iterator localIterator = localSharedPreferences.getAll().keySet().iterator();
    int n = 0;
    if (localIterator.hasNext())
    {
      String str2 = (String)localIterator.next();
      if (str2 == null)
        break label183;
      localEditor.putBoolean(str2, false);
    }
    label183: for (int i3 = 1; ; i3 = n)
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

  public void a(String paramString)
  {
    this.g = paramString;
    try
    {
      this.k.put(paramString, Long.valueOf(System.currentTimeMillis()));
      return;
    }
    catch (Exception localException)
    {
      while (true)
        a.a(localException);
    }
  }

  public void a(boolean paramBoolean)
  {
    this.i = paramBoolean;
  }

  public boolean b(Context paramContext)
  {
    Map localMap = a(paramContext);
    boolean bool;
    if (!this.i)
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

  public void c(Context paramContext)
  {
    if (!this.i);
    while (true)
    {
      return;
      String[] arrayOfString = h(paramContext);
      if ((arrayOfString != null) && (arrayOfString[0] != null) && (arrayOfString[1] != null) && (arrayOfString[0].length() > 0) && (arrayOfString[1].length() > 0))
        if ((arrayOfString[0].equals(paramContext.getPackageName())) && (arrayOfString[1].equals(this.j)))
        {
          this.f = paramContext.getPackageName();
        }
        else if ((!arrayOfString[0].equals(this.f)) && (!arrayOfString[0].equals(this.g)))
        {
          a(paramContext, arrayOfString[0], arrayOfString[1]);
          this.g = null;
        }
    }
  }

  public boolean d(Context paramContext)
  {
    if ((com.antivirus.c.q()) && (e(paramContext)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean e(Context paramContext)
  {
    long l = paramContext.getSharedPreferences("timer", 0).getLong("timer", 0L);
    boolean bool1 = System.currentTimeMillis() - l < 300000L;
    boolean bool2 = false;
    if (bool1)
      bool2 = true;
    return bool2;
  }

  public void f(Context paramContext)
  {
    if (com.antivirus.c.q())
      paramContext.getSharedPreferences("timer", 0).edit().putLong("timer", 0L).commit();
  }

  // ERROR //
  public int g(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokevirtual 266	com/antivirus/applocker/c:a	(Landroid/content/Context;)Ljava/util/Map;
    //   5: astore_2
    //   6: iconst_1
    //   7: anewarray 140	java/lang/String
    //   10: dup
    //   11: iconst_0
    //   12: ldc_w 292
    //   15: aastore
    //   16: astore_3
    //   17: new 101	android/content/Intent
    //   20: dup
    //   21: ldc_w 294
    //   24: aconst_null
    //   25: invokespecial 297	android/content/Intent:<init>	(Ljava/lang/String;Landroid/net/Uri;)V
    //   28: astore 4
    //   30: aload 4
    //   32: ldc_w 299
    //   35: invokevirtual 303	android/content/Intent:addCategory	(Ljava/lang/String;)Landroid/content/Intent;
    //   38: pop
    //   39: aload_1
    //   40: invokevirtual 307	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   43: astore 8
    //   45: aload 8
    //   47: aload 4
    //   49: iconst_0
    //   50: invokevirtual 313	android/content/pm/PackageManager:queryIntentActivities	(Landroid/content/Intent;I)Ljava/util/List;
    //   53: invokeinterface 317 1 0
    //   58: astore 9
    //   60: aload 8
    //   62: new 101	android/content/Intent
    //   65: dup
    //   66: ldc_w 319
    //   69: invokespecial 321	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   72: iconst_0
    //   73: invokevirtual 313	android/content/pm/PackageManager:queryIntentActivities	(Landroid/content/Intent;I)Ljava/util/List;
    //   76: astore 10
    //   78: aload 10
    //   80: invokeinterface 178 1 0
    //   85: iconst_1
    //   86: if_icmplt +228 -> 314
    //   89: aload 10
    //   91: iconst_0
    //   92: invokeinterface 182 2 0
    //   97: checkcast 323	android/content/pm/ResolveInfo
    //   100: getfield 327	android/content/pm/ResolveInfo:activityInfo	Landroid/content/pm/ActivityInfo;
    //   103: getfield 332	android/content/pm/ActivityInfo:packageName	Ljava/lang/String;
    //   106: astore 18
    //   108: aload_2
    //   109: ifnull +205 -> 314
    //   112: aload_2
    //   113: invokeinterface 222 1 0
    //   118: aload 18
    //   120: invokeinterface 335 2 0
    //   125: ifeq +189 -> 314
    //   128: aload_2
    //   129: aload 18
    //   131: invokeinterface 338 2 0
    //   136: checkcast 275	java/lang/Boolean
    //   139: invokevirtual 278	java/lang/Boolean:booleanValue	()Z
    //   142: istore 19
    //   144: iload 19
    //   146: ifeq +168 -> 314
    //   149: iconst_1
    //   150: istore 6
    //   152: aload 9
    //   154: invokeinterface 341 1 0
    //   159: ifeq +134 -> 293
    //   162: aload 9
    //   164: invokeinterface 342 1 0
    //   169: checkcast 323	android/content/pm/ResolveInfo
    //   172: astore 11
    //   174: aload 11
    //   176: getfield 327	android/content/pm/ResolveInfo:activityInfo	Landroid/content/pm/ActivityInfo;
    //   179: getfield 332	android/content/pm/ActivityInfo:packageName	Ljava/lang/String;
    //   182: astore 12
    //   184: aload 11
    //   186: getfield 327	android/content/pm/ResolveInfo:activityInfo	Landroid/content/pm/ActivityInfo;
    //   189: getfield 345	android/content/pm/ActivityInfo:name	Ljava/lang/String;
    //   192: pop
    //   193: iconst_0
    //   194: istore 14
    //   196: iload 14
    //   198: aload_3
    //   199: arraylength
    //   200: if_icmpge +108 -> 308
    //   203: aload 12
    //   205: aload_3
    //   206: iload 14
    //   208: aaload
    //   209: invokevirtual 347	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   212: ifeq +65 -> 277
    //   215: iconst_1
    //   216: istore 15
    //   218: iload 15
    //   220: ifne +81 -> 301
    //   223: aload_2
    //   224: ifnull +77 -> 301
    //   227: aload_2
    //   228: invokeinterface 222 1 0
    //   233: aload 12
    //   235: invokeinterface 335 2 0
    //   240: ifeq +61 -> 301
    //   243: aload_2
    //   244: aload 12
    //   246: invokeinterface 338 2 0
    //   251: checkcast 275	java/lang/Boolean
    //   254: invokevirtual 278	java/lang/Boolean:booleanValue	()Z
    //   257: istore 17
    //   259: iload 17
    //   261: ifeq +40 -> 301
    //   264: iload 6
    //   266: iconst_1
    //   267: iadd
    //   268: istore 16
    //   270: iload 16
    //   272: istore 6
    //   274: goto -122 -> 152
    //   277: iinc 14 1
    //   280: goto -84 -> 196
    //   283: astore 5
    //   285: iconst_0
    //   286: istore 6
    //   288: aload 5
    //   290: invokestatic 138	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   293: iload 6
    //   295: ireturn
    //   296: astore 5
    //   298: goto -10 -> 288
    //   301: iload 6
    //   303: istore 16
    //   305: goto -35 -> 270
    //   308: iconst_0
    //   309: istore 15
    //   311: goto -93 -> 218
    //   314: iconst_0
    //   315: istore 6
    //   317: goto -165 -> 152
    //
    // Exception table:
    //   from	to	target	type
    //   17	144	283	java/lang/Exception
    //   152	259	296	java/lang/Exception
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.applocker.c
 * JD-Core Version:    0.6.2
 */