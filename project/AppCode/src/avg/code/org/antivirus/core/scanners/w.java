package org.antivirus.core.scanners;

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
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import org.antivirus.core.EngineSettings;
import org.antivirus.core.Logger;
import org.antivirus.core.c.e;

public class w extends j
{
  private ArrayList g;
  private String h;

  protected w(EngineSettings paramEngineSettings, Handler paramHandler, l paraml)
  {
    super(paramEngineSettings, paramHandler, paraml);
    this.a = new ScannerPackagesResult();
    ScannerPackagesConfig localScannerPackagesConfig;
    if (this.c == null)
    {
      this.c = new ScannerPackagesConfig();
      localScannerPackagesConfig = (ScannerPackagesConfig)this.c;
      if (!paramEngineSettings.isPUPEnabled())
        break label96;
    }
    label96: for (int i = 99999; ; i = 5)
    {
      localScannerPackagesConfig.d = i;
      this.h = paramEngineSettings.getIgnorePackages();
      if (this.h == null)
        this.h = "";
      this.h = this.h.toLowerCase();
      return;
    }
  }

  // ERROR //
  private static String a(java.io.InputStream paramInputStream)
  {
    // Byte code:
    //   0: ldc 47
    //   2: astore_1
    //   3: aload_0
    //   4: ifnonnull +5 -> 9
    //   7: aload_1
    //   8: areturn
    //   9: new 57	java/io/BufferedReader
    //   12: dup
    //   13: new 59	java/io/InputStreamReader
    //   16: dup
    //   17: aload_0
    //   18: invokespecial 62	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   21: sipush 8192
    //   24: invokespecial 65	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   27: astore_2
    //   28: iconst_0
    //   29: istore_3
    //   30: iload_3
    //   31: ifne +49 -> 80
    //   34: aload_2
    //   35: invokevirtual 68	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   38: astore 11
    //   40: aload 11
    //   42: ifnull +38 -> 80
    //   45: aload 11
    //   47: ldc 70
    //   49: invokevirtual 74	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   52: ifeq -22 -> 30
    //   55: aload_2
    //   56: invokevirtual 68	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   59: astore 12
    //   61: aload 12
    //   63: ifnull +143 -> 206
    //   66: aload 12
    //   68: invokevirtual 77	java/lang/String:trim	()Ljava/lang/String;
    //   71: bipush 13
    //   73: invokevirtual 81	java/lang/String:substring	(I)Ljava/lang/String;
    //   76: astore_1
    //   77: goto +129 -> 206
    //   80: aload_2
    //   81: invokevirtual 84	java/io/BufferedReader:close	()V
    //   84: aload_0
    //   85: ifnull -78 -> 7
    //   88: aload_0
    //   89: invokevirtual 87	java/io/InputStream:close	()V
    //   92: goto -85 -> 7
    //   95: astore 10
    //   97: aload 10
    //   99: invokestatic 93	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   102: goto -95 -> 7
    //   105: astore 4
    //   107: aconst_null
    //   108: astore_2
    //   109: aload 4
    //   111: invokestatic 93	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   114: aload_0
    //   115: ifnull +7 -> 122
    //   118: aload_0
    //   119: invokevirtual 87	java/io/InputStream:close	()V
    //   122: aload_2
    //   123: ifnull -116 -> 7
    //   126: aload_2
    //   127: invokevirtual 84	java/io/BufferedReader:close	()V
    //   130: goto -123 -> 7
    //   133: astore 8
    //   135: aload 8
    //   137: invokestatic 93	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   140: goto -133 -> 7
    //   143: astore 9
    //   145: aload 9
    //   147: invokestatic 93	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   150: goto -28 -> 122
    //   153: astore 5
    //   155: aconst_null
    //   156: astore_2
    //   157: aload_0
    //   158: ifnull +7 -> 165
    //   161: aload_0
    //   162: invokevirtual 87	java/io/InputStream:close	()V
    //   165: aload_2
    //   166: ifnull +7 -> 173
    //   169: aload_2
    //   170: invokevirtual 84	java/io/BufferedReader:close	()V
    //   173: aload 5
    //   175: athrow
    //   176: astore 7
    //   178: aload 7
    //   180: invokestatic 93	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   183: goto -18 -> 165
    //   186: astore 6
    //   188: aload 6
    //   190: invokestatic 93	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   193: goto -20 -> 173
    //   196: astore 5
    //   198: goto -41 -> 157
    //   201: astore 4
    //   203: goto -94 -> 109
    //   206: iconst_1
    //   207: istore_3
    //   208: goto -178 -> 30
    //
    // Exception table:
    //   from	to	target	type
    //   88	92	95	java/lang/Exception
    //   9	28	105	java/lang/Exception
    //   126	130	133	java/lang/Exception
    //   118	122	143	java/lang/Exception
    //   9	28	153	finally
    //   161	165	176	java/lang/Exception
    //   169	173	186	java/lang/Exception
    //   34	84	196	finally
    //   109	114	196	finally
    //   34	84	201	java/lang/Exception
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
        while ((localListIterator.hasNext()) && (!this.f))
        {
          PackageInfo localPackageInfo = (PackageInfo)localListIterator.next();
          localArrayList.add(new x(this, localPackageInfo.packageName, localPackageInfo.applicationInfo.sourceDir));
        }
      }
    }
    catch (Exception localException)
    {
      Logger.log(localException);
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

  protected static void a(Context paramContext, ScannerPackagesResult paramScannerPackagesResult)
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
      Logger.log(localException);
    }
  }

  protected static void a(Context paramContext, g paramg, ScannerPackagesResult paramScannerPackagesResult)
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
              if ((j == 0) && (str != null) && (paramg != null))
                paramg.c.c.remove(str);
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
      Logger.log(localException1);
    }
  }

  private static void a(x paramx, PackageInfo paramPackageInfo)
  {
    if (paramPackageInfo.activities != null)
      for (int m = 0; m < paramPackageInfo.activities.length; m++)
        if ((paramPackageInfo.activities[m] != null) && (paramPackageInfo.activities[m].name != null))
          paramx.b.add(paramPackageInfo.activities[m].name);
    if (paramPackageInfo.providers != null)
      for (int k = 0; k < paramPackageInfo.providers.length; k++)
        if ((paramPackageInfo.providers[k] != null) && (paramPackageInfo.providers[k].name != null))
          paramx.e.add(paramPackageInfo.providers[k].name);
    if (paramPackageInfo.receivers != null)
      for (int j = 0; j < paramPackageInfo.receivers.length; j++)
        if ((paramPackageInfo.receivers[j] != null) && (paramPackageInfo.receivers[j].name != null))
          paramx.d.add(paramPackageInfo.receivers[j].name);
    ServiceInfo[] arrayOfServiceInfo = paramPackageInfo.services;
    int i = 0;
    if (arrayOfServiceInfo != null)
      while (i < paramPackageInfo.services.length)
      {
        if ((paramPackageInfo.services[i] != null) && (paramPackageInfo.services[i].name != null))
          paramx.c.add(paramPackageInfo.services[i].name);
        i++;
      }
  }

  // ERROR //
  private boolean a(x paramx, Context paramContext, PackageManager paramPackageManager, org.antivirus.core.c.b paramb)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aload_3
    //   4: aload_1
    //   5: getfield 267	org/antivirus/core/scanners/x:a	Ljava/lang/String;
    //   8: iconst_m1
    //   9: invokevirtual 215	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   12: astore 8
    //   14: new 269	java/util/jar/JarFile
    //   17: dup
    //   18: aload 8
    //   20: getfield 133	android/content/pm/PackageInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   23: getfield 272	android/content/pm/ApplicationInfo:publicSourceDir	Ljava/lang/String;
    //   26: invokespecial 273	java/util/jar/JarFile:<init>	(Ljava/lang/String;)V
    //   29: astore 9
    //   31: aload 9
    //   33: ldc_w 275
    //   36: invokevirtual 279	java/util/jar/JarFile:getEntry	(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    //   39: astore 22
    //   41: aconst_null
    //   42: astore 5
    //   44: aload 22
    //   46: ifnull +46 -> 92
    //   49: aload 9
    //   51: aload 22
    //   53: invokevirtual 283	java/util/jar/JarFile:getInputStream	(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    //   56: astore 5
    //   58: aload 5
    //   60: ifnull +18 -> 78
    //   63: aload_1
    //   64: aload 5
    //   66: invokestatic 288	org/a/a/a/b/a:a	(Ljava/io/InputStream;)[B
    //   69: invokestatic 293	org/a/a/a/a/a:b	([B)Ljava/lang/String;
    //   72: invokevirtual 77	java/lang/String:trim	()Ljava/lang/String;
    //   75: putfield 295	org/antivirus/core/scanners/x:f	Ljava/lang/String;
    //   78: aload_1
    //   79: aload 9
    //   81: aload 22
    //   83: invokevirtual 283	java/util/jar/JarFile:getInputStream	(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    //   86: invokestatic 297	org/antivirus/core/scanners/w:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   89: putfield 299	org/antivirus/core/scanners/x:g	Ljava/lang/String;
    //   92: aload 5
    //   94: ifnull +8 -> 102
    //   97: aload 5
    //   99: invokevirtual 87	java/io/InputStream:close	()V
    //   102: aload 9
    //   104: invokevirtual 300	java/util/jar/JarFile:close	()V
    //   107: aload_1
    //   108: getfield 295	org/antivirus/core/scanners/x:f	Ljava/lang/String;
    //   111: ifnull +370 -> 481
    //   114: aload_1
    //   115: getfield 295	org/antivirus/core/scanners/x:f	Ljava/lang/String;
    //   118: astore 19
    //   120: aload_1
    //   121: aload_1
    //   122: getfield 295	org/antivirus/core/scanners/x:f	Ljava/lang/String;
    //   125: invokestatic 303	org/a/a/a/a/a:a	(Ljava/lang/String;)[B
    //   128: invokestatic 307	org/a/a/a/a/b:a	([B)Ljava/lang/String;
    //   131: putfield 295	org/antivirus/core/scanners/x:f	Ljava/lang/String;
    //   134: aload 4
    //   136: aload_2
    //   137: getstatic 312	org/antivirus/core/c/d:b	Lorg/antivirus/core/c/d;
    //   140: aload 19
    //   142: aload_0
    //   143: getfield 25	org/antivirus/core/scanners/w:c	Lorg/antivirus/core/scanners/l;
    //   146: checkcast 27	org/antivirus/core/scanners/ScannerPackagesConfig
    //   149: getfield 39	org/antivirus/core/scanners/ScannerPackagesConfig:d	I
    //   152: invokevirtual 317	org/antivirus/core/c/b:a	(Landroid/content/Context;Lorg/antivirus/core/c/d;Ljava/lang/String;I)Lorg/antivirus/core/c/e;
    //   155: astore 20
    //   157: aload 20
    //   159: getfield 321	org/antivirus/core/c/e:c	Z
    //   162: istore 7
    //   164: iload 7
    //   166: ifeq +20 -> 186
    //   169: aload_1
    //   170: aload_1
    //   171: getfield 295	org/antivirus/core/scanners/x:f	Ljava/lang/String;
    //   174: putfield 324	org/antivirus/core/scanners/x:i	Ljava/lang/String;
    //   177: aload_1
    //   178: aload 20
    //   180: getfield 326	org/antivirus/core/c/e:b	I
    //   183: putfield 329	org/antivirus/core/scanners/x:j	I
    //   186: aload_1
    //   187: getfield 299	org/antivirus/core/scanners/x:g	Ljava/lang/String;
    //   190: ifnull +284 -> 474
    //   193: aload_1
    //   194: getfield 299	org/antivirus/core/scanners/x:g	Ljava/lang/String;
    //   197: astore 16
    //   199: aload_1
    //   200: aload_1
    //   201: getfield 299	org/antivirus/core/scanners/x:g	Ljava/lang/String;
    //   204: invokestatic 303	org/a/a/a/a/a:a	(Ljava/lang/String;)[B
    //   207: invokestatic 307	org/a/a/a/a/b:a	([B)Ljava/lang/String;
    //   210: putfield 299	org/antivirus/core/scanners/x:g	Ljava/lang/String;
    //   213: aload 4
    //   215: aload_2
    //   216: getstatic 331	org/antivirus/core/c/d:a	Lorg/antivirus/core/c/d;
    //   219: aload 16
    //   221: aload_0
    //   222: getfield 25	org/antivirus/core/scanners/w:c	Lorg/antivirus/core/scanners/l;
    //   225: checkcast 27	org/antivirus/core/scanners/ScannerPackagesConfig
    //   228: getfield 39	org/antivirus/core/scanners/ScannerPackagesConfig:d	I
    //   231: invokevirtual 317	org/antivirus/core/c/b:a	(Landroid/content/Context;Lorg/antivirus/core/c/d;Ljava/lang/String;I)Lorg/antivirus/core/c/e;
    //   234: astore 17
    //   236: aload 17
    //   238: getfield 321	org/antivirus/core/c/e:c	Z
    //   241: ifeq +233 -> 474
    //   244: iload 7
    //   246: ifeq +169 -> 415
    //   249: aload 17
    //   251: getfield 326	org/antivirus/core/c/e:b	I
    //   254: aload_1
    //   255: getfield 329	org/antivirus/core/scanners/x:j	I
    //   258: if_icmpge +216 -> 474
    //   261: aload_1
    //   262: aload_1
    //   263: getfield 299	org/antivirus/core/scanners/x:g	Ljava/lang/String;
    //   266: putfield 324	org/antivirus/core/scanners/x:i	Ljava/lang/String;
    //   269: aload_1
    //   270: aload 17
    //   272: getfield 326	org/antivirus/core/c/e:b	I
    //   275: putfield 329	org/antivirus/core/scanners/x:j	I
    //   278: iload 7
    //   280: ireturn
    //   281: astore 24
    //   283: aload 24
    //   285: invokestatic 93	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   288: goto -186 -> 102
    //   291: astore 6
    //   293: iconst_0
    //   294: istore 7
    //   296: aload 6
    //   298: invokestatic 93	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   301: goto -23 -> 278
    //   304: astore 23
    //   306: aload 23
    //   308: invokestatic 93	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   311: goto -204 -> 107
    //   314: astore 10
    //   316: aconst_null
    //   317: astore 9
    //   319: aload 10
    //   321: invokestatic 93	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   324: aload 5
    //   326: ifnull +8 -> 334
    //   329: aload 5
    //   331: invokevirtual 87	java/io/InputStream:close	()V
    //   334: aload 9
    //   336: ifnull -229 -> 107
    //   339: aload 9
    //   341: invokevirtual 300	java/util/jar/JarFile:close	()V
    //   344: goto -237 -> 107
    //   347: astore 14
    //   349: aload 14
    //   351: invokestatic 93	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   354: goto -247 -> 107
    //   357: astore 21
    //   359: aload 21
    //   361: invokestatic 93	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   364: goto -30 -> 334
    //   367: astore 11
    //   369: aconst_null
    //   370: astore 9
    //   372: aload 5
    //   374: ifnull +8 -> 382
    //   377: aload 5
    //   379: invokevirtual 87	java/io/InputStream:close	()V
    //   382: aload 9
    //   384: ifnull +8 -> 392
    //   387: aload 9
    //   389: invokevirtual 300	java/util/jar/JarFile:close	()V
    //   392: aload 11
    //   394: athrow
    //   395: astore 13
    //   397: aload 13
    //   399: invokestatic 93	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   402: goto -20 -> 382
    //   405: astore 12
    //   407: aload 12
    //   409: invokestatic 93	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   412: goto -20 -> 392
    //   415: aload 17
    //   417: getfield 321	org/antivirus/core/c/e:c	Z
    //   420: istore 15
    //   422: aload_1
    //   423: aload_1
    //   424: getfield 299	org/antivirus/core/scanners/x:g	Ljava/lang/String;
    //   427: putfield 324	org/antivirus/core/scanners/x:i	Ljava/lang/String;
    //   430: aload_1
    //   431: aload 17
    //   433: getfield 326	org/antivirus/core/c/e:b	I
    //   436: putfield 329	org/antivirus/core/scanners/x:j	I
    //   439: iload 15
    //   441: istore 7
    //   443: goto -165 -> 278
    //   446: astore 6
    //   448: goto -152 -> 296
    //   451: astore 18
    //   453: iload 15
    //   455: istore 7
    //   457: aload 18
    //   459: astore 6
    //   461: goto -165 -> 296
    //   464: astore 11
    //   466: goto -94 -> 372
    //   469: astore 10
    //   471: goto -152 -> 319
    //   474: iload 7
    //   476: istore 15
    //   478: goto -39 -> 439
    //   481: iconst_0
    //   482: istore 7
    //   484: goto -298 -> 186
    //
    // Exception table:
    //   from	to	target	type
    //   97	102	281	java/lang/Exception
    //   3	14	291	java/lang/Exception
    //   102	107	291	java/lang/Exception
    //   107	164	291	java/lang/Exception
    //   283	288	291	java/lang/Exception
    //   306	311	291	java/lang/Exception
    //   339	344	291	java/lang/Exception
    //   349	364	291	java/lang/Exception
    //   387	392	291	java/lang/Exception
    //   392	412	291	java/lang/Exception
    //   102	107	304	java/io/IOException
    //   14	31	314	java/lang/Exception
    //   339	344	347	java/io/IOException
    //   329	334	357	java/lang/Exception
    //   14	31	367	finally
    //   377	382	395	java/lang/Exception
    //   387	392	405	java/io/IOException
    //   169	278	446	java/lang/Exception
    //   415	422	446	java/lang/Exception
    //   422	439	451	java/lang/Exception
    //   31	92	464	finally
    //   319	324	464	finally
    //   31	92	469	java/lang/Exception
  }

  private boolean a(x paramx, String paramString)
  {
    String str = paramString.toLowerCase();
    int i = this.g.size();
    int j = 0;
    if (j < i)
      if (str.contains(((e)this.g.get(j)).a))
      {
        if (paramx.i == null)
          paramx.i = ((e)this.g.get(j)).a;
        paramx.j = ((e)this.g.get(j)).b;
      }
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      j++;
      break;
    }
  }

  private boolean a(x paramx, ListIterator paramListIterator)
  {
    do
      if ((!paramListIterator.hasNext()) || (this.f))
        break;
    while (!a(paramx, (String)paramListIterator.next()));
    for (boolean bool = false; ; bool = true)
      return bool;
  }

  // ERROR //
  public final void a(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 25	org/antivirus/core/scanners/w:c	Lorg/antivirus/core/scanners/l;
    //   4: checkcast 27	org/antivirus/core/scanners/ScannerPackagesConfig
    //   7: astore_2
    //   8: aload_1
    //   9: invokevirtual 152	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   12: astore 7
    //   14: new 314	org/antivirus/core/c/b
    //   17: dup
    //   18: invokespecial 344	org/antivirus/core/c/b:<init>	()V
    //   21: astore 6
    //   23: aload_0
    //   24: aload 6
    //   26: aload_1
    //   27: getstatic 346	org/antivirus/core/c/d:c	Lorg/antivirus/core/c/d;
    //   30: aload_0
    //   31: getfield 25	org/antivirus/core/scanners/w:c	Lorg/antivirus/core/scanners/l;
    //   34: checkcast 27	org/antivirus/core/scanners/ScannerPackagesConfig
    //   37: getfield 39	org/antivirus/core/scanners/ScannerPackagesConfig:d	I
    //   40: invokevirtual 349	org/antivirus/core/c/b:a	(Landroid/content/Context;Lorg/antivirus/core/c/d;I)Ljava/util/ArrayList;
    //   43: putfield 334	org/antivirus/core/scanners/w:g	Ljava/util/ArrayList;
    //   46: aload_0
    //   47: getfield 334	org/antivirus/core/scanners/w:g	Ljava/util/ArrayList;
    //   50: ifnull +17 -> 67
    //   53: aload_0
    //   54: getfield 334	org/antivirus/core/scanners/w:g	Ljava/util/ArrayList;
    //   57: invokevirtual 168	java/util/ArrayList:size	()I
    //   60: istore 8
    //   62: iload 8
    //   64: ifne +9 -> 73
    //   67: aload 6
    //   69: invokevirtual 351	org/antivirus/core/c/b:a	()V
    //   72: return
    //   73: aload_0
    //   74: getfield 21	org/antivirus/core/scanners/w:a	Lorg/antivirus/core/scanners/d;
    //   77: checkcast 14	org/antivirus/core/scanners/ScannerPackagesResult
    //   80: astore 9
    //   82: aload 9
    //   84: aload 6
    //   86: aload_1
    //   87: invokevirtual 354	org/antivirus/core/c/b:e	(Landroid/content/Context;)Ljava/util/TreeMap;
    //   90: putfield 357	org/antivirus/core/scanners/ScannerPackagesResult:d	Ljava/util/TreeMap;
    //   93: aload_2
    //   94: getfield 358	org/antivirus/core/scanners/ScannerPackagesConfig:c	Ljava/util/List;
    //   97: invokeinterface 359 1 0
    //   102: ifne +386 -> 488
    //   105: aload_0
    //   106: aload 7
    //   108: invokespecial 361	org/antivirus/core/scanners/w:a	(Landroid/content/pm/PackageManager;)Ljava/util/ArrayList;
    //   111: astore 15
    //   113: iconst_0
    //   114: istore 16
    //   116: aload 9
    //   118: aload 15
    //   120: invokevirtual 168	java/util/ArrayList:size	()I
    //   123: putfield 362	org/antivirus/core/scanners/ScannerPackagesResult:b	I
    //   126: aload 15
    //   128: invokevirtual 168	java/util/ArrayList:size	()I
    //   131: istore 18
    //   133: iconst_0
    //   134: istore 19
    //   136: iload 19
    //   138: iload 18
    //   140: if_icmpge +751 -> 891
    //   143: aload_0
    //   144: getfield 118	org/antivirus/core/scanners/j:f	Z
    //   147: ifne +744 -> 891
    //   150: aload 15
    //   152: iload 19
    //   154: invokevirtual 172	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   157: checkcast 126	org/antivirus/core/scanners/x
    //   160: astore 20
    //   162: iload 19
    //   164: bipush 100
    //   166: imul
    //   167: iload 18
    //   169: idiv
    //   170: istore 21
    //   172: aload_0
    //   173: getfield 365	org/antivirus/core/scanners/w:d	Landroid/os/Messenger;
    //   176: ifnull +108 -> 284
    //   179: aload_0
    //   180: getfield 25	org/antivirus/core/scanners/w:c	Lorg/antivirus/core/scanners/l;
    //   183: getfield 370	org/antivirus/core/scanners/l:a	Lorg/antivirus/core/scanners/m;
    //   186: getstatic 373	org/antivirus/core/scanners/m:a	Lorg/antivirus/core/scanners/m;
    //   189: if_acmpeq +95 -> 284
    //   192: iload 21
    //   194: ifgt +16 -> 210
    //   197: aload_0
    //   198: getfield 25	org/antivirus/core/scanners/w:c	Lorg/antivirus/core/scanners/l;
    //   201: getfield 370	org/antivirus/core/scanners/l:a	Lorg/antivirus/core/scanners/m;
    //   204: getstatic 375	org/antivirus/core/scanners/m:c	Lorg/antivirus/core/scanners/m;
    //   207: if_acmpne +77 -> 284
    //   210: invokestatic 381	android/os/Message:obtain	()Landroid/os/Message;
    //   213: astore 29
    //   215: aload 29
    //   217: iconst_2
    //   218: putfield 384	android/os/Message:what	I
    //   221: new 386	android/os/Bundle
    //   224: dup
    //   225: invokespecial 387	android/os/Bundle:<init>	()V
    //   228: astore 30
    //   230: aload 30
    //   232: ldc_w 389
    //   235: iload 21
    //   237: invokevirtual 393	android/os/Bundle:putInt	(Ljava/lang/String;I)V
    //   240: aload 30
    //   242: ldc_w 395
    //   245: iconst_0
    //   246: invokevirtual 399	android/os/Bundle:putBoolean	(Ljava/lang/String;Z)V
    //   249: aload 30
    //   251: ldc_w 401
    //   254: aload 20
    //   256: getfield 267	org/antivirus/core/scanners/x:a	Ljava/lang/String;
    //   259: invokevirtual 405	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   262: aload 29
    //   264: aload 30
    //   266: invokevirtual 409	android/os/Message:setData	(Landroid/os/Bundle;)V
    //   269: aload 29
    //   271: aconst_null
    //   272: putfield 413	android/os/Message:obj	Ljava/lang/Object;
    //   275: aload_0
    //   276: getfield 365	org/antivirus/core/scanners/w:d	Landroid/os/Messenger;
    //   279: aload 29
    //   281: invokevirtual 419	android/os/Messenger:send	(Landroid/os/Message;)V
    //   284: aload_0
    //   285: getfield 45	org/antivirus/core/scanners/w:h	Ljava/lang/String;
    //   288: aload 20
    //   290: getfield 267	org/antivirus/core/scanners/x:a	Ljava/lang/String;
    //   293: invokevirtual 52	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   296: invokevirtual 339	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   299: ifne +183 -> 482
    //   302: aload_0
    //   303: aload 20
    //   305: aload_1
    //   306: aload 7
    //   308: aload 6
    //   310: invokespecial 421	org/antivirus/core/scanners/w:a	(Lorg/antivirus/core/scanners/x;Landroid/content/Context;Landroid/content/pm/PackageManager;Lorg/antivirus/core/c/b;)Z
    //   313: ifeq +288 -> 601
    //   316: iconst_0
    //   317: istore 23
    //   319: iload 23
    //   321: ifne +472 -> 793
    //   324: aload 20
    //   326: getfield 422	org/antivirus/core/scanners/x:h	Ljava/lang/String;
    //   329: ldc_w 424
    //   332: invokevirtual 74	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   335: ifeq +406 -> 741
    //   338: getstatic 429	org/antivirus/core/scanners/f:c	Lorg/antivirus/core/scanners/f;
    //   341: astore 26
    //   343: aload 9
    //   345: aload 20
    //   347: getfield 267	org/antivirus/core/scanners/x:a	Ljava/lang/String;
    //   350: aload 20
    //   352: getfield 299	org/antivirus/core/scanners/x:g	Ljava/lang/String;
    //   355: aload 20
    //   357: getfield 295	org/antivirus/core/scanners/x:f	Ljava/lang/String;
    //   360: aload 20
    //   362: getfield 324	org/antivirus/core/scanners/x:i	Ljava/lang/String;
    //   365: aload 26
    //   367: new 178	java/lang/StringBuilder
    //   370: dup
    //   371: invokespecial 430	java/lang/StringBuilder:<init>	()V
    //   374: aload 20
    //   376: getfield 329	org/antivirus/core/scanners/x:j	I
    //   379: invokevirtual 433	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   382: invokevirtual 190	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   385: invokevirtual 436	org/antivirus/core/scanners/ScannerPackagesResult:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/antivirus/core/scanners/f;Ljava/lang/String;)V
    //   388: aload_0
    //   389: getfield 365	org/antivirus/core/scanners/w:d	Landroid/os/Messenger;
    //   392: ifnull +90 -> 482
    //   395: aload_0
    //   396: getfield 25	org/antivirus/core/scanners/w:c	Lorg/antivirus/core/scanners/l;
    //   399: getfield 370	org/antivirus/core/scanners/l:a	Lorg/antivirus/core/scanners/m;
    //   402: getstatic 373	org/antivirus/core/scanners/m:a	Lorg/antivirus/core/scanners/m;
    //   405: if_acmpeq +77 -> 482
    //   408: invokestatic 381	android/os/Message:obtain	()Landroid/os/Message;
    //   411: astore 27
    //   413: aload 27
    //   415: iconst_2
    //   416: putfield 384	android/os/Message:what	I
    //   419: new 386	android/os/Bundle
    //   422: dup
    //   423: invokespecial 387	android/os/Bundle:<init>	()V
    //   426: astore 28
    //   428: aload 28
    //   430: ldc_w 389
    //   433: iload 21
    //   435: invokevirtual 393	android/os/Bundle:putInt	(Ljava/lang/String;I)V
    //   438: aload 28
    //   440: ldc_w 395
    //   443: iconst_1
    //   444: invokevirtual 399	android/os/Bundle:putBoolean	(Ljava/lang/String;Z)V
    //   447: aload 28
    //   449: ldc_w 401
    //   452: aload 20
    //   454: getfield 267	org/antivirus/core/scanners/x:a	Ljava/lang/String;
    //   457: invokevirtual 405	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   460: aload 27
    //   462: aload 28
    //   464: invokevirtual 409	android/os/Message:setData	(Landroid/os/Bundle;)V
    //   467: aload 27
    //   469: aconst_null
    //   470: putfield 413	android/os/Message:obj	Ljava/lang/Object;
    //   473: aload_0
    //   474: getfield 365	org/antivirus/core/scanners/w:d	Landroid/os/Messenger;
    //   477: aload 27
    //   479: invokevirtual 419	android/os/Messenger:send	(Landroid/os/Message;)V
    //   482: iinc 19 1
    //   485: goto -349 -> 136
    //   488: aload_2
    //   489: getfield 358	org/antivirus/core/scanners/ScannerPackagesConfig:c	Ljava/util/List;
    //   492: iconst_0
    //   493: invokeinterface 437 2 0
    //   498: checkcast 49	java/lang/String
    //   501: astore 10
    //   503: new 96	java/util/ArrayList
    //   506: dup
    //   507: invokespecial 97	java/util/ArrayList:<init>	()V
    //   510: astore 11
    //   512: ldc 47
    //   514: astore 12
    //   516: aload 7
    //   518: aload 10
    //   520: iconst_0
    //   521: invokevirtual 215	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   524: astore 31
    //   526: aload 31
    //   528: ifnull +13 -> 541
    //   531: aload 31
    //   533: getfield 133	android/content/pm/PackageInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   536: getfield 138	android/content/pm/ApplicationInfo:sourceDir	Ljava/lang/String;
    //   539: astore 12
    //   541: aload 11
    //   543: new 126	org/antivirus/core/scanners/x
    //   546: dup
    //   547: aload_0
    //   548: aload 10
    //   550: aload 12
    //   552: invokespecial 141	org/antivirus/core/scanners/x:<init>	(Lorg/antivirus/core/scanners/w;Ljava/lang/String;Ljava/lang/String;)V
    //   555: invokevirtual 145	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   558: pop
    //   559: aload 11
    //   561: astore 15
    //   563: iconst_1
    //   564: istore 16
    //   566: goto -450 -> 116
    //   569: astore 13
    //   571: aload 13
    //   573: invokestatic 93	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   576: goto -35 -> 541
    //   579: astore_3
    //   580: aload 6
    //   582: astore 4
    //   584: aload_3
    //   585: invokestatic 93	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   588: aload 4
    //   590: ifnull -518 -> 72
    //   593: aload 4
    //   595: invokevirtual 351	org/antivirus/core/c/b:a	()V
    //   598: goto -526 -> 72
    //   601: aload 7
    //   603: aload 20
    //   605: getfield 267	org/antivirus/core/scanners/x:a	Ljava/lang/String;
    //   608: iconst_m1
    //   609: invokevirtual 215	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   612: astore 22
    //   614: aload_0
    //   615: aload 20
    //   617: aload 20
    //   619: getfield 267	org/antivirus/core/scanners/x:a	Ljava/lang/String;
    //   622: invokespecial 342	org/antivirus/core/scanners/w:a	(Lorg/antivirus/core/scanners/x;Ljava/lang/String;)Z
    //   625: ifeq +9 -> 634
    //   628: iconst_0
    //   629: istore 23
    //   631: goto -312 -> 319
    //   634: aload 20
    //   636: aload 22
    //   638: invokestatic 439	org/antivirus/core/scanners/w:a	(Lorg/antivirus/core/scanners/x;Landroid/content/pm/PackageInfo;)V
    //   641: aload_0
    //   642: aload 20
    //   644: aload 20
    //   646: getfield 237	org/antivirus/core/scanners/x:b	Ljava/util/List;
    //   649: invokeinterface 109 1 0
    //   654: invokespecial 441	org/antivirus/core/scanners/w:a	(Lorg/antivirus/core/scanners/x;Ljava/util/ListIterator;)Z
    //   657: ifne +9 -> 666
    //   660: iconst_0
    //   661: istore 23
    //   663: goto -344 -> 319
    //   666: aload_0
    //   667: aload 20
    //   669: aload 20
    //   671: getfield 248	org/antivirus/core/scanners/x:e	Ljava/util/List;
    //   674: invokeinterface 109 1 0
    //   679: invokespecial 441	org/antivirus/core/scanners/w:a	(Lorg/antivirus/core/scanners/x;Ljava/util/ListIterator;)Z
    //   682: ifne +9 -> 691
    //   685: iconst_0
    //   686: istore 23
    //   688: goto -369 -> 319
    //   691: aload_0
    //   692: aload 20
    //   694: aload 20
    //   696: getfield 253	org/antivirus/core/scanners/x:d	Ljava/util/List;
    //   699: invokeinterface 109 1 0
    //   704: invokespecial 441	org/antivirus/core/scanners/w:a	(Lorg/antivirus/core/scanners/x;Ljava/util/ListIterator;)Z
    //   707: ifne +9 -> 716
    //   710: iconst_0
    //   711: istore 23
    //   713: goto -394 -> 319
    //   716: aload_0
    //   717: aload 20
    //   719: aload 20
    //   721: getfield 262	org/antivirus/core/scanners/x:c	Ljava/util/List;
    //   724: invokeinterface 109 1 0
    //   729: invokespecial 441	org/antivirus/core/scanners/w:a	(Lorg/antivirus/core/scanners/x;Ljava/util/ListIterator;)Z
    //   732: ifne +258 -> 990
    //   735: iconst_0
    //   736: istore 23
    //   738: goto -419 -> 319
    //   741: aload 20
    //   743: getfield 422	org/antivirus/core/scanners/x:h	Ljava/lang/String;
    //   746: ldc_w 443
    //   749: invokevirtual 74	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   752: ifeq +11 -> 763
    //   755: getstatic 445	org/antivirus/core/scanners/f:d	Lorg/antivirus/core/scanners/f;
    //   758: astore 26
    //   760: goto -417 -> 343
    //   763: aload 20
    //   765: getfield 422	org/antivirus/core/scanners/x:h	Ljava/lang/String;
    //   768: ldc_w 447
    //   771: invokevirtual 74	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   774: ifeq +11 -> 785
    //   777: getstatic 449	org/antivirus/core/scanners/f:b	Lorg/antivirus/core/scanners/f;
    //   780: astore 26
    //   782: goto -439 -> 343
    //   785: getstatic 451	org/antivirus/core/scanners/f:e	Lorg/antivirus/core/scanners/f;
    //   788: astore 26
    //   790: goto -447 -> 343
    //   793: iload 16
    //   795: ifeq -313 -> 482
    //   798: aload 20
    //   800: getfield 422	org/antivirus/core/scanners/x:h	Ljava/lang/String;
    //   803: ldc_w 424
    //   806: invokevirtual 74	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   809: ifeq +90 -> 899
    //   812: getstatic 429	org/antivirus/core/scanners/f:c	Lorg/antivirus/core/scanners/f;
    //   815: astore 24
    //   817: new 386	android/os/Bundle
    //   820: dup
    //   821: invokespecial 387	android/os/Bundle:<init>	()V
    //   824: astore 25
    //   826: aload 25
    //   828: ldc_w 453
    //   831: aload 20
    //   833: getfield 267	org/antivirus/core/scanners/x:a	Ljava/lang/String;
    //   836: invokevirtual 405	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   839: aload 25
    //   841: ldc_w 455
    //   844: aload 20
    //   846: getfield 295	org/antivirus/core/scanners/x:f	Ljava/lang/String;
    //   849: invokevirtual 405	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   852: aload 25
    //   854: ldc_w 457
    //   857: aload 20
    //   859: getfield 299	org/antivirus/core/scanners/x:g	Ljava/lang/String;
    //   862: invokevirtual 405	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   865: aload 25
    //   867: ldc_w 459
    //   870: aload 24
    //   872: invokevirtual 463	android/os/Bundle:putSerializable	(Ljava/lang/String;Ljava/io/Serializable;)V
    //   875: aload_0
    //   876: aload 25
    //   878: invokevirtual 465	org/antivirus/core/scanners/w:a	(Landroid/os/Bundle;)V
    //   881: goto -399 -> 482
    //   884: astore 17
    //   886: aload 17
    //   888: invokestatic 93	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   891: aload 6
    //   893: invokevirtual 351	org/antivirus/core/c/b:a	()V
    //   896: goto -824 -> 72
    //   899: aload 20
    //   901: getfield 422	org/antivirus/core/scanners/x:h	Ljava/lang/String;
    //   904: ldc_w 443
    //   907: invokevirtual 74	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   910: ifeq +11 -> 921
    //   913: getstatic 445	org/antivirus/core/scanners/f:d	Lorg/antivirus/core/scanners/f;
    //   916: astore 24
    //   918: goto -101 -> 817
    //   921: aload 20
    //   923: getfield 422	org/antivirus/core/scanners/x:h	Ljava/lang/String;
    //   926: ldc_w 447
    //   929: invokevirtual 74	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   932: ifeq +11 -> 943
    //   935: getstatic 449	org/antivirus/core/scanners/f:b	Lorg/antivirus/core/scanners/f;
    //   938: astore 24
    //   940: goto -123 -> 817
    //   943: getstatic 451	org/antivirus/core/scanners/f:e	Lorg/antivirus/core/scanners/f;
    //   946: astore 24
    //   948: goto -131 -> 817
    //   951: astore 5
    //   953: aconst_null
    //   954: astore 6
    //   956: aload 6
    //   958: ifnull +8 -> 966
    //   961: aload 6
    //   963: invokevirtual 351	org/antivirus/core/c/b:a	()V
    //   966: aload 5
    //   968: athrow
    //   969: astore 5
    //   971: goto -15 -> 956
    //   974: astore 5
    //   976: aload 4
    //   978: astore 6
    //   980: goto -24 -> 956
    //   983: astore_3
    //   984: aconst_null
    //   985: astore 4
    //   987: goto -403 -> 584
    //   990: iconst_1
    //   991: istore 23
    //   993: goto -674 -> 319
    //
    // Exception table:
    //   from	to	target	type
    //   516	541	569	java/lang/Exception
    //   23	62	579	java/lang/Exception
    //   73	126	579	java/lang/Exception
    //   488	516	579	java/lang/Exception
    //   541	576	579	java/lang/Exception
    //   886	891	579	java/lang/Exception
    //   126	482	884	java/lang/Exception
    //   601	881	884	java/lang/Exception
    //   899	948	884	java/lang/Exception
    //   8	23	951	finally
    //   23	62	969	finally
    //   73	126	969	finally
    //   126	482	969	finally
    //   488	516	969	finally
    //   516	541	969	finally
    //   541	576	969	finally
    //   601	881	969	finally
    //   886	891	969	finally
    //   899	948	969	finally
    //   584	588	974	finally
    //   8	23	983	java/lang/Exception
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.scanners.w
 * JD-Core Version:    0.6.2
 */