package com.antivirus.core.scanners;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ProviderInfo;
import android.content.pm.ServiceInfo;
import android.net.Uri;
import android.os.Handler;
import android.os.Messenger;
import com.antivirus.core.e.d;
import com.antivirus.core.e.e;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;

public class z extends k
{
  private ArrayList f;
  private ArrayList g;
  private String h;

  protected z(com.antivirus.core.b paramb, Handler paramHandler, Messenger paramMessenger, m paramm)
  {
    super(paramb, paramHandler, paramm, paramMessenger);
    this.a = new ScannerPackagesResult();
    if (this.c == null)
      this.c = new ScannerPackagesConfig();
    ScannerPackagesConfig localScannerPackagesConfig = (ScannerPackagesConfig)this.c;
    if (paramb.o());
    for (int i = 99999; ; i = 5)
    {
      localScannerPackagesConfig.d = i;
      this.h = paramb.a();
      if (this.h == null)
        this.h = "";
      this.h = this.h.toLowerCase();
      return;
    }
  }

  // ERROR //
  private String a(java.io.InputStream paramInputStream)
  {
    // Byte code:
    //   0: ldc 48
    //   2: astore_2
    //   3: aload_1
    //   4: ifnonnull +5 -> 9
    //   7: aload_2
    //   8: areturn
    //   9: new 58	java/io/BufferedReader
    //   12: dup
    //   13: new 60	java/io/InputStreamReader
    //   16: dup
    //   17: aload_1
    //   18: invokespecial 63	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   21: sipush 8192
    //   24: invokespecial 66	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   27: astore_3
    //   28: iconst_0
    //   29: istore 4
    //   31: iload 4
    //   33: ifne +49 -> 82
    //   36: aload_3
    //   37: invokevirtual 69	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   40: astore 12
    //   42: aload 12
    //   44: ifnull +38 -> 82
    //   47: aload 12
    //   49: ldc 71
    //   51: invokevirtual 75	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   54: ifeq -23 -> 31
    //   57: aload_3
    //   58: invokevirtual 69	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   61: astore 13
    //   63: aload 13
    //   65: ifnull +156 -> 221
    //   68: aload 13
    //   70: invokevirtual 78	java/lang/String:trim	()Ljava/lang/String;
    //   73: bipush 13
    //   75: invokevirtual 82	java/lang/String:substring	(I)Ljava/lang/String;
    //   78: astore_2
    //   79: goto +142 -> 221
    //   82: aload_3
    //   83: invokevirtual 85	java/io/BufferedReader:close	()V
    //   86: aload_1
    //   87: ifnull +7 -> 94
    //   90: aload_1
    //   91: invokevirtual 88	java/io/InputStream:close	()V
    //   94: iconst_0
    //   95: ifeq -88 -> 7
    //   98: aconst_null
    //   99: invokevirtual 85	java/io/BufferedReader:close	()V
    //   102: goto -95 -> 7
    //   105: astore 9
    //   107: aload 9
    //   109: invokestatic 93	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   112: goto -105 -> 7
    //   115: astore 5
    //   117: aconst_null
    //   118: astore_3
    //   119: aload 5
    //   121: invokestatic 93	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   124: aload_1
    //   125: ifnull +7 -> 132
    //   128: aload_1
    //   129: invokevirtual 88	java/io/InputStream:close	()V
    //   132: aload_3
    //   133: ifnull -126 -> 7
    //   136: aload_3
    //   137: invokevirtual 85	java/io/BufferedReader:close	()V
    //   140: goto -133 -> 7
    //   143: astore 9
    //   145: goto -38 -> 107
    //   148: astore 6
    //   150: aconst_null
    //   151: astore_3
    //   152: aload_1
    //   153: ifnull +7 -> 160
    //   156: aload_1
    //   157: invokevirtual 88	java/io/InputStream:close	()V
    //   160: aload_3
    //   161: ifnull +7 -> 168
    //   164: aload_3
    //   165: invokevirtual 85	java/io/BufferedReader:close	()V
    //   168: aload 6
    //   170: athrow
    //   171: astore 8
    //   173: aload 8
    //   175: invokestatic 93	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   178: goto -18 -> 160
    //   181: astore 7
    //   183: aload 7
    //   185: invokestatic 93	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   188: goto -20 -> 168
    //   191: astore 10
    //   193: aload 10
    //   195: invokestatic 93	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   198: goto -66 -> 132
    //   201: astore 11
    //   203: aload 11
    //   205: invokestatic 93	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   208: goto -114 -> 94
    //   211: astore 6
    //   213: goto -61 -> 152
    //   216: astore 5
    //   218: goto -99 -> 119
    //   221: iconst_1
    //   222: istore 4
    //   224: goto -193 -> 31
    //
    // Exception table:
    //   from	to	target	type
    //   98	102	105	java/lang/Exception
    //   9	28	115	java/lang/Exception
    //   136	140	143	java/lang/Exception
    //   9	28	148	finally
    //   156	160	171	java/lang/Exception
    //   164	168	181	java/lang/Exception
    //   128	132	191	java/lang/Exception
    //   90	94	201	java/lang/Exception
    //   36	86	211	finally
    //   119	124	211	finally
    //   36	86	216	java/lang/Exception
  }

