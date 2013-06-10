package org.antivirus.core.scanners;

import android.content.Context;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import android.text.TextUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import org.antivirus.core.EngineSettings;
import org.antivirus.core.Logger;
import org.antivirus.core.c.b;
import org.antivirus.core.c.d;
import org.antivirus.core.c.e;

public class s extends j
{
  private static final byte[] j = { 80, 75, 3, 4 };
  private static final byte[] k = { 100, 101, 120, 10, 48, 51, 53, 0 };
  private static final byte[] l = { 88, 53, 79, 33, 80, 37, 64, 65 };
  private static final int m;
  private FileScannerJniWrapper g;
  private int h;
  private ArrayList i;

  static
  {
    if (j.length > k.length);
    for (int n = j.length; ; n = k.length)
    {
      m = n;
      return;
    }
  }

  protected s(EngineSettings paramEngineSettings, Handler paramHandler, l paraml)
  {
    super(paramEngineSettings, paramHandler, paraml);
    this.a = new ScannerFilesResult();
    if (this.c != null)
    {
      ((ScannerFilesConfig)this.c).a();
      paramEngineSettings.getIgnoreFiles();
      return;
    }
    this.c = new ScannerFilesConfig();
    ScannerFilesConfig localScannerFilesConfig = (ScannerFilesConfig)this.c;
    if (paramEngineSettings.isPUPEnabled());
    for (int n = 5; ; n = 9999)
    {
      localScannerFilesConfig.g = n;
      String str = Environment.getExternalStorageDirectory().getAbsolutePath();
      ((ScannerFilesConfig)this.c).e.add(new File(str));
      break;
    }
  }

  private int a(String paramString)
  {
    long l1 = System.currentTimeMillis();
    boolean bool = TextUtils.isEmpty(paramString);
    int n = 0;
    if (bool)
      return n;
    LinkedList localLinkedList = new LinkedList();
    localLinkedList.add(new File(paramString));
    int i1 = 0;
    while (true)
    {
      int i2;
      if ((localLinkedList.size() > 0) && (!this.f))
      {
        File localFile = (File)localLinkedList.remove();
        if ((localFile.isDirectory()) && (!a(localFile)))
        {
          String[] arrayOfString = localFile.list();
          if (arrayOfString == null)
            continue;
          int i3 = arrayOfString.length;
          for (int i4 = 0; i4 < i3; i4++)
            localLinkedList.add(new File(localFile, arrayOfString[i4]));
          continue;
        }
        i2 = i1 + 1;
        if ((i2 % 500 != 0) || (System.currentTimeMillis() - l1 <= 10000L))
          break label190;
        n = 2 * (i2 + localLinkedList.size());
        break;
      }
      n = i1;
      break;
      label190: i1 = i2;
    }
  }

  private void a(Context paramContext, List paramList, ArrayList paramArrayList, ScannerFilesResult paramScannerFilesResult, String paramString, int paramInt)
  {
    if ((paramList == null) || (paramArrayList == null));
    String str;
    do
    {
      return;
      while ((paramList.size() <= 0) || (this.f))
        if (localb != null)
          localb.a();
      str = ((File)paramList.remove(0)).getAbsolutePath();
    }
    while ((TextUtils.isEmpty(str)) || (paramArrayList == null));
    boolean bool = ((ScannerFilesConfig)this.c).d.booleanValue();
    b localb = null;
    if (bool)
      localb = new b();
    Message localMessage4;
    if ((this.d != null) && (this.c.a != m.a))
    {
      localMessage4 = Message.obtain();
      localMessage4.what = 2;
      Bundle localBundle4 = new Bundle();
      localBundle4.putString("filename", "preparing...");
      localMessage4.setData(localBundle4);
    }
    while (true)
    {
      LinkedList localLinkedList;
      File localFile1;
      int i1;
      int i3;
      int i2;
      try
      {
        this.d.send(localMessage4);
        if (this.c.a == m.a)
          break label921;
        n = a(str);
        if ((this.d != null) && (this.c.a != m.a))
        {
          localMessage3 = Message.obtain();
          localMessage3.what = 2;
          Bundle localBundle3 = new Bundle();
          localBundle3.putString("filename", "starting scan");
          localMessage3.setData(localBundle3);
        }
      }
      catch (Exception localException4)
      {
        try
        {
          Message localMessage3;
          this.d.send(localMessage3);
          localLinkedList = new LinkedList();
          localFile1 = new File(str);
          if (localFile1.isDirectory())
          {
            String[] arrayOfString2 = localFile1.list();
            if (arrayOfString2 != null)
            {
              int i11 = arrayOfString2.length;
              int i12 = 0;
              if (i12 < i11)
              {
                localLinkedList.add(new File(localFile1, arrayOfString2[i12]));
                i12++;
                continue;
                localException4 = localException4;
                Logger.log(localException4);
              }
            }
          }
        }
        catch (Exception localException3)
        {
          Logger.log(localException3);
          continue;
          i1 = -1;
          i3 = 0;
          i2 = n;
        }
      }
      label356: File localFile2;
      int i4;
      Message localMessage2;
      int i8;
      while (true)
        if ((localLinkedList.size() > 0) && (!this.f))
        {
          localFile2 = (File)localLinkedList.remove();
          if ((localFile2.isDirectory()) && (!a(localFile2)))
          {
            String[] arrayOfString1 = localFile2.list();
            if (arrayOfString1 != null)
            {
              int i9 = arrayOfString1.length;
              for (int i10 = 0; i10 < i9; i10++)
                localLinkedList.add(new File(localFile2, arrayOfString1[i10]));
              continue;
              localLinkedList.add(localFile1);
              i1 = -1;
              i2 = n;
              i3 = 0;
            }
          }
          else if (!paramString.contains(localFile2.getAbsolutePath()))
          {
            paramScannerFilesResult.b = (1 + paramScannerFilesResult.b);
            if ((this.d == null) || (this.c.a == m.a))
              break label906;
            if (i2 == 0)
              i2 = 1;
            i4 = 2 * (100 * paramScannerFilesResult.b) / i2;
            if ((i1 >= i4) && (this.c.a != m.c))
              break label891;
            localMessage2 = Message.obtain();
            localMessage2.what = 2;
            Bundle localBundle2 = new Bundle();
            if (i4 / 2 > 99)
            {
              i8 = 99;
              label592: localBundle2.putInt("percent", i8);
              localBundle2.putString("file-name", localFile2.getAbsolutePath());
              localBundle2.putBoolean("threat", false);
              localMessage2.setData(localBundle2);
            }
          }
        }
      while (true)
      {
        try
        {
          this.d.send(localMessage2);
          i5 = i4;
          i6 = i2;
          t localt = new t((byte)0);
          if (a(paramContext, localb, localFile2.getAbsolutePath(), paramArrayList, localt, paramInt))
          {
            paramScannerFilesResult.a(localFile2.getAbsolutePath(), localt.a, localt.b, localt.c, f.a, localt.d);
            if ((this.d != null) && (this.c.a != m.a))
            {
              localMessage1 = Message.obtain();
              localMessage1.what = 2;
              Bundle localBundle1 = new Bundle();
              if (i5 / 2 > 99)
              {
                i7 = 99;
                localBundle1.putInt("percent", i7);
                localBundle1.putString("file-name", localFile2.getAbsolutePath());
                localBundle1.putBoolean("threat", true);
                localMessage1.setData(localBundle1);
              }
            }
          }
        }
        catch (Exception localException2)
        {
          try
          {
            Message localMessage1;
            this.d.send(localMessage1);
            i1 = i4;
            i3 = i5;
            i2 = i6;
            break label356;
            i8 = i4 / 2;
            break label592;
            localException2 = localException2;
            Logger.log(localException2);
            i5 = i4;
            i6 = i2;
            continue;
            int i7 = i5 / 2;
          }
          catch (Exception localException1)
          {
            Logger.log(localException1);
          }
          i1 = i4;
          i3 = i5;
          i2 = i6;
        }
        break label356;
        break;
        label891: int i5 = i4;
        int i6 = i2;
        i4 = i1;
        continue;
        label906: i4 = i1;
        i5 = i3;
        i6 = i2;
      }
      label921: int n = 1;
    }
  }