  private ArrayList a(PackageManager paramPackageManager)
  {
    ArrayList localArrayList = new ArrayList();
    try
    {
      List localList = paramPackageManager.getInstalledPackages(0);
      if (localList != null)
      {
        ListIterator localListIterator = localList.listIterator();
        while ((localListIterator.hasNext()) && (!b()))
        {
          PackageInfo localPackageInfo = (PackageInfo)localListIterator.next();
          localArrayList.add(new aa(localPackageInfo.packageName, localPackageInfo.applicationInfo.sourceDir));
        }
      }
    }
    catch (Exception localException)
    {
      com.avg.toolkit.f.a.a(localException);
    }
    return localArrayList;
  }

  public static void a(Context paramContext, Class paramClass, boolean paramBoolean)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    ComponentName localComponentName = new ComponentName(paramContext, paramClass);
    if (paramBoolean);
    for (int i = 1; ; i = 2)
    {
      localPackageManager.setComponentEnabledSetting(localComponentName, i, 1);
      return;
    }
  }

  // ERROR //
  private void a(aa paramaa, PackageInfo paramPackageInfo)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: new 165	java/util/jar/JarFile
    //   5: dup
    //   6: aload_2
    //   7: getfield 132	android/content/pm/PackageInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   10: getfield 168	android/content/pm/ApplicationInfo:publicSourceDir	Ljava/lang/String;
    //   13: invokespecial 171	java/util/jar/JarFile:<init>	(Ljava/lang/String;)V
    //   16: astore 4
    //   18: aload 4
    //   20: ldc 173
    //   22: invokevirtual 177	java/util/jar/JarFile:getEntry	(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    //   25: astore 12
    //   27: aload 12
    //   29: astore 6
    //   31: aconst_null
    //   32: astore_3
    //   33: aload 6
    //   35: ifnull +78 -> 113
    //   38: aload 4
    //   40: aload 6
    //   42: invokevirtual 181	java/util/jar/JarFile:getInputStream	(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    //   45: astore_3
    //   46: aload_3
    //   47: ifnull +17 -> 64
    //   50: aload_1
    //   51: aload_3
    //   52: invokestatic 186	a/a/a/a/b/a:a	(Ljava/io/InputStream;)[B
    //   55: invokestatic 191	a/a/a/a/a/a:b	([B)Ljava/lang/String;
    //   58: invokevirtual 78	java/lang/String:trim	()Ljava/lang/String;
    //   61: putfield 193	com/antivirus/core/scanners/aa:g	Ljava/lang/String;
    //   64: aload_1
    //   65: aload_0
    //   66: aload 4
    //   68: aload 6
    //   70: invokevirtual 181	java/util/jar/JarFile:getInputStream	(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    //   73: invokespecial 195	com/antivirus/core/scanners/z:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   76: putfield 196	com/antivirus/core/scanners/aa:h	Ljava/lang/String;
    //   79: aload 4
    //   81: ldc 198
    //   83: invokevirtual 177	java/util/jar/JarFile:getEntry	(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    //   86: astore 6
    //   88: aload 6
    //   90: ifnull +23 -> 113
    //   93: aload 4
    //   95: aload 6
    //   97: invokevirtual 181	java/util/jar/JarFile:getInputStream	(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    //   100: astore_3
    //   101: aload_3
    //   102: ifnull +11 -> 113
    //   105: aload_1
    //   106: aload_3
    //   107: invokestatic 203	android/a/a/f:a	(Ljava/io/InputStream;)Lcom/antivirus/core/scanners/a/a;
    //   110: putfield 207	com/antivirus/core/scanners/aa:l	Lcom/antivirus/core/scanners/a/a;
    //   113: aload_3
    //   114: ifnull +7 -> 121
    //   117: aload_3
    //   118: invokevirtual 88	java/io/InputStream:close	()V
    //   121: aload 6
    //   123: ifnull +3 -> 126
    //   126: aload 4
    //   128: ifnull +8 -> 136
    //   131: aload 4
    //   133: invokevirtual 208	java/util/jar/JarFile:close	()V
    //   136: return
    //   137: astore 5
    //   139: aconst_null
    //   140: astore 6
    //   142: aconst_null
    //   143: astore 4
    //   145: aload 5
    //   147: invokestatic 93	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   150: aload_3
    //   151: ifnull +7 -> 158
    //   154: aload_3
    //   155: invokevirtual 88	java/io/InputStream:close	()V
    //   158: aload 6
    //   160: ifnull +3 -> 163
    //   163: aload 4
    //   165: ifnull -29 -> 136
    //   168: aload 4
    //   170: invokevirtual 208	java/util/jar/JarFile:close	()V
    //   173: goto -37 -> 136
    //   176: astore 10
    //   178: aload 10
    //   180: invokestatic 93	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   183: goto -47 -> 136
    //   186: astore 7
    //   188: aconst_null
    //   189: astore 6
    //   191: aconst_null
    //   192: astore 4
    //   194: aload_3
    //   195: ifnull +7 -> 202
    //   198: aload_3
    //   199: invokevirtual 88	java/io/InputStream:close	()V
    //   202: aload 6
    //   204: ifnull +3 -> 207
    //   207: aload 4
    //   209: ifnull +8 -> 217
    //   212: aload 4
    //   214: invokevirtual 208	java/util/jar/JarFile:close	()V
    //   217: aload 7
    //   219: athrow
    //   220: astore 9
    //   222: aload 9
    //   224: invokestatic 93	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   227: goto -25 -> 202
    //   230: astore 8
    //   232: aload 8
    //   234: invokestatic 93	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   237: goto -20 -> 217
    //   240: astore 11
    //   242: aload 11
    //   244: invokestatic 93	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   247: goto -89 -> 158
    //   250: astore 13
    //   252: aload 13
    //   254: invokestatic 93	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   257: goto -136 -> 121
    //   260: astore 10
    //   262: goto -84 -> 178
    //   265: astore 7
    //   267: aconst_null
    //   268: astore_3
    //   269: aconst_null
    //   270: astore 6
    //   272: goto -78 -> 194
    //   275: astore 7
    //   277: goto -83 -> 194
    //   280: astore 5
    //   282: aconst_null
    //   283: astore_3
    //   284: aconst_null
    //   285: astore 6
    //   287: goto -142 -> 145
    //   290: astore 5
    //   292: goto -147 -> 145
    //
    // Exception table:
    //   from	to	target	type
    //   2	18	137	java/lang/Exception
    //   168	173	176	java/io/IOException
    //   2	18	186	finally
    //   198	202	220	java/lang/Exception
    //   212	217	230	java/io/IOException
    //   154	158	240	java/lang/Exception
    //   117	121	250	java/lang/Exception
    //   131	136	260	java/io/IOException
    //   18	27	265	finally
    //   38	113	275	finally
    //   145	150	275	finally
    //   18	27	280	java/lang/Exception
    //   38	113	290	java/lang/Exception
  }

  private boolean a(aa paramaa, Context paramContext, PackageManager paramPackageManager, com.antivirus.core.e.b paramb)
  {
    boolean bool1 = false;
    try
    {
      a(paramaa, paramPackageManager.getPackageInfo(paramaa.a, -1));
      String str1 = paramaa.g;
      bool1 = false;
      if (str1 != null)
      {
        String str3 = paramaa.g;
        paramaa.g = a.a.a.a.a.b.b(a.a.a.a.a.a.b(paramaa.g));
        locale2 = paramb.a(paramContext, d.b, str3, ((ScannerPackagesConfig)this.c).d);
        bool1 = locale2.c;
        if (!bool1);
      }
    }
    catch (Exception localException3)
    {
      try
      {
        e locale2;
        paramaa.i = paramaa.g;
        paramaa.j = locale2.b;
        if (paramaa.h != null)
        {
          String str2 = paramaa.h;
          paramaa.h = a.a.a.a.a.b.b(a.a.a.a.a.a.b(paramaa.h));
          locale1 = paramb.a(paramContext, d.a, str2, ((ScannerPackagesConfig)this.c).d);
          if ((locale1 != null) && (locale1.c))
            if (bool1)
            {
              int i = locale1.b;
              int j = paramaa.j;
              if (i >= j);
            }
            else
            {
              bool2 = true;
            }
        }
      }
      catch (Exception localException3)
      {
        while (true)
        {
          try
          {
            e locale1;
            paramaa.i = paramaa.h;
            paramaa.j = locale1.b;
            return bool2;
            localException1 = localException1;
            bool2 = bool1;
            Object localObject = localException1;
            com.avg.toolkit.f.a.a((Exception)localObject);
            continue;
            localException3 = localException3;
            bool2 = bool1;
            localObject = localException3;
            continue;
          }
          catch (Exception localException2)
          {
            continue;
          }
          boolean bool2 = bool1;
        }
      }
    }
  }

  private boolean a(aa paramaa, Context paramContext, PackageManager paramPackageManager, com.antivirus.core.e.b paramb, t paramt)
  {
    int i = 1;
    boolean bool1;
    if ((paramb != null) && (a(paramaa, paramContext, paramPackageManager, paramb)))
    {
      int i2 = paramaa.j;
      bool1 = false;
      if (i2 <= i)
        return bool1;
    }
    for (int j = 0; ; j = i)
    {
      aa localaa;
      if (paramaa.l != null)
      {
        localaa = new aa(paramaa.a, paramaa.f);
        localaa.l = paramaa.l;
        if ((paramt.a(localaa, ((ScannerPackagesConfig)this.c).d)) || ((j == 0) && (localaa.j >= paramaa.j)))
          break label436;
        paramaa.j = localaa.j;
        paramaa.i = localaa.i;
        paramaa.k = localaa.k;
      }
      label436: for (int k = 0; ; k = j)
      {
        if (k == 0)
        {
          int i1 = paramaa.j;
          bool1 = false;
          if (i1 <= i)
            break;
        }
        int m = 0;
        boolean bool2;
        for (int n = 0; (n == 0) && (m < localaa.l.a.size()); n = bool2)
        {
          bool2 = a(localaa, (String)localaa.l.a.get(m));
          m++;
        }
        if ((n != 0) && ((k != 0) || (localaa.j < paramaa.j)))
        {
          paramaa.j = localaa.j;
          paramaa.i = localaa.i;
          paramaa.k = localaa.k;
        }
        if ((k != 0) && (n == 0));
        while (true)
        {
          bool1 = i;
          break;
          i = 0;
          continue;
          PackageInfo localPackageInfo = paramPackageManager.getPackageInfo(paramaa.a, -1);
          boolean bool3 = a(paramaa, paramaa.a);
          bool1 = false;
          if (bool3)
            break;
          b(paramaa, localPackageInfo);
          boolean bool4 = a(paramaa, paramaa.b.listIterator());
          bool1 = false;
          if (!bool4)
            break;
          boolean bool5 = a(paramaa, paramaa.e.listIterator());
          bool1 = false;
          if (!bool5)
            break;
          boolean bool6 = a(paramaa, paramaa.d.listIterator());
          bool1 = false;
          if (!bool6)
            break;
          boolean bool7 = a(paramaa, paramaa.c.listIterator());
          bool1 = false;
          if (!bool7)
            break;
          i = j;
        }
      }
    }
  }

  private boolean a(aa paramaa, String paramString)
  {
    String str = paramString.toLowerCase(Locale.ENGLISH);
    int i = this.f.size();
    int j = 0;
    if (j < i)
      if (str.contains(((e)this.f.get(j)).a))
      {
        if (paramaa.i == null)
          paramaa.i = ((e)this.f.get(j)).a;
        paramaa.j = ((e)this.f.get(j)).b;
        paramaa.k = ((e)this.f.get(j)).d;
      }
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      j++;
      break;
    }
  }

  private boolean a(aa paramaa, ListIterator paramListIterator)
  {
    do
      if ((!paramListIterator.hasNext()) || (b()))
        break;
    while (!a(paramaa, (String)paramListIterator.next()));
    for (boolean bool = false; ; bool = true)
      return bool;
  }

  private void b(aa paramaa, PackageInfo paramPackageInfo)
  {
    if (paramPackageInfo.activities != null)
      for (int m = 0; m < paramPackageInfo.activities.length; m++)
        if ((paramPackageInfo.activities[m] != null) && (paramPackageInfo.activities[m].name != null))
          paramaa.b.add(paramPackageInfo.activities[m].name);
    if (paramPackageInfo.providers != null)
      for (int k = 0; k < paramPackageInfo.providers.length; k++)
        if ((paramPackageInfo.providers[k] != null) && (paramPackageInfo.providers[k].name != null))
          paramaa.e.add(paramPackageInfo.providers[k].name);
    if (paramPackageInfo.receivers != null)
      for (int j = 0; j < paramPackageInfo.receivers.length; j++)
        if ((paramPackageInfo.receivers[j] != null) && (paramPackageInfo.receivers[j].name != null))
          paramaa.d.add(paramPackageInfo.receivers[j].name);
    ServiceInfo[] arrayOfServiceInfo = paramPackageInfo.services;
    int i = 0;
    if (arrayOfServiceInfo != null)
      while (i < paramPackageInfo.services.length)
      {
        if ((paramPackageInfo.services[i] != null) && (paramPackageInfo.services[i].name != null))
          paramaa.c.add(paramPackageInfo.services[i].name);
        i++;
      }
  }

  protected void a(Context paramContext, h paramh, ScannerPackagesResult paramScannerPackagesResult)
  {
    int i = 0;
    try
    {
      while (i < paramScannerPackagesResult.c.size())
      {
        String str = (String)paramScannerPackagesResult.c.get(i);
        Intent localIntent = new Intent("android.intent.action.DELETE", Uri.parse("package:" + str));
        localIntent.setFlags(268435456);
        paramContext.startActivity(localIntent);
        i++;
      }
    }
    catch (Exception localException)
    {
      com.avg.toolkit.f.a.a(localException);
    }
  }

  // ERROR //
  public void a(Context paramContext, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 27	com/antivirus/core/scanners/z:c	Lcom/antivirus/core/scanners/m;
    //   4: checkcast 29	com/antivirus/core/scanners/ScannerPackagesConfig
    //   7: astore_3
    //   8: aload_1
    //   9: invokevirtual 151	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   12: astore 7
    //   14: new 230	com/antivirus/core/e/b
    //   17: dup
    //   18: invokespecial 374	com/antivirus/core/e/b:<init>	()V
    //   21: astore 5
    //   23: aload_0
    //   24: aload 5
    //   26: aload_1
    //   27: getstatic 376	com/antivirus/core/e/d:c	Lcom/antivirus/core/e/d;
    //   30: aload_0
    //   31: getfield 27	com/antivirus/core/scanners/z:c	Lcom/antivirus/core/scanners/m;
    //   34: checkcast 29	com/antivirus/core/scanners/ScannerPackagesConfig
    //   37: getfield 41	com/antivirus/core/scanners/ScannerPackagesConfig:d	I
    //   40: invokevirtual 379	com/antivirus/core/e/b:a	(Landroid/content/Context;Lcom/antivirus/core/e/d;I)Ljava/util/ArrayList;
    //   43: putfield 302	com/antivirus/core/scanners/z:f	Ljava/util/ArrayList;
    //   46: aload_0
    //   47: aload 5
    //   49: aload_1
    //   50: getstatic 381	com/antivirus/core/e/d:f	Lcom/antivirus/core/e/d;
    //   53: aload_0
    //   54: getfield 27	com/antivirus/core/scanners/z:c	Lcom/antivirus/core/scanners/m;
    //   57: checkcast 29	com/antivirus/core/scanners/ScannerPackagesConfig
    //   60: getfield 41	com/antivirus/core/scanners/ScannerPackagesConfig:d	I
    //   63: invokevirtual 379	com/antivirus/core/e/b:a	(Landroid/content/Context;Lcom/antivirus/core/e/d;I)Ljava/util/ArrayList;
    //   66: putfield 383	com/antivirus/core/scanners/z:g	Ljava/util/ArrayList;
    //   69: aload_0
    //   70: getfield 302	com/antivirus/core/scanners/z:f	Ljava/util/ArrayList;
    //   73: ifnull +13 -> 86
    //   76: aload_0
    //   77: getfield 302	com/antivirus/core/scanners/z:f	Ljava/util/ArrayList;
    //   80: invokevirtual 269	java/util/ArrayList:size	()I
    //   83: ifne +35 -> 118
    //   86: aload_0
    //   87: getfield 383	com/antivirus/core/scanners/z:g	Ljava/util/ArrayList;
    //   90: ifnull +17 -> 107
    //   93: aload_0
    //   94: getfield 383	com/antivirus/core/scanners/z:g	Ljava/util/ArrayList;
    //   97: invokevirtual 269	java/util/ArrayList:size	()I
    //   100: istore 8
    //   102: iload 8
    //   104: ifne +14 -> 118
    //   107: aload 5
    //   109: ifnull +8 -> 117
    //   112: aload 5
    //   114: invokevirtual 385	com/antivirus/core/e/b:a	()V
    //   117: return
    //   118: new 255	com/antivirus/core/scanners/t
    //   121: dup
    //   122: aload_0
    //   123: getfield 383	com/antivirus/core/scanners/z:g	Ljava/util/ArrayList;
    //   126: invokespecial 388	com/antivirus/core/scanners/t:<init>	(Ljava/util/ArrayList;)V
    //   129: astore 9
    //   131: aload_0
    //   132: getfield 23	com/antivirus/core/scanners/z:a	Lcom/antivirus/core/scanners/e;
    //   135: checkcast 16	com/antivirus/core/scanners/ScannerPackagesResult
    //   138: astore 10
    //   140: aload 10
    //   142: aload 5
    //   144: aload_1
    //   145: invokevirtual 391	com/antivirus/core/e/b:e	(Landroid/content/Context;)Ljava/util/TreeMap;
    //   148: putfield 394	com/antivirus/core/scanners/ScannerPackagesResult:d	Ljava/util/TreeMap;
    //   151: aload_3
    //   152: getfield 395	com/antivirus/core/scanners/ScannerPackagesConfig:c	Ljava/util/List;
    //   155: invokeinterface 396 1 0
    //   160: ifne +210 -> 370
    //   163: aload_0
    //   164: aload 7
    //   166: invokespecial 398	com/antivirus/core/scanners/z:a	(Landroid/content/pm/PackageManager;)Ljava/util/ArrayList;
    //   169: astore 16
    //   171: iconst_0
    //   172: istore 17
    //   174: aload 10
    //   176: aload 16
    //   178: invokevirtual 269	java/util/ArrayList:size	()I
    //   181: putfield 399	com/antivirus/core/scanners/ScannerPackagesResult:b	I
    //   184: aload 16
    //   186: invokevirtual 269	java/util/ArrayList:size	()I
    //   189: istore 19
    //   191: iconst_0
    //   192: istore 20
    //   194: iload 20
    //   196: iload 19
    //   198: if_icmpge +489 -> 687
    //   201: aload_0
    //   202: invokevirtual 117	com/antivirus/core/scanners/z:b	()Z
    //   205: ifne +482 -> 687
    //   208: aload 16
    //   210: iload 20
    //   212: invokevirtual 273	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   215: checkcast 125	com/antivirus/core/scanners/aa
    //   218: astore 21
    //   220: iload 20
    //   222: bipush 100
    //   224: imul
    //   225: iload 19
    //   227: idiv
    //   228: istore 22
    //   230: aload_0
    //   231: getfield 402	com/antivirus/core/scanners/z:d	Landroid/os/Messenger;
    //   234: ifnull +108 -> 342
    //   237: aload_0
    //   238: getfield 27	com/antivirus/core/scanners/z:c	Lcom/antivirus/core/scanners/m;
    //   241: getfield 407	com/antivirus/core/scanners/m:a	Lcom/antivirus/core/scanners/n;
    //   244: getstatic 410	com/antivirus/core/scanners/n:a	Lcom/antivirus/core/scanners/n;
    //   247: if_acmpeq +95 -> 342
    //   250: iload 22
    //   252: iflt +16 -> 268
    //   255: aload_0
    //   256: getfield 27	com/antivirus/core/scanners/z:c	Lcom/antivirus/core/scanners/m;
    //   259: getfield 407	com/antivirus/core/scanners/m:a	Lcom/antivirus/core/scanners/n;
    //   262: getstatic 412	com/antivirus/core/scanners/n:c	Lcom/antivirus/core/scanners/n;
    //   265: if_acmpne +77 -> 342
    //   268: invokestatic 418	android/os/Message:obtain	()Landroid/os/Message;
    //   271: astore 30
    //   273: aload 30
    //   275: iconst_2
    //   276: putfield 421	android/os/Message:what	I
    //   279: new 423	android/os/Bundle
    //   282: dup
    //   283: invokespecial 424	android/os/Bundle:<init>	()V
    //   286: astore 31
    //   288: aload 31
    //   290: ldc_w 426
    //   293: iload 22
    //   295: invokevirtual 430	android/os/Bundle:putInt	(Ljava/lang/String;I)V
    //   298: aload 31
    //   300: ldc_w 432
    //   303: iconst_0
    //   304: invokevirtual 436	android/os/Bundle:putBoolean	(Ljava/lang/String;Z)V
    //   307: aload 31
    //   309: ldc_w 438
    //   312: aload 21
    //   314: getfield 211	com/antivirus/core/scanners/aa:a	Ljava/lang/String;
    //   317: invokevirtual 441	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   320: aload 30
    //   322: aload 31
    //   324: invokevirtual 445	android/os/Message:setData	(Landroid/os/Bundle;)V
    //   327: aload 30
    //   329: aconst_null
    //   330: putfield 449	android/os/Message:obj	Ljava/lang/Object;
    //   333: aload_0
    //   334: getfield 402	com/antivirus/core/scanners/z:d	Landroid/os/Messenger;
    //   337: aload 30
    //   339: invokevirtual 455	android/os/Messenger:send	(Landroid/os/Message;)V
    //   342: aload_0
    //   343: getfield 46	com/antivirus/core/scanners/z:h	Ljava/lang/String;
    //   346: aload 21
    //   348: getfield 211	com/antivirus/core/scanners/aa:a	Ljava/lang/String;
    //   351: invokevirtual 53	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   354: invokevirtual 307	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   357: istore 23
    //   359: iload 23
    //   361: ifeq +114 -> 475
    //   364: iinc 20 1
    //   367: goto -173 -> 194
    //   370: aload_3
    //   371: getfield 395	com/antivirus/core/scanners/ScannerPackagesConfig:c	Ljava/util/List;
    //   374: iconst_0
    //   375: invokeinterface 456 2 0
    //   380: checkcast 50	java/lang/String
    //   383: astore 11
    //   385: new 96	java/util/ArrayList
    //   388: dup
    //   389: invokespecial 97	java/util/ArrayList:<init>	()V
    //   392: astore 12
    //   394: ldc 48
    //   396: astore 13
    //   398: aload 7
    //   400: aload 11
    //   402: iconst_0
    //   403: invokevirtual 215	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   406: astore 32
    //   408: aload 32
    //   410: ifnull +13 -> 423
    //   413: aload 32
    //   415: getfield 132	android/content/pm/PackageInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   418: getfield 137	android/content/pm/ApplicationInfo:sourceDir	Ljava/lang/String;
    //   421: astore 13
    //   423: aload 12
    //   425: new 125	com/antivirus/core/scanners/aa
    //   428: dup
    //   429: aload 11
    //   431: aload 13
    //   433: invokespecial 140	com/antivirus/core/scanners/aa:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   436: invokevirtual 144	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   439: pop
    //   440: aload 12
    //   442: astore 16
    //   444: iconst_1
    //   445: istore 17
    //   447: goto -273 -> 174
    //   450: astore 14
    //   452: aload 14
    //   454: invokestatic 93	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   457: goto -34 -> 423
    //   460: astore 4
    //   462: aload 4
    //   464: invokestatic 93	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   467: aload 5
    //   469: ifnull -352 -> 117
    //   472: goto -360 -> 112
    //   475: aload_0
    //   476: aload 21
    //   478: aload_1
    //   479: aload 7
    //   481: aload 5
    //   483: aload 9
    //   485: invokespecial 458	com/antivirus/core/scanners/z:a	(Lcom/antivirus/core/scanners/aa;Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/antivirus/core/e/b;Lcom/antivirus/core/scanners/t;)Z
    //   488: ifne +259 -> 747
    //   491: aload 21
    //   493: getfield 253	com/antivirus/core/scanners/aa:f	Ljava/lang/String;
    //   496: ldc_w 460
    //   499: invokevirtual 75	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   502: ifeq +193 -> 695
    //   505: getstatic 465	com/antivirus/core/scanners/g:c	Lcom/antivirus/core/scanners/g;
    //   508: astore 27
    //   510: aload 10
    //   512: aload 21
    //   514: getfield 211	com/antivirus/core/scanners/aa:a	Ljava/lang/String;
    //   517: aload 21
    //   519: getfield 196	com/antivirus/core/scanners/aa:h	Ljava/lang/String;
    //   522: aload 21
    //   524: getfield 193	com/antivirus/core/scanners/aa:g	Ljava/lang/String;
    //   527: aload 21
    //   529: getfield 241	com/antivirus/core/scanners/aa:i	Ljava/lang/String;
    //   532: aload 27
    //   534: new 344	java/lang/StringBuilder
    //   537: dup
    //   538: invokespecial 345	java/lang/StringBuilder:<init>	()V
    //   541: aload 21
    //   543: getfield 246	com/antivirus/core/scanners/aa:j	I
    //   546: invokevirtual 468	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   549: ldc 48
    //   551: invokevirtual 351	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   554: invokevirtual 354	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   557: new 344	java/lang/StringBuilder
    //   560: dup
    //   561: invokespecial 345	java/lang/StringBuilder:<init>	()V
    //   564: aload 21
    //   566: getfield 261	com/antivirus/core/scanners/aa:k	I
    //   569: invokevirtual 468	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   572: ldc 48
    //   574: invokevirtual 351	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   577: invokevirtual 354	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   580: invokevirtual 471	com/antivirus/core/scanners/ScannerPackagesResult:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/antivirus/core/scanners/g;Ljava/lang/String;Ljava/lang/String;)V
    //   583: aload_0
    //   584: getfield 402	com/antivirus/core/scanners/z:d	Landroid/os/Messenger;
    //   587: ifnull -223 -> 364
    //   590: aload_0
    //   591: getfield 27	com/antivirus/core/scanners/z:c	Lcom/antivirus/core/scanners/m;
    //   594: getfield 407	com/antivirus/core/scanners/m:a	Lcom/antivirus/core/scanners/n;
    //   597: getstatic 410	com/antivirus/core/scanners/n:a	Lcom/antivirus/core/scanners/n;
    //   600: if_acmpeq -236 -> 364
    //   603: invokestatic 418	android/os/Message:obtain	()Landroid/os/Message;
    //   606: astore 28
    //   608: aload 28
    //   610: iconst_2
    //   611: putfield 421	android/os/Message:what	I
    //   614: new 423	android/os/Bundle
    //   617: dup
    //   618: invokespecial 424	android/os/Bundle:<init>	()V
    //   621: astore 29
    //   623: aload 29
    //   625: ldc_w 426
    //   628: iload 22
    //   630: invokevirtual 430	android/os/Bundle:putInt	(Ljava/lang/String;I)V
    //   633: aload 29
    //   635: ldc_w 432
    //   638: iconst_1
    //   639: invokevirtual 436	android/os/Bundle:putBoolean	(Ljava/lang/String;Z)V
    //   642: aload 29
    //   644: ldc_w 438
    //   647: aload 21
    //   649: getfield 211	com/antivirus/core/scanners/aa:a	Ljava/lang/String;
    //   652: invokevirtual 441	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   655: aload 28
    //   657: aload 29
    //   659: invokevirtual 445	android/os/Message:setData	(Landroid/os/Bundle;)V
    //   662: aload 28
    //   664: aconst_null
    //   665: putfield 449	android/os/Message:obj	Ljava/lang/Object;
    //   668: aload_0
    //   669: getfield 402	com/antivirus/core/scanners/z:d	Landroid/os/Messenger;
    //   672: aload 28
    //   674: invokevirtual 455	android/os/Messenger:send	(Landroid/os/Message;)V
    //   677: goto -313 -> 364
    //   680: astore 18
    //   682: aload 18
    //   684: invokestatic 93	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   687: aload 5
    //   689: ifnull -572 -> 117
    //   692: goto -580 -> 112
    //   695: aload 21
    //   697: getfield 253	com/antivirus/core/scanners/aa:f	Ljava/lang/String;
    //   700: ldc_w 473
    //   703: invokevirtual 75	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   706: ifeq +11 -> 717
    //   709: getstatic 475	com/antivirus/core/scanners/g:d	Lcom/antivirus/core/scanners/g;
    //   712: astore 27
    //   714: goto -204 -> 510
    //   717: aload 21
    //   719: getfield 253	com/antivirus/core/scanners/aa:f	Ljava/lang/String;
    //   722: ldc_w 477
    //   725: invokevirtual 75	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   728: ifeq +11 -> 739
    //   731: getstatic 479	com/antivirus/core/scanners/g:b	Lcom/antivirus/core/scanners/g;
    //   734: astore 27
    //   736: goto -226 -> 510
    //   739: getstatic 481	com/antivirus/core/scanners/g:e	Lcom/antivirus/core/scanners/g;
    //   742: astore 27
    //   744: goto -234 -> 510
    //   747: iload 17
    //   749: ifeq -385 -> 364
    //   752: aload 21
    //   754: getfield 253	com/antivirus/core/scanners/aa:f	Ljava/lang/String;
    //   757: ldc_w 460
    //   760: invokevirtual 75	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   763: ifeq +111 -> 874
    //   766: getstatic 465	com/antivirus/core/scanners/g:c	Lcom/antivirus/core/scanners/g;
    //   769: astore 25
    //   771: new 423	android/os/Bundle
    //   774: dup
    //   775: invokespecial 424	android/os/Bundle:<init>	()V
    //   778: astore 26
    //   780: aload 26
    //   782: ldc_w 483
    //   785: aload 21
    //   787: getfield 211	com/antivirus/core/scanners/aa:a	Ljava/lang/String;
    //   790: invokevirtual 441	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   793: aload 26
    //   795: ldc_w 485
    //   798: aload 21
    //   800: getfield 193	com/antivirus/core/scanners/aa:g	Ljava/lang/String;
    //   803: invokevirtual 441	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   806: aload 26
    //   808: ldc_w 487
    //   811: aload 21
    //   813: getfield 196	com/antivirus/core/scanners/aa:h	Ljava/lang/String;
    //   816: invokevirtual 441	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   819: aload 26
    //   821: ldc_w 489
    //   824: aload_0
    //   825: getfield 27	com/antivirus/core/scanners/z:c	Lcom/antivirus/core/scanners/m;
    //   828: checkcast 29	com/antivirus/core/scanners/ScannerPackagesConfig
    //   831: getfield 41	com/antivirus/core/scanners/ScannerPackagesConfig:d	I
    //   834: invokevirtual 430	android/os/Bundle:putInt	(Ljava/lang/String;I)V
    //   837: aload 26
    //   839: ldc_w 491
    //   842: aload 25
    //   844: invokevirtual 495	android/os/Bundle:putSerializable	(Ljava/lang/String;Ljava/io/Serializable;)V
    //   847: aload_0
    //   848: sipush 2005
    //   851: aload 26
    //   853: invokevirtual 498	com/antivirus/core/scanners/z:a	(ILandroid/os/Bundle;)V
    //   856: goto -492 -> 364
    //   859: astore 6
    //   861: aload 5
    //   863: ifnull +8 -> 871
    //   866: aload 5
    //   868: invokevirtual 385	com/antivirus/core/e/b:a	()V
    //   871: aload 6
    //   873: athrow
    //   874: aload 21
    //   876: getfield 253	com/antivirus/core/scanners/aa:f	Ljava/lang/String;
    //   879: ldc_w 473
    //   882: invokevirtual 75	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   885: ifeq +11 -> 896
    //   888: getstatic 475	com/antivirus/core/scanners/g:d	Lcom/antivirus/core/scanners/g;
    //   891: astore 25
    //   893: goto -122 -> 771
    //   896: aload 21
    //   898: getfield 253	com/antivirus/core/scanners/aa:f	Ljava/lang/String;
    //   901: ldc_w 477
    //   904: invokevirtual 75	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   907: ifeq +11 -> 918
    //   910: getstatic 479	com/antivirus/core/scanners/g:b	Lcom/antivirus/core/scanners/g;
    //   913: astore 25
    //   915: goto -144 -> 771
    //   918: getstatic 481	com/antivirus/core/scanners/g:e	Lcom/antivirus/core/scanners/g;
    //   921: astore 24
    //   923: aload 24
    //   925: astore 25
    //   927: goto -156 -> 771
    //   930: astore 6
    //   932: aconst_null
    //   933: astore 5
    //   935: goto -74 -> 861
    //   938: astore 4
    //   940: aconst_null
    //   941: astore 5
    //   943: goto -481 -> 462
    //
    // Exception table:
    //   from	to	target	type
    //   398	423	450	java/lang/Exception
    //   23	102	460	java/lang/Exception
    //   118	184	460	java/lang/Exception
    //   370	398	460	java/lang/Exception
    //   423	457	460	java/lang/Exception
    //   682	687	460	java/lang/Exception
    //   184	359	680	java/lang/Exception
    //   475	677	680	java/lang/Exception
    //   695	856	680	java/lang/Exception
    //   874	923	680	java/lang/Exception
    //   23	102	859	finally
    //   118	184	859	finally
    //   184	359	859	finally
    //   370	398	859	finally
    //   398	423	859	finally
    //   423	457	859	finally
    //   462	467	859	finally
    //   475	677	859	finally
    //   682	687	859	finally
    //   695	856	859	finally
    //   874	923	859	finally
    //   8	23	930	finally
    //   8	23	938	java/lang/Exception
  }

  protected void b(Context paramContext, h paramh, ScannerPackagesResult paramScannerPackagesResult)
  {
    try
    {
      PackageManager localPackageManager = paramContext.getPackageManager();
      int i = 0;
      while (true)
        if (i < paramScannerPackagesResult.c.size())
        {
          String str = (String)paramScannerPackagesResult.c.get(i);
          try
          {
            PackageInfo localPackageInfo = localPackageManager.getPackageInfo(str, 0);
            if (localPackageInfo != null);
            for (j = 1; ; j = 0)
            {
              if ((j == 0) && (str != null) && (paramh != null))
                paramh.c.c.remove(str);
              i++;
              break;
            }
          }
          catch (PackageManager.NameNotFoundException localNameNotFoundException)
          {
            while (true)
              j = 0;
          }
          catch (Exception localException2)
          {
            while (true)
              int j = 0;
          }
        }
    }
    catch (Exception localException1)
    {
      com.avg.toolkit.f.a.a(localException1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.scanners.z
 * JD-Core Version:    0.6.2
 */