  public static void a(Context paramContext, g paramg, ScannerFilesResult paramScannerFilesResult)
  {
    if ((paramScannerFilesResult == null) || (paramScannerFilesResult.c == null))
    {
      Logger.errorBadAgrument();
      return;
    }
    while (true)
    {
      String str;
      File localFile;
      if (paramScannerFilesResult.c.size() > 0)
      {
        str = (String)paramScannerFilesResult.c.remove(0);
        localFile = new File(str);
      }
      while (true)
      {
        try
        {
          localFile.delete();
          if ((paramg == null) || (paramg.f == null))
            break label106;
          paramg.f.a(str);
          i1 = 1;
          n = i1;
        }
        catch (Exception localException)
        {
          Logger.log(localException);
          continue;
        }
        if (n == 0)
          break;
        paramg.b(paramContext);
        break;
        label106: int i1 = n;
      }
      int n = 0;
    }
  }

  // ERROR //
  private static boolean a(Context paramContext, String paramString, b paramb, t paramt, int paramInt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aload_1
    //   4: invokestatic 113	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   7: istore 6
    //   9: iconst_0
    //   10: istore 7
    //   12: iload 6
    //   14: ifeq +6 -> 20
    //   17: iload 7
    //   19: ireturn
    //   20: new 84	java/io/File
    //   23: dup
    //   24: aload_1
    //   25: invokespecial 94	java/io/File:<init>	(Ljava/lang/String;)V
    //   28: astore 8
    //   30: aload 8
    //   32: invokevirtual 303	java/io/File:exists	()Z
    //   35: istore 9
    //   37: iconst_0
    //   38: istore 7
    //   40: iload 9
    //   42: ifeq -25 -> 17
    //   45: aload 8
    //   47: invokevirtual 306	java/io/File:canRead	()Z
    //   50: istore 10
    //   52: iconst_0
    //   53: istore 7
    //   55: iload 10
    //   57: ifeq -40 -> 17
    //   60: aload 8
    //   62: invokevirtual 309	java/io/File:isFile	()Z
    //   65: istore 11
    //   67: iconst_0
    //   68: istore 7
    //   70: iload 11
    //   72: ifeq -55 -> 17
    //   75: aload 8
    //   77: invokevirtual 132	java/io/File:isDirectory	()Z
    //   80: istore 12
    //   82: iconst_0
    //   83: istore 7
    //   85: iload 12
    //   87: ifne -70 -> 17
    //   90: new 311	java/io/FileInputStream
    //   93: dup
    //   94: aload 8
    //   96: invokespecial 314	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   99: astore 13
    //   101: getstatic 43	org/antivirus/core/scanners/s:m	I
    //   104: newarray byte
    //   106: astore 24
    //   108: aload 13
    //   110: aload 24
    //   112: iconst_0
    //   113: getstatic 43	org/antivirus/core/scanners/s:m	I
    //   116: invokevirtual 318	java/io/FileInputStream:read	([BII)I
    //   119: pop
    //   120: aload 13
    //   122: invokevirtual 321	java/io/FileInputStream:close	()V
    //   125: iconst_0
    //   126: istore 26
    //   128: iconst_1
    //   129: istore 27
    //   131: iconst_1
    //   132: istore 28
    //   134: iconst_1
    //   135: istore 29
    //   137: iload 29
    //   139: ifne +8 -> 147
    //   142: iload 28
    //   144: ifeq +107 -> 251
    //   147: iload 26
    //   149: getstatic 43	org/antivirus/core/scanners/s:m	I
    //   152: if_icmpge +99 -> 251
    //   155: iload 26
    //   157: getstatic 33	org/antivirus/core/scanners/s:k	[B
    //   160: arraylength
    //   161: if_icmpge +754 -> 915
    //   164: iload 29
    //   166: ifeq +743 -> 909
    //   169: aload 24
    //   171: iload 26
    //   173: baload
    //   174: getstatic 33	org/antivirus/core/scanners/s:k	[B
    //   177: iload 26
    //   179: baload
    //   180: if_icmpne +729 -> 909
    //   183: iconst_1
    //   184: istore 54
    //   186: iload 26
    //   188: getstatic 23	org/antivirus/core/scanners/s:j	[B
    //   191: arraylength
    //   192: if_icmpge +25 -> 217
    //   195: iload 28
    //   197: ifeq +725 -> 922
    //   200: aload 24
    //   202: iload 26
    //   204: baload
    //   205: getstatic 23	org/antivirus/core/scanners/s:j	[B
    //   208: iload 26
    //   210: baload
    //   211: if_icmpne +711 -> 922
    //   214: iconst_1
    //   215: istore 28
    //   217: iload 26
    //   219: getstatic 41	org/antivirus/core/scanners/s:l	[B
    //   222: arraylength
    //   223: if_icmpge +676 -> 899
    //   226: iload 27
    //   228: ifeq +700 -> 928
    //   231: aload 24
    //   233: iload 26
    //   235: baload
    //   236: getstatic 41	org/antivirus/core/scanners/s:l	[B
    //   239: iload 26
    //   241: baload
    //   242: if_icmpne +686 -> 928
    //   245: iconst_1
    //   246: istore 27
    //   248: goto +651 -> 899
    //   251: iload 28
    //   253: ifeq +637 -> 890
    //   256: new 323	java/util/jar/JarFile
    //   259: dup
    //   260: aload 8
    //   262: invokespecial 324	java/util/jar/JarFile:<init>	(Ljava/io/File;)V
    //   265: astore 21
    //   267: aload 21
    //   269: ldc_w 326
    //   272: invokevirtual 330	java/util/jar/JarFile:getEntry	(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    //   275: astore 32
    //   277: iconst_0
    //   278: istore 7
    //   280: aload 32
    //   282: ifnull +602 -> 884
    //   285: aload 21
    //   287: aload 32
    //   289: invokevirtual 334	java/util/jar/JarFile:getInputStream	(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    //   292: astore 51
    //   294: aload 51
    //   296: invokestatic 339	org/a/a/a/b/a:a	(Ljava/io/InputStream;)[B
    //   299: astore 52
    //   301: aload 52
    //   303: invokestatic 345	com/android/vending/licensing/util/Base64:encode	([B)Ljava/lang/String;
    //   306: astore 53
    //   308: aload 51
    //   310: invokevirtual 348	java/io/InputStream:close	()V
    //   313: aload_3
    //   314: aload 52
    //   316: invokestatic 352	org/a/a/a/a/b:a	([B)Ljava/lang/String;
    //   319: putfield 252	org/antivirus/core/scanners/t:b	Ljava/lang/String;
    //   322: aload 53
    //   324: astore 33
    //   326: aload 21
    //   328: ldc_w 354
    //   331: invokevirtual 330	java/util/jar/JarFile:getEntry	(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    //   334: astore 34
    //   336: iconst_0
    //   337: istore 7
    //   339: aload 34
    //   341: ifnull +537 -> 878
    //   344: aload 21
    //   346: aload 34
    //   348: invokevirtual 334	java/util/jar/JarFile:getInputStream	(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    //   351: astore 49
    //   353: aload 49
    //   355: invokestatic 339	org/a/a/a/b/a:a	(Ljava/io/InputStream;)[B
    //   358: astore 50
    //   360: aload 50
    //   362: invokestatic 345	com/android/vending/licensing/util/Base64:encode	([B)Ljava/lang/String;
    //   365: astore 35
    //   367: aload 49
    //   369: invokevirtual 348	java/io/InputStream:close	()V
    //   372: aload_3
    //   373: aload 50
    //   375: invokestatic 352	org/a/a/a/a/b:a	([B)Ljava/lang/String;
    //   378: putfield 250	org/antivirus/core/scanners/t:a	Ljava/lang/String;
    //   381: iconst_0
    //   382: istore 7
    //   384: aload 33
    //   386: ifnull +46 -> 432
    //   389: aload_2
    //   390: aload_0
    //   391: getstatic 359	org/antivirus/core/c/d:b	Lorg/antivirus/core/c/d;
    //   394: aload 33
    //   396: iload 4
    //   398: invokevirtual 362	org/antivirus/core/c/b:a	(Landroid/content/Context;Lorg/antivirus/core/c/d;Ljava/lang/String;I)Lorg/antivirus/core/c/e;
    //   401: astore 48
    //   403: aload 48
    //   405: getfield 366	org/antivirus/core/c/e:c	Z
    //   408: istore 7
    //   410: iload 7
    //   412: ifeq +20 -> 432
    //   415: aload_3
    //   416: aload_3
    //   417: getfield 252	org/antivirus/core/scanners/t:b	Ljava/lang/String;
    //   420: putfield 254	org/antivirus/core/scanners/t:c	Ljava/lang/String;
    //   423: aload_3
    //   424: aload 48
    //   426: getfield 367	org/antivirus/core/c/e:b	I
    //   429: putfield 264	org/antivirus/core/scanners/t:d	I
    //   432: aload 35
    //   434: ifnull +51 -> 485
    //   437: iload 7
    //   439: ifne +46 -> 485
    //   442: aload_2
    //   443: aload_0
    //   444: getstatic 369	org/antivirus/core/c/d:a	Lorg/antivirus/core/c/d;
    //   447: aload 35
    //   449: iload 4
    //   451: invokevirtual 362	org/antivirus/core/c/b:a	(Landroid/content/Context;Lorg/antivirus/core/c/d;Ljava/lang/String;I)Lorg/antivirus/core/c/e;
    //   454: astore 46
    //   456: aload 46
    //   458: getfield 366	org/antivirus/core/c/e:c	Z
    //   461: istore 7
    //   463: iload 7
    //   465: ifeq +20 -> 485
    //   468: aload_3
    //   469: aload_3
    //   470: getfield 250	org/antivirus/core/scanners/t:a	Ljava/lang/String;
    //   473: putfield 254	org/antivirus/core/scanners/t:c	Ljava/lang/String;
    //   476: aload_3
    //   477: aload 46
    //   479: getfield 367	org/antivirus/core/c/e:b	I
    //   482: putfield 264	org/antivirus/core/scanners/t:d	I
    //   485: iload 29
    //   487: ifne +8 -> 495
    //   490: iload 27
    //   492: ifeq +376 -> 868
    //   495: new 311	java/io/FileInputStream
    //   498: dup
    //   499: aload 8
    //   501: invokespecial 314	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   504: astore 36
    //   506: aload 36
    //   508: invokestatic 372	org/a/a/a/b/a:b	(Ljava/io/InputStream;)Ljava/lang/String;
    //   511: astore 39
    //   513: aload_3
    //   514: aload 39
    //   516: putfield 250	org/antivirus/core/scanners/t:a	Ljava/lang/String;
    //   519: aload 39
    //   521: ifnull +336 -> 857
    //   524: aload_2
    //   525: aload_0
    //   526: getstatic 369	org/antivirus/core/c/d:a	Lorg/antivirus/core/c/d;
    //   529: aload 39
    //   531: iload 4
    //   533: invokevirtual 362	org/antivirus/core/c/b:a	(Landroid/content/Context;Lorg/antivirus/core/c/d;Ljava/lang/String;I)Lorg/antivirus/core/c/e;
    //   536: astore 43
    //   538: aload 43
    //   540: getfield 366	org/antivirus/core/c/e:c	Z
    //   543: ifeq +314 -> 857
    //   546: iload 7
    //   548: ifeq +67 -> 615
    //   551: aload 43
    //   553: getfield 367	org/antivirus/core/c/e:b	I
    //   556: aload_3
    //   557: getfield 264	org/antivirus/core/scanners/t:d	I
    //   560: if_icmpge +297 -> 857
    //   563: aload_3
    //   564: aload_3
    //   565: getfield 250	org/antivirus/core/scanners/t:a	Ljava/lang/String;
    //   568: putfield 254	org/antivirus/core/scanners/t:c	Ljava/lang/String;
    //   571: aload_3
    //   572: aload 43
    //   574: getfield 367	org/antivirus/core/c/e:b	I
    //   577: putfield 264	org/antivirus/core/scanners/t:d	I
    //   580: aload 36
    //   582: astore 40
    //   584: iload 7
    //   586: istore 16
    //   588: aload 21
    //   590: ifnull +8 -> 598
    //   593: aload 21
    //   595: invokevirtual 373	java/util/jar/JarFile:close	()V
    //   598: aload 40
    //   600: ifnull +8 -> 608
    //   603: aload 40
    //   605: invokevirtual 321	java/io/FileInputStream:close	()V
    //   608: iload 16
    //   610: istore 7
    //   612: goto -595 -> 17
    //   615: aload 43
    //   617: getfield 366	org/antivirus/core/c/e:c	Z
    //   620: istore 44
    //   622: aload_3
    //   623: aload_3
    //   624: getfield 250	org/antivirus/core/scanners/t:a	Ljava/lang/String;
    //   627: putfield 254	org/antivirus/core/scanners/t:c	Ljava/lang/String;
    //   630: aload_3
    //   631: aload 43
    //   633: getfield 367	org/antivirus/core/c/e:b	I
    //   636: putfield 264	org/antivirus/core/scanners/t:d	I
    //   639: aload 36
    //   641: astore 40
    //   643: iload 44
    //   645: istore 16
    //   647: goto -59 -> 588
    //   650: astore 30
    //   652: aconst_null
    //   653: astore 15
    //   655: iconst_0
    //   656: istore 16
    //   658: aload 5
    //   660: ifnull +8 -> 668
    //   663: aload 5
    //   665: invokevirtual 373	java/util/jar/JarFile:close	()V
    //   668: aload 15
    //   670: ifnull -62 -> 608
    //   673: aload 15
    //   675: invokevirtual 321	java/io/FileInputStream:close	()V
    //   678: goto -70 -> 608
    //   681: astore 17
    //   683: goto -75 -> 608
    //   686: astore 20
    //   688: aconst_null
    //   689: astore 21
    //   691: aload 21
    //   693: ifnull +8 -> 701
    //   696: aload 21
    //   698: invokevirtual 373	java/util/jar/JarFile:close	()V
    //   701: aload 5
    //   703: ifnull +8 -> 711
    //   706: aload 5
    //   708: invokevirtual 321	java/io/FileInputStream:close	()V
    //   711: aload 20
    //   713: athrow
    //   714: astore 42
    //   716: goto -118 -> 598
    //   719: astore 41
    //   721: goto -113 -> 608
    //   724: astore 18
    //   726: goto -58 -> 668
    //   729: astore 23
    //   731: goto -30 -> 701
    //   734: astore 22
    //   736: goto -25 -> 711
    //   739: astore 19
    //   741: aload 13
    //   743: astore 5
    //   745: aload 19
    //   747: astore 20
    //   749: aconst_null
    //   750: astore 21
    //   752: goto -61 -> 691
    //   755: astore 20
    //   757: aconst_null
    //   758: astore 5
    //   760: goto -69 -> 691
    //   763: astore 38
    //   765: aload 36
    //   767: astore 5
    //   769: aload 38
    //   771: astore 20
    //   773: goto -82 -> 691
    //   776: astore 14
    //   778: aload 13
    //   780: astore 15
    //   782: iconst_0
    //   783: istore 16
    //   785: aconst_null
    //   786: astore 5
    //   788: goto -130 -> 658
    //   791: astore 31
    //   793: iload 7
    //   795: istore 16
    //   797: aload 21
    //   799: astore 5
    //   801: aconst_null
    //   802: astore 15
    //   804: goto -146 -> 658
    //   807: astore 47
    //   809: iload 7
    //   811: istore 16
    //   813: aload 21
    //   815: astore 5
    //   817: aconst_null
    //   818: astore 15
    //   820: goto -162 -> 658
    //   823: astore 37
    //   825: aload 21
    //   827: astore 5
    //   829: aload 36
    //   831: astore 15
    //   833: iload 7
    //   835: istore 16
    //   837: goto -179 -> 658
    //   840: astore 45
    //   842: aload 21
    //   844: astore 5
    //   846: aload 36
    //   848: astore 15
    //   850: iload 44
    //   852: istore 16
    //   854: goto -196 -> 658
    //   857: aload 36
    //   859: astore 40
    //   861: iload 7
    //   863: istore 16
    //   865: goto -277 -> 588
    //   868: iload 7
    //   870: istore 16
    //   872: aconst_null
    //   873: astore 40
    //   875: goto -287 -> 588
    //   878: aconst_null
    //   879: astore 35
    //   881: goto -500 -> 381
    //   884: aconst_null
    //   885: astore 33
    //   887: goto -561 -> 326
    //   890: aconst_null
    //   891: astore 21
    //   893: iconst_0
    //   894: istore 7
    //   896: goto -411 -> 485
    //   899: iinc 26 1
    //   902: iload 54
    //   904: istore 29
    //   906: goto -769 -> 137
    //   909: iconst_0
    //   910: istore 54
    //   912: goto -726 -> 186
    //   915: iload 29
    //   917: istore 54
    //   919: goto -733 -> 186
    //   922: iconst_0
    //   923: istore 28
    //   925: goto -708 -> 217
    //   928: iconst_0
    //   929: istore 27
    //   931: goto -32 -> 899
    //
    // Exception table:
    //   from	to	target	type
    //   90	101	650	java/lang/Exception
    //   147	267	650	java/lang/Exception
    //   673	678	681	java/io/IOException
    //   90	101	686	finally
    //   147	267	686	finally
    //   593	598	714	java/io/IOException
    //   603	608	719	java/io/IOException
    //   663	668	724	java/io/IOException
    //   696	701	729	java/io/IOException
    //   706	711	734	java/io/IOException
    //   101	125	739	finally
    //   267	410	755	finally
    //   415	432	755	finally
    //   442	463	755	finally
    //   468	485	755	finally
    //   495	506	755	finally
    //   506	580	763	finally
    //   615	622	763	finally
    //   622	639	763	finally
    //   101	125	776	java/lang/Exception
    //   267	410	791	java/lang/Exception
    //   442	463	791	java/lang/Exception
    //   495	506	791	java/lang/Exception
    //   415	432	807	java/lang/Exception
    //   468	485	807	java/lang/Exception
    //   506	580	823	java/lang/Exception
    //   615	622	823	java/lang/Exception
    //   622	639	840	java/lang/Exception
  }

  private static boolean a(Context paramContext, b paramb, String paramString, ArrayList paramArrayList, t paramt, int paramInt)
  {
    boolean bool1 = false;
    if (paramb != null)
      bool1 = a(paramContext, paramString, paramb, paramt, paramInt);
    if ((!TextUtils.isEmpty(paramString)) && (paramArrayList != null) && (paramArrayList.size() > 0))
    {
      String str = paramString.toLowerCase();
      int n = -1 + paramArrayList.size();
      while ((n >= 0) && (!bool1))
      {
        boolean bool2 = str.contains(((e)paramArrayList.get(n)).a);
        if ((bool2) && (bool2) && (paramt.c == null))
        {
          paramt.c = ((e)paramArrayList.get(n)).a;
          paramt.d = ((e)paramArrayList.get(n)).b;
        }
        n--;
        bool1 = bool2;
      }
    }
    return bool1;
  }

  private static boolean a(File paramFile)
  {
    boolean bool = true;
    if (paramFile == null);
    try
    {
      throw new NullPointerException("null file");
      if (paramFile.getParent() == null);
      while (paramFile.getCanonicalFile().equals(paramFile.getAbsoluteFile()))
      {
        bool = false;
        break;
        File localFile = new File(paramFile.getParentFile().getCanonicalFile(), paramFile.getName());
        paramFile = localFile;
      }
    }
    catch (Exception localException)
    {
    }
    return bool;
  }

  public final void a()
  {
    super.a();
    if (((ScannerFilesConfig)this.c).b.booleanValue())
      this.g.cancel(this.h);
  }

  public final void a(Context paramContext)
  {
    while (true)
    {
      String[] arrayOfString1;
      try
      {
        ScannerFilesResult localScannerFilesResult1 = (ScannerFilesResult)this.a;
        b localb = new b();
        this.i = localb.a(paramContext, d.e, ((ScannerFilesConfig)this.c).g);
        localScannerFilesResult1.d = localb.e(paramContext);
        localb.a();
        if ((this.i == null) || (this.i.size() == 0))
          break;
        if (((ScannerFilesConfig)this.c).b.booleanValue())
        {
          boolean bool = this.f;
          if (bool)
            break;
          try
          {
            String str2 = Environment.getExternalStorageDirectory().getAbsolutePath();
            arrayOfString1 = this.g.scan(this.h, str2);
            if ((arrayOfString1 != null) && (arrayOfString1.length != 0))
              break label398;
            arrayOfString2 = this.g.scan(this.h, "/data/app");
            if ((arrayOfString2 != null) && (arrayOfString2.length > 0))
              this.a.a = false;
            ((ScannerFilesResult)this.a).c = new ArrayList(Arrays.asList(arrayOfString2));
            ((ScannerFilesResult)this.a).b = this.g.getFileCount(this.h);
          }
          catch (Exception localException3)
          {
            Logger.log(localException3);
          }
        }
      }
      catch (Exception localException1)
      {
        Logger.log(localException1);
      }
      if ((this.f) || (this.i == null) || (this.i.size() == 0))
        break;
      String str1 = "";
      if (((ScannerFilesConfig)this.c).c.booleanValue())
      {
        str1 = this.b.getIgnoreFiles();
        if (str1 == null)
          str1 = "";
      }
      while (true)
      {
        try
        {
          if (((ScannerFilesConfig)this.c).e != null)
          {
            localObject = ((ScannerFilesConfig)this.c).e;
            ArrayList localArrayList = this.i;
            ScannerFilesResult localScannerFilesResult2 = (ScannerFilesResult)this.a;
            a(paramContext, (List)localObject, localArrayList, localScannerFilesResult2, str1, ((ScannerFilesConfig)this.c).g);
          }
        }
        catch (Exception localException2)
        {
          Logger.log(localException2);
        }
        Object localObject = new LinkedList();
      }
      label398: String[] arrayOfString2 = arrayOfString1;
    }
  }

  public final void a(Messenger paramMessenger, m paramm)
  {
    super.a(paramMessenger, paramm);
  }

  protected void finalize()
  {
    if (((ScannerFilesConfig)this.c).b.booleanValue())
      this.g.destroy(this.h);
    super.finalize();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.scanners.s
 * JD-Core Version:    0.6.2
 */