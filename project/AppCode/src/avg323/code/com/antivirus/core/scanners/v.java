package com.antivirus.core.scanners;

import android.content.Context;
import android.os.Environment;
import android.os.Handler;
import android.os.Messenger;
import android.text.TextUtils;
import com.antivirus.core.e.d;
import com.antivirus.core.e.e;
import com.avg.toolkit.f.a;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;

public class v extends k
{
  private static final byte[] j = { 80, 75, 3, 4 };
  private static final byte[] k = { 100, 101, 120, 10, 48, 51, 53, 0 };
  private static final byte[] l = { 88, 53, 79, 33, 80, 37, 64, 65 };
  private static final int m;
  private FileScannerJniWrapper f;
  private int g;
  private ArrayList h;
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

  protected v(com.antivirus.core.b paramb, Handler paramHandler, Messenger paramMessenger, m paramm)
  {
    super(paramb, paramHandler, paramm, paramMessenger);
    this.a = new ScannerFilesResult();
    ScannerFilesConfig localScannerFilesConfig;
    if (this.c != null)
    {
      ((ScannerFilesConfig)this.c).a();
      localScannerFilesConfig = (ScannerFilesConfig)this.c;
      if (!paramb.o())
        break label119;
    }
    label119: for (int n = 99999; ; n = 5)
    {
      localScannerFilesConfig.g = n;
      if (paramb.b() == null);
      return;
      this.c = new ScannerFilesConfig();
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
      if ((localLinkedList.size() > 0) && (!b()))
      {
        File localFile = (File)localLinkedList.remove();
        if ((localFile.isDirectory()) && (!b(localFile)))
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
          break label191;
        n = 2 * (i2 + localLinkedList.size());
        break;
      }
      n = i1;
      break;
      label191: i1 = i2;
    }
  }

  private void a(Context paramContext)
  {
    if ((b()) || (this.h == null) || (this.h.size() == 0))
      return;
    String str = "";
    if (((ScannerFilesConfig)this.c).c.booleanValue())
    {
      str = this.b.b();
      if (str == null)
        str = "";
    }
    while (true)
    {
      try
      {
        if (((ScannerFilesConfig)this.c).e == null)
          break label134;
        localObject = ((ScannerFilesConfig)this.c).e;
        a(paramContext, (List)localObject, this.h, (ScannerFilesResult)this.a, str, ((ScannerFilesConfig)this.c).f, ((ScannerFilesConfig)this.c).g);
      }
      catch (Exception localException)
      {
        a.a(localException);
      }
      break;
      label134: Object localObject = new LinkedList();
    }
  }

  public static void a(Context paramContext, h paramh, ScannerFilesResult paramScannerFilesResult)
  {
    if ((paramScannerFilesResult == null) || (paramScannerFilesResult.c == null))
    {
      a.a();
      return;
    }
    while (true)
    {
      label15: if (paramScannerFilesResult.c.size() > 0)
      {
        String str = (String)paramScannerFilesResult.c.remove(0);
        a(new File(str));
        if ((paramh == null) || (paramh.f == null))
          break label91;
        paramh.f.a(str);
      }
      label91: for (int i1 = 1; ; i1 = n)
      {
        n = i1;
        break label15;
        if (n == 0)
          break;
        paramh.b(paramContext);
        break;
      }
      int n = 0;
    }
  }

  // ERROR //
  private void a(Context paramContext, String paramString1, ArrayList paramArrayList, ScannerFilesResult paramScannerFilesResult, String paramString2, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: aload_2
    //   1: invokestatic 116	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   4: ifeq +4 -> 8
    //   7: return
    //   8: aload_3
    //   9: ifnull -2 -> 7
    //   12: aload_0
    //   13: getfield 61	com/antivirus/core/scanners/v:c	Lcom/antivirus/core/scanners/m;
    //   16: checkcast 63	com/antivirus/core/scanners/ScannerFilesConfig
    //   19: astore 8
    //   21: aload 8
    //   23: getfield 201	com/antivirus/core/scanners/ScannerFilesConfig:d	Ljava/lang/Boolean;
    //   26: invokevirtual 163	java/lang/Boolean:booleanValue	()Z
    //   29: istore 9
    //   31: aconst_null
    //   32: astore 10
    //   34: iload 9
    //   36: ifeq +291 -> 327
    //   39: new 203	com/antivirus/core/e/b
    //   42: dup
    //   43: invokespecial 204	com/antivirus/core/e/b:<init>	()V
    //   46: astore 10
    //   48: aload_0
    //   49: aload 10
    //   51: aload_1
    //   52: getstatic 209	com/antivirus/core/e/d:c	Lcom/antivirus/core/e/d;
    //   55: aload 8
    //   57: getfield 74	com/antivirus/core/scanners/ScannerFilesConfig:g	I
    //   60: invokevirtual 212	com/antivirus/core/e/b:a	(Landroid/content/Context;Lcom/antivirus/core/e/d;I)Ljava/util/ArrayList;
    //   63: putfield 214	com/antivirus/core/scanners/v:i	Ljava/util/ArrayList;
    //   66: new 216	com/antivirus/core/scanners/t
    //   69: dup
    //   70: aload 10
    //   72: aload_1
    //   73: getstatic 218	com/antivirus/core/e/d:f	Lcom/antivirus/core/e/d;
    //   76: aload 8
    //   78: getfield 74	com/antivirus/core/scanners/ScannerFilesConfig:g	I
    //   81: invokevirtual 212	com/antivirus/core/e/b:a	(Landroid/content/Context;Lcom/antivirus/core/e/d;I)Ljava/util/ArrayList;
    //   84: invokespecial 221	com/antivirus/core/scanners/t:<init>	(Ljava/util/ArrayList;)V
    //   87: astore 12
    //   89: aload_0
    //   90: getfield 224	com/antivirus/core/scanners/v:d	Landroid/os/Messenger;
    //   93: ifnull +61 -> 154
    //   96: aload_0
    //   97: getfield 61	com/antivirus/core/scanners/v:c	Lcom/antivirus/core/scanners/m;
    //   100: getfield 229	com/antivirus/core/scanners/m:a	Lcom/antivirus/core/scanners/n;
    //   103: getstatic 232	com/antivirus/core/scanners/n:a	Lcom/antivirus/core/scanners/n;
    //   106: if_acmpeq +48 -> 154
    //   109: invokestatic 238	android/os/Message:obtain	()Landroid/os/Message;
    //   112: astore 44
    //   114: aload 44
    //   116: iconst_2
    //   117: putfield 241	android/os/Message:what	I
    //   120: new 243	android/os/Bundle
    //   123: dup
    //   124: invokespecial 244	android/os/Bundle:<init>	()V
    //   127: astore 45
    //   129: aload 45
    //   131: ldc 246
    //   133: ldc 248
    //   135: invokevirtual 252	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   138: aload 44
    //   140: aload 45
    //   142: invokevirtual 256	android/os/Message:setData	(Landroid/os/Bundle;)V
    //   145: aload_0
    //   146: getfield 224	com/antivirus/core/scanners/v:d	Landroid/os/Messenger;
    //   149: aload 44
    //   151: invokevirtual 262	android/os/Messenger:send	(Landroid/os/Message;)V
    //   154: aload_0
    //   155: getfield 61	com/antivirus/core/scanners/v:c	Lcom/antivirus/core/scanners/m;
    //   158: getfield 229	com/antivirus/core/scanners/m:a	Lcom/antivirus/core/scanners/n;
    //   161: getstatic 232	com/antivirus/core/scanners/n:a	Lcom/antivirus/core/scanners/n;
    //   164: if_acmpeq +807 -> 971
    //   167: aload_0
    //   168: aload_2
    //   169: invokespecial 264	com/antivirus/core/scanners/v:a	(Ljava/lang/String;)I
    //   172: istore 13
    //   174: aload_0
    //   175: getfield 224	com/antivirus/core/scanners/v:d	Landroid/os/Messenger;
    //   178: ifnull +62 -> 240
    //   181: aload_0
    //   182: getfield 61	com/antivirus/core/scanners/v:c	Lcom/antivirus/core/scanners/m;
    //   185: getfield 229	com/antivirus/core/scanners/m:a	Lcom/antivirus/core/scanners/n;
    //   188: getstatic 232	com/antivirus/core/scanners/n:a	Lcom/antivirus/core/scanners/n;
    //   191: if_acmpeq +49 -> 240
    //   194: invokestatic 238	android/os/Message:obtain	()Landroid/os/Message;
    //   197: astore 41
    //   199: aload 41
    //   201: iconst_2
    //   202: putfield 241	android/os/Message:what	I
    //   205: new 243	android/os/Bundle
    //   208: dup
    //   209: invokespecial 244	android/os/Bundle:<init>	()V
    //   212: astore 42
    //   214: aload 42
    //   216: ldc 246
    //   218: ldc_w 266
    //   221: invokevirtual 252	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   224: aload 41
    //   226: aload 42
    //   228: invokevirtual 256	android/os/Message:setData	(Landroid/os/Bundle;)V
    //   231: aload_0
    //   232: getfield 224	com/antivirus/core/scanners/v:d	Landroid/os/Messenger;
    //   235: aload 41
    //   237: invokevirtual 262	android/os/Messenger:send	(Landroid/os/Message;)V
    //   240: new 118	java/util/LinkedList
    //   243: dup
    //   244: invokespecial 119	java/util/LinkedList:<init>	()V
    //   247: astore 14
    //   249: new 87	java/io/File
    //   252: dup
    //   253: aload_2
    //   254: invokespecial 97	java/io/File:<init>	(Ljava/lang/String;)V
    //   257: astore 15
    //   259: aload 15
    //   261: invokevirtual 133	java/io/File:isDirectory	()Z
    //   264: ifeq +194 -> 458
    //   267: aload 15
    //   269: invokevirtual 140	java/io/File:list	()[Ljava/lang/String;
    //   272: astore 37
    //   274: aload 37
    //   276: ifnull +77 -> 353
    //   279: aload 37
    //   281: arraylength
    //   282: istore 38
    //   284: iconst_0
    //   285: istore 39
    //   287: iload 39
    //   289: iload 38
    //   291: if_icmpge +62 -> 353
    //   294: aload 14
    //   296: new 87	java/io/File
    //   299: dup
    //   300: aload 15
    //   302: aload 37
    //   304: iload 39
    //   306: aaload
    //   307: invokespecial 143	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   310: invokevirtual 120	java/util/LinkedList:add	(Ljava/lang/Object;)Z
    //   313: pop
    //   314: iinc 39 1
    //   317: goto -30 -> 287
    //   320: astore 11
    //   322: aload 11
    //   324: invokestatic 176	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   327: aconst_null
    //   328: astore 12
    //   330: goto -241 -> 89
    //   333: astore 46
    //   335: aload 46
    //   337: invokestatic 176	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   340: goto -186 -> 154
    //   343: astore 43
    //   345: aload 43
    //   347: invokestatic 176	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   350: goto -110 -> 240
    //   353: iconst_m1
    //   354: istore 17
    //   356: iconst_0
    //   357: istore 19
    //   359: iload 13
    //   361: istore 18
    //   363: aload 14
    //   365: invokevirtual 124	java/util/LinkedList:size	()I
    //   368: ifle +560 -> 928
    //   371: aload_0
    //   372: invokevirtual 126	com/antivirus/core/scanners/v:b	()Z
    //   375: ifne +553 -> 928
    //   378: aload 14
    //   380: invokevirtual 130	java/util/LinkedList:remove	()Ljava/lang/Object;
    //   383: checkcast 87	java/io/File
    //   386: astore 20
    //   388: aload 20
    //   390: invokevirtual 133	java/io/File:isDirectory	()Z
    //   393: ifeq +86 -> 479
    //   396: aload_0
    //   397: aload 20
    //   399: invokespecial 136	com/antivirus/core/scanners/v:b	(Ljava/io/File;)Z
    //   402: ifne +77 -> 479
    //   405: aload 20
    //   407: invokevirtual 140	java/io/File:list	()[Ljava/lang/String;
    //   410: astore 33
    //   412: aload 33
    //   414: ifnull -51 -> 363
    //   417: aload 33
    //   419: arraylength
    //   420: istore 34
    //   422: iconst_0
    //   423: istore 35
    //   425: iload 35
    //   427: iload 34
    //   429: if_icmpge -66 -> 363
    //   432: aload 14
    //   434: new 87	java/io/File
    //   437: dup
    //   438: aload 20
    //   440: aload 33
    //   442: iload 35
    //   444: aaload
    //   445: invokespecial 143	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   448: invokevirtual 120	java/util/LinkedList:add	(Ljava/lang/Object;)Z
    //   451: pop
    //   452: iinc 35 1
    //   455: goto -30 -> 425
    //   458: aload 14
    //   460: aload 15
    //   462: invokevirtual 120	java/util/LinkedList:add	(Ljava/lang/Object;)Z
    //   465: pop
    //   466: iconst_m1
    //   467: istore 17
    //   469: iload 13
    //   471: istore 18
    //   473: iconst_0
    //   474: istore 19
    //   476: goto -113 -> 363
    //   479: aload 5
    //   481: aload 20
    //   483: invokevirtual 90	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   486: invokevirtual 269	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   489: ifne -126 -> 363
    //   492: aload 4
    //   494: iconst_1
    //   495: aload 4
    //   497: getfield 271	com/antivirus/core/scanners/ScannerFilesResult:b	I
    //   500: iadd
    //   501: putfield 271	com/antivirus/core/scanners/ScannerFilesResult:b	I
    //   504: aload_0
    //   505: getfield 224	com/antivirus/core/scanners/v:d	Landroid/os/Messenger;
    //   508: ifnull +448 -> 956
    //   511: aload_0
    //   512: getfield 61	com/antivirus/core/scanners/v:c	Lcom/antivirus/core/scanners/m;
    //   515: getfield 229	com/antivirus/core/scanners/m:a	Lcom/antivirus/core/scanners/n;
    //   518: getstatic 232	com/antivirus/core/scanners/n:a	Lcom/antivirus/core/scanners/n;
    //   521: if_acmpeq +435 -> 956
    //   524: iload 18
    //   526: ifne +6 -> 532
    //   529: iconst_1
    //   530: istore 18
    //   532: iconst_2
    //   533: bipush 100
    //   535: aload 4
    //   537: getfield 271	com/antivirus/core/scanners/ScannerFilesResult:b	I
    //   540: imul
    //   541: imul
    //   542: iload 18
    //   544: idiv
    //   545: istore 21
    //   547: iload 17
    //   549: iload 21
    //   551: if_icmplt +16 -> 567
    //   554: aload_0
    //   555: getfield 61	com/antivirus/core/scanners/v:c	Lcom/antivirus/core/scanners/m;
    //   558: getfield 229	com/antivirus/core/scanners/m:a	Lcom/antivirus/core/scanners/n;
    //   561: getstatic 273	com/antivirus/core/scanners/n:c	Lcom/antivirus/core/scanners/n;
    //   564: if_acmpne +377 -> 941
    //   567: invokestatic 238	android/os/Message:obtain	()Landroid/os/Message;
    //   570: astore 29
    //   572: aload 29
    //   574: iconst_2
    //   575: putfield 241	android/os/Message:what	I
    //   578: new 243	android/os/Bundle
    //   581: dup
    //   582: invokespecial 244	android/os/Bundle:<init>	()V
    //   585: astore 30
    //   587: iload 21
    //   589: iconst_2
    //   590: idiv
    //   591: bipush 99
    //   593: if_icmple +289 -> 882
    //   596: bipush 99
    //   598: istore 31
    //   600: aload 30
    //   602: ldc_w 275
    //   605: iload 31
    //   607: invokevirtual 279	android/os/Bundle:putInt	(Ljava/lang/String;I)V
    //   610: aload 30
    //   612: ldc_w 281
    //   615: aload 20
    //   617: invokevirtual 90	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   620: invokevirtual 252	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   623: aload 30
    //   625: ldc_w 283
    //   628: iconst_0
    //   629: invokevirtual 287	android/os/Bundle:putBoolean	(Ljava/lang/String;Z)V
    //   632: aload 29
    //   634: aload 30
    //   636: invokevirtual 256	android/os/Message:setData	(Landroid/os/Bundle;)V
    //   639: aload_0
    //   640: getfield 224	com/antivirus/core/scanners/v:d	Landroid/os/Messenger;
    //   643: aload 29
    //   645: invokevirtual 262	android/os/Messenger:send	(Landroid/os/Message;)V
    //   648: iload 21
    //   650: istore 22
    //   652: iload 18
    //   654: istore 23
    //   656: new 289	com/antivirus/core/scanners/w
    //   659: dup
    //   660: invokespecial 290	com/antivirus/core/scanners/w:<init>	()V
    //   663: astore 24
    //   665: aload_0
    //   666: aload_1
    //   667: aload 10
    //   669: aload 20
    //   671: invokevirtual 90	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   674: aload_3
    //   675: aload 24
    //   677: iload 7
    //   679: aload 12
    //   681: invokespecial 293	com/antivirus/core/scanners/v:a	(Landroid/content/Context;Lcom/antivirus/core/e/b;Ljava/lang/String;Ljava/util/ArrayList;Lcom/antivirus/core/scanners/w;ILcom/antivirus/core/scanners/t;)Z
    //   684: ifeq +183 -> 867
    //   687: aload 4
    //   689: aload 20
    //   691: invokevirtual 90	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   694: aload 24
    //   696: getfield 296	com/antivirus/core/scanners/w:a	Ljava/lang/String;
    //   699: aload 24
    //   701: getfield 298	com/antivirus/core/scanners/w:b	Ljava/lang/String;
    //   704: aload 24
    //   706: getfield 300	com/antivirus/core/scanners/w:c	Ljava/lang/String;
    //   709: getstatic 305	com/antivirus/core/scanners/g:a	Lcom/antivirus/core/scanners/g;
    //   712: new 307	java/lang/StringBuilder
    //   715: dup
    //   716: invokespecial 308	java/lang/StringBuilder:<init>	()V
    //   719: aload 24
    //   721: getfield 310	com/antivirus/core/scanners/w:d	I
    //   724: invokevirtual 314	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   727: ldc 155
    //   729: invokevirtual 317	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   732: invokevirtual 320	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   735: new 307	java/lang/StringBuilder
    //   738: dup
    //   739: invokespecial 308	java/lang/StringBuilder:<init>	()V
    //   742: aload 24
    //   744: getfield 322	com/antivirus/core/scanners/w:e	I
    //   747: invokevirtual 314	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   750: ldc 155
    //   752: invokevirtual 317	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   755: invokevirtual 320	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   758: aload 24
    //   760: getfield 324	com/antivirus/core/scanners/w:f	Ljava/lang/String;
    //   763: invokevirtual 327	com/antivirus/core/scanners/ScannerFilesResult:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/antivirus/core/scanners/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   766: aload_0
    //   767: getfield 224	com/antivirus/core/scanners/v:d	Landroid/os/Messenger;
    //   770: ifnull +97 -> 867
    //   773: aload_0
    //   774: getfield 61	com/antivirus/core/scanners/v:c	Lcom/antivirus/core/scanners/m;
    //   777: getfield 229	com/antivirus/core/scanners/m:a	Lcom/antivirus/core/scanners/n;
    //   780: getstatic 232	com/antivirus/core/scanners/n:a	Lcom/antivirus/core/scanners/n;
    //   783: if_acmpeq +84 -> 867
    //   786: invokestatic 238	android/os/Message:obtain	()Landroid/os/Message;
    //   789: astore 25
    //   791: aload 25
    //   793: iconst_2
    //   794: putfield 241	android/os/Message:what	I
    //   797: new 243	android/os/Bundle
    //   800: dup
    //   801: invokespecial 244	android/os/Bundle:<init>	()V
    //   804: astore 26
    //   806: iload 22
    //   808: iconst_2
    //   809: idiv
    //   810: bipush 99
    //   812: if_icmple +97 -> 909
    //   815: bipush 99
    //   817: istore 27
    //   819: aload 26
    //   821: ldc_w 275
    //   824: iload 27
    //   826: invokevirtual 279	android/os/Bundle:putInt	(Ljava/lang/String;I)V
    //   829: aload 26
    //   831: ldc_w 281
    //   834: aload 20
    //   836: invokevirtual 90	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   839: invokevirtual 252	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   842: aload 26
    //   844: ldc_w 283
    //   847: iconst_1
    //   848: invokevirtual 287	android/os/Bundle:putBoolean	(Ljava/lang/String;Z)V
    //   851: aload 25
    //   853: aload 26
    //   855: invokevirtual 256	android/os/Message:setData	(Landroid/os/Bundle;)V
    //   858: aload_0
    //   859: getfield 224	com/antivirus/core/scanners/v:d	Landroid/os/Messenger;
    //   862: aload 25
    //   864: invokevirtual 262	android/os/Messenger:send	(Landroid/os/Message;)V
    //   867: iload 21
    //   869: istore 17
    //   871: iload 22
    //   873: istore 19
    //   875: iload 23
    //   877: istore 18
    //   879: goto -516 -> 363
    //   882: iload 21
    //   884: iconst_2
    //   885: idiv
    //   886: istore 31
    //   888: goto -288 -> 600
    //   891: astore 32
    //   893: aload 32
    //   895: invokestatic 176	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   898: iload 21
    //   900: istore 22
    //   902: iload 18
    //   904: istore 23
    //   906: goto -250 -> 656
    //   909: iload 22
    //   911: iconst_2
    //   912: idiv
    //   913: istore 27
    //   915: goto -96 -> 819
    //   918: astore 28
    //   920: aload 28
    //   922: invokestatic 176	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   925: goto -58 -> 867
    //   928: aload 10
    //   930: ifnull -923 -> 7
    //   933: aload 10
    //   935: invokevirtual 328	com/antivirus/core/e/b:a	()V
    //   938: goto -931 -> 7
    //   941: iload 21
    //   943: istore 22
    //   945: iload 18
    //   947: istore 23
    //   949: iload 17
    //   951: istore 21
    //   953: goto -297 -> 656
    //   956: iload 17
    //   958: istore 21
    //   960: iload 19
    //   962: istore 22
    //   964: iload 18
    //   966: istore 23
    //   968: goto -312 -> 656
    //   971: iconst_1
    //   972: istore 13
    //   974: goto -800 -> 174
    //
    // Exception table:
    //   from	to	target	type
    //   48	89	320	java/lang/Exception
    //   145	154	333	java/lang/Exception
    //   231	240	343	java/lang/Exception
    //   639	648	891	java/lang/Exception
    //   858	867	918	java/lang/Exception
  }

  public static void a(File paramFile)
  {
    try
    {
      paramFile.delete();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        a.a(localException);
    }
  }

  private boolean a(Context paramContext, com.antivirus.core.e.b paramb, String paramString, ArrayList paramArrayList, w paramw, int paramInt, t paramt)
  {
    boolean bool1 = false;
    if (paramb != null)
    {
      bool1 = a(paramContext, paramString, paramb, paramw, paramInt, paramt);
      if (!bool1);
    }
    if ((!bool1) && (!TextUtils.isEmpty(paramString)) && (paramArrayList != null) && (paramArrayList.size() > 0))
    {
      String str = paramString.toLowerCase(Locale.ENGLISH);
      int n = -1 + paramArrayList.size();
      while ((n > -1) && (!bool1))
      {
        boolean bool2 = str.contains(((e)paramArrayList.get(n)).a);
        if ((bool2) && (bool2) && (paramw.c == null))
        {
          paramw.c = ((e)paramArrayList.get(n)).a;
          paramw.d = ((e)paramArrayList.get(n)).b;
        }
        n--;
        bool1 = bool2;
      }
    }
    return bool1;
  }

  // ERROR //
  private boolean a(Context paramContext, String paramString, com.antivirus.core.e.b paramb, w paramw, int paramInt, t paramt)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 7
    //   3: aload_2
    //   4: invokestatic 116	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   7: ifeq +9 -> 16
    //   10: iconst_0
    //   11: istore 9
    //   13: iload 9
    //   15: ireturn
    //   16: new 87	java/io/File
    //   19: dup
    //   20: aload_2
    //   21: invokespecial 97	java/io/File:<init>	(Ljava/lang/String;)V
    //   24: astore 8
    //   26: aload 8
    //   28: ifnull +35 -> 63
    //   31: aload 8
    //   33: invokevirtual 356	java/io/File:exists	()Z
    //   36: ifeq +27 -> 63
    //   39: aload 8
    //   41: invokevirtual 359	java/io/File:canRead	()Z
    //   44: ifeq +19 -> 63
    //   47: aload 8
    //   49: invokevirtual 362	java/io/File:isFile	()Z
    //   52: ifeq +11 -> 63
    //   55: aload 8
    //   57: invokevirtual 133	java/io/File:isDirectory	()Z
    //   60: ifeq +9 -> 69
    //   63: iconst_0
    //   64: istore 9
    //   66: goto -53 -> 13
    //   69: aconst_null
    //   70: astore 10
    //   72: new 364	java/io/FileInputStream
    //   75: dup
    //   76: aload 8
    //   78: invokespecial 366	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   81: astore 11
    //   83: getstatic 44	com/antivirus/core/scanners/v:m	I
    //   86: newarray byte
    //   88: astore 26
    //   90: aload 11
    //   92: aload 26
    //   94: iconst_0
    //   95: getstatic 44	com/antivirus/core/scanners/v:m	I
    //   98: invokevirtual 370	java/io/FileInputStream:read	([BII)I
    //   101: pop
    //   102: aload 11
    //   104: invokevirtual 373	java/io/FileInputStream:close	()V
    //   107: iconst_1
    //   108: istore 28
    //   110: iconst_1
    //   111: istore 29
    //   113: iconst_0
    //   114: istore 30
    //   116: iconst_1
    //   117: istore 31
    //   119: iload 28
    //   121: ifne +8 -> 129
    //   124: iload 31
    //   126: ifeq +107 -> 233
    //   129: iload 30
    //   131: getstatic 44	com/antivirus/core/scanners/v:m	I
    //   134: if_icmpge +99 -> 233
    //   137: iload 30
    //   139: getstatic 34	com/antivirus/core/scanners/v:k	[B
    //   142: arraylength
    //   143: if_icmpge +1490 -> 1633
    //   146: iload 28
    //   148: ifeq +1479 -> 1627
    //   151: aload 26
    //   153: iload 30
    //   155: baload
    //   156: getstatic 34	com/antivirus/core/scanners/v:k	[B
    //   159: iload 30
    //   161: baload
    //   162: if_icmpne +1465 -> 1627
    //   165: iconst_1
    //   166: istore 83
    //   168: iload 30
    //   170: getstatic 24	com/antivirus/core/scanners/v:j	[B
    //   173: arraylength
    //   174: if_icmpge +1472 -> 1646
    //   177: iload 31
    //   179: ifeq +1461 -> 1640
    //   182: aload 26
    //   184: iload 30
    //   186: baload
    //   187: getstatic 24	com/antivirus/core/scanners/v:j	[B
    //   190: iload 30
    //   192: baload
    //   193: if_icmpne +1447 -> 1640
    //   196: iconst_1
    //   197: istore 84
    //   199: iload 30
    //   201: getstatic 42	com/antivirus/core/scanners/v:l	[B
    //   204: arraylength
    //   205: if_icmpge +1454 -> 1659
    //   208: iload 29
    //   210: ifeq +1443 -> 1653
    //   213: aload 26
    //   215: iload 30
    //   217: baload
    //   218: getstatic 42	com/antivirus/core/scanners/v:l	[B
    //   221: iload 30
    //   223: baload
    //   224: if_icmpne +1429 -> 1653
    //   227: iconst_1
    //   228: istore 85
    //   230: goto +1379 -> 1609
    //   233: iload 31
    //   235: ifeq +1362 -> 1597
    //   238: new 375	java/util/jar/JarFile
    //   241: dup
    //   242: aload 8
    //   244: invokespecial 376	java/util/jar/JarFile:<init>	(Ljava/io/File;)V
    //   247: astore 22
    //   249: aload 22
    //   251: ldc_w 378
    //   254: invokevirtual 382	java/util/jar/JarFile:getEntry	(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    //   257: astore 34
    //   259: aconst_null
    //   260: astore 10
    //   262: aload 34
    //   264: ifnull +1327 -> 1591
    //   267: aload 22
    //   269: aload 34
    //   271: invokevirtual 386	java/util/jar/JarFile:getInputStream	(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    //   274: astore 80
    //   276: aload 80
    //   278: astore 76
    //   280: aload 76
    //   282: invokestatic 391	a/a/a/a/b/a:a	(Ljava/io/InputStream;)[B
    //   285: astore 81
    //   287: aload 81
    //   289: invokestatic 396	com/a/a/a/a/a:a	([B)Ljava/lang/String;
    //   292: astore 82
    //   294: aload 76
    //   296: invokevirtual 399	java/io/InputStream:close	()V
    //   299: aload 4
    //   301: aload 81
    //   303: invokestatic 403	a/a/a/a/a/b:b	([B)Ljava/lang/String;
    //   306: putfield 298	com/antivirus/core/scanners/w:b	Ljava/lang/String;
    //   309: aload 82
    //   311: astore 35
    //   313: aload 22
    //   315: ldc_w 405
    //   318: invokevirtual 382	java/util/jar/JarFile:getEntry	(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    //   321: astore 38
    //   323: aconst_null
    //   324: astore 39
    //   326: iconst_0
    //   327: istore 7
    //   329: aload 38
    //   331: ifnull +45 -> 376
    //   334: aload 22
    //   336: aload 38
    //   338: invokevirtual 386	java/util/jar/JarFile:getInputStream	(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    //   341: astore 75
    //   343: aload 75
    //   345: astore 76
    //   347: aload 76
    //   349: invokestatic 391	a/a/a/a/b/a:a	(Ljava/io/InputStream;)[B
    //   352: astore 79
    //   354: aload 79
    //   356: invokestatic 396	com/a/a/a/a/a:a	([B)Ljava/lang/String;
    //   359: astore 39
    //   361: aload 76
    //   363: invokevirtual 399	java/io/InputStream:close	()V
    //   366: aload 4
    //   368: aload 79
    //   370: invokestatic 403	a/a/a/a/a/b:b	([B)Ljava/lang/String;
    //   373: putfield 296	com/antivirus/core/scanners/w:a	Ljava/lang/String;
    //   376: iconst_0
    //   377: istore 7
    //   379: aload 35
    //   381: ifnull +49 -> 430
    //   384: aload_3
    //   385: aload_1
    //   386: getstatic 407	com/antivirus/core/e/d:b	Lcom/antivirus/core/e/d;
    //   389: aload 35
    //   391: iload 5
    //   393: invokevirtual 410	com/antivirus/core/e/b:a	(Landroid/content/Context;Lcom/antivirus/core/e/d;Ljava/lang/String;I)Lcom/antivirus/core/e/e;
    //   396: astore 73
    //   398: aload 73
    //   400: getfield 413	com/antivirus/core/e/e:c	Z
    //   403: istore 7
    //   405: iload 7
    //   407: ifeq +23 -> 430
    //   410: aload 4
    //   412: aload 4
    //   414: getfield 298	com/antivirus/core/scanners/w:b	Ljava/lang/String;
    //   417: putfield 300	com/antivirus/core/scanners/w:c	Ljava/lang/String;
    //   420: aload 4
    //   422: aload 73
    //   424: getfield 351	com/antivirus/core/e/e:b	I
    //   427: putfield 310	com/antivirus/core/scanners/w:d	I
    //   430: aload 39
    //   432: ifnull +71 -> 503
    //   435: aload_3
    //   436: aload_1
    //   437: getstatic 415	com/antivirus/core/e/d:a	Lcom/antivirus/core/e/d;
    //   440: aload 39
    //   442: iload 5
    //   444: invokevirtual 410	com/antivirus/core/e/b:a	(Landroid/content/Context;Lcom/antivirus/core/e/d;Ljava/lang/String;I)Lcom/antivirus/core/e/e;
    //   447: astore 72
    //   449: aload 72
    //   451: ifnull +52 -> 503
    //   454: aload 72
    //   456: getfield 413	com/antivirus/core/e/e:c	Z
    //   459: ifeq +44 -> 503
    //   462: iload 7
    //   464: ifeq +16 -> 480
    //   467: aload 72
    //   469: getfield 351	com/antivirus/core/e/e:b	I
    //   472: aload 4
    //   474: getfield 310	com/antivirus/core/scanners/w:d	I
    //   477: if_icmpge +26 -> 503
    //   480: iconst_1
    //   481: istore 7
    //   483: aload 4
    //   485: aload 4
    //   487: getfield 296	com/antivirus/core/scanners/w:a	Ljava/lang/String;
    //   490: putfield 300	com/antivirus/core/scanners/w:c	Ljava/lang/String;
    //   493: aload 4
    //   495: aload 72
    //   497: getfield 351	com/antivirus/core/e/e:b	I
    //   500: putfield 310	com/antivirus/core/scanners/w:d	I
    //   503: iload 7
    //   505: ifeq +49 -> 554
    //   508: aload 4
    //   510: getfield 310	com/antivirus/core/scanners/w:d	I
    //   513: istore 68
    //   515: iload 68
    //   517: iconst_1
    //   518: if_icmpgt +36 -> 554
    //   521: aload 22
    //   523: ifnull +8 -> 531
    //   526: aload 22
    //   528: invokevirtual 416	java/util/jar/JarFile:close	()V
    //   531: iconst_0
    //   532: ifeq +7 -> 539
    //   535: aconst_null
    //   536: invokevirtual 373	java/io/FileInputStream:close	()V
    //   539: iconst_0
    //   540: ifeq +7 -> 547
    //   543: aconst_null
    //   544: invokevirtual 399	java/io/InputStream:close	()V
    //   547: iload 7
    //   549: istore 9
    //   551: goto -538 -> 13
    //   554: aload 22
    //   556: ldc_w 418
    //   559: invokevirtual 382	java/util/jar/JarFile:getEntry	(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    //   562: astore 40
    //   564: aload 40
    //   566: ifnull +1011 -> 1577
    //   569: aload 22
    //   571: aload 40
    //   573: invokevirtual 386	java/util/jar/JarFile:getInputStream	(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    //   576: astore 55
    //   578: aload 55
    //   580: astore 10
    //   582: aload 10
    //   584: ifnull +326 -> 910
    //   587: aload 10
    //   589: invokestatic 423	android/a/a/f:a	(Ljava/io/InputStream;)Lcom/antivirus/core/scanners/a/a;
    //   592: astore 58
    //   594: aload 58
    //   596: ifnull +314 -> 910
    //   599: aload 58
    //   601: getfield 427	com/antivirus/core/scanners/a/a:f	Ljava/util/ArrayList;
    //   604: ifnull +167 -> 771
    //   607: aload 58
    //   609: getfield 427	com/antivirus/core/scanners/a/a:f	Ljava/util/ArrayList;
    //   612: invokevirtual 153	java/util/ArrayList:size	()I
    //   615: ifle +156 -> 771
    //   618: aload 58
    //   620: getfield 427	com/antivirus/core/scanners/a/a:f	Ljava/util/ArrayList;
    //   623: iconst_0
    //   624: invokevirtual 347	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   627: checkcast 185	java/lang/String
    //   630: astore 59
    //   632: aload 4
    //   634: aload 59
    //   636: putfield 324	com/antivirus/core/scanners/w:f	Ljava/lang/String;
    //   639: new 289	com/antivirus/core/scanners/w
    //   642: dup
    //   643: invokespecial 290	com/antivirus/core/scanners/w:<init>	()V
    //   646: astore 60
    //   648: aload 6
    //   650: ifnull +68 -> 718
    //   653: aload 6
    //   655: aload 58
    //   657: aload 60
    //   659: iload 5
    //   661: invokevirtual 430	com/antivirus/core/scanners/t:a	(Lcom/antivirus/core/scanners/a/a;Lcom/antivirus/core/scanners/w;I)Z
    //   664: ifeq +54 -> 718
    //   667: iload 7
    //   669: ifeq +16 -> 685
    //   672: aload 60
    //   674: getfield 310	com/antivirus/core/scanners/w:d	I
    //   677: aload 4
    //   679: getfield 310	com/antivirus/core/scanners/w:d	I
    //   682: if_icmpge +36 -> 718
    //   685: iconst_1
    //   686: istore 7
    //   688: aload 4
    //   690: aload 60
    //   692: getfield 310	com/antivirus/core/scanners/w:d	I
    //   695: putfield 310	com/antivirus/core/scanners/w:d	I
    //   698: aload 4
    //   700: aload 60
    //   702: getfield 300	com/antivirus/core/scanners/w:c	Ljava/lang/String;
    //   705: putfield 300	com/antivirus/core/scanners/w:c	Ljava/lang/String;
    //   708: aload 4
    //   710: aload 60
    //   712: getfield 322	com/antivirus/core/scanners/w:e	I
    //   715: putfield 322	com/antivirus/core/scanners/w:e	I
    //   718: iload 7
    //   720: ifeq +58 -> 778
    //   723: aload 4
    //   725: getfield 310	com/antivirus/core/scanners/w:d	I
    //   728: istore 64
    //   730: iload 64
    //   732: iconst_1
    //   733: if_icmpgt +45 -> 778
    //   736: aload 22
    //   738: ifnull +8 -> 746
    //   741: aload 22
    //   743: invokevirtual 416	java/util/jar/JarFile:close	()V
    //   746: iconst_0
    //   747: ifeq +7 -> 754
    //   750: aconst_null
    //   751: invokevirtual 373	java/io/FileInputStream:close	()V
    //   754: aload 10
    //   756: ifnull +8 -> 764
    //   759: aload 10
    //   761: invokevirtual 399	java/io/InputStream:close	()V
    //   764: iload 7
    //   766: istore 9
    //   768: goto -755 -> 13
    //   771: ldc 155
    //   773: astore 59
    //   775: goto -143 -> 632
    //   778: aload_0
    //   779: getfield 214	com/antivirus/core/scanners/v:i	Ljava/util/ArrayList;
    //   782: ifnull +128 -> 910
    //   785: aload_0
    //   786: getfield 214	com/antivirus/core/scanners/v:i	Ljava/util/ArrayList;
    //   789: invokevirtual 153	java/util/ArrayList:size	()I
    //   792: ifle +118 -> 910
    //   795: iconst_0
    //   796: istore 61
    //   798: iconst_0
    //   799: istore 62
    //   801: iload 61
    //   803: ifne +51 -> 854
    //   806: iload 62
    //   808: aload 58
    //   810: getfield 432	com/antivirus/core/scanners/a/a:a	Ljava/util/ArrayList;
    //   813: invokevirtual 153	java/util/ArrayList:size	()I
    //   816: if_icmpge +38 -> 854
    //   819: aload_0
    //   820: aload_0
    //   821: getfield 214	com/antivirus/core/scanners/v:i	Ljava/util/ArrayList;
    //   824: aload 58
    //   826: getfield 432	com/antivirus/core/scanners/a/a:a	Ljava/util/ArrayList;
    //   829: iload 62
    //   831: invokevirtual 347	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   834: checkcast 185	java/lang/String
    //   837: aload 60
    //   839: invokespecial 435	com/antivirus/core/scanners/v:a	(Ljava/util/ArrayList;Ljava/lang/String;Lcom/antivirus/core/scanners/w;)Z
    //   842: istore 63
    //   844: iinc 62 1
    //   847: iload 63
    //   849: istore 61
    //   851: goto -50 -> 801
    //   854: iload 61
    //   856: ifeq +54 -> 910
    //   859: iload 7
    //   861: ifeq +16 -> 877
    //   864: aload 60
    //   866: getfield 310	com/antivirus/core/scanners/w:d	I
    //   869: aload 4
    //   871: getfield 310	com/antivirus/core/scanners/w:d	I
    //   874: if_icmpge +36 -> 910
    //   877: iconst_1
    //   878: istore 7
    //   880: aload 4
    //   882: aload 60
    //   884: getfield 310	com/antivirus/core/scanners/w:d	I
    //   887: putfield 310	com/antivirus/core/scanners/w:d	I
    //   890: aload 4
    //   892: aload 60
    //   894: getfield 300	com/antivirus/core/scanners/w:c	Ljava/lang/String;
    //   897: putfield 300	com/antivirus/core/scanners/w:c	Ljava/lang/String;
    //   900: aload 4
    //   902: aload 60
    //   904: getfield 322	com/antivirus/core/scanners/w:e	I
    //   907: putfield 322	com/antivirus/core/scanners/w:e	I
    //   910: aload 10
    //   912: astore 56
    //   914: aload 22
    //   916: astore 15
    //   918: iload 7
    //   920: istore 41
    //   922: aload 56
    //   924: astore 42
    //   926: iload 28
    //   928: ifne +8 -> 936
    //   931: iload 29
    //   933: ifeq +634 -> 1567
    //   936: new 364	java/io/FileInputStream
    //   939: dup
    //   940: aload 8
    //   942: invokespecial 366	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   945: astore 43
    //   947: aload 43
    //   949: invokestatic 438	a/a/a/a/b/a:b	(Ljava/io/InputStream;)Ljava/lang/String;
    //   952: astore 46
    //   954: aload 4
    //   956: aload 46
    //   958: putfield 296	com/antivirus/core/scanners/w:a	Ljava/lang/String;
    //   961: aload 46
    //   963: ifnull +593 -> 1556
    //   966: aload_3
    //   967: aload_1
    //   968: getstatic 415	com/antivirus/core/e/d:a	Lcom/antivirus/core/e/d;
    //   971: aload 46
    //   973: iload 5
    //   975: invokevirtual 410	com/antivirus/core/e/b:a	(Landroid/content/Context;Lcom/antivirus/core/e/d;Ljava/lang/String;I)Lcom/antivirus/core/e/e;
    //   978: astore 50
    //   980: aload 50
    //   982: getfield 413	com/antivirus/core/e/e:c	Z
    //   985: ifeq +571 -> 1556
    //   988: iload 41
    //   990: ifeq +82 -> 1072
    //   993: aload 50
    //   995: getfield 351	com/antivirus/core/e/e:b	I
    //   998: aload 4
    //   1000: getfield 310	com/antivirus/core/scanners/w:d	I
    //   1003: if_icmpge +553 -> 1556
    //   1006: aload 4
    //   1008: aload 4
    //   1010: getfield 296	com/antivirus/core/scanners/w:a	Ljava/lang/String;
    //   1013: putfield 300	com/antivirus/core/scanners/w:c	Ljava/lang/String;
    //   1016: aload 4
    //   1018: aload 50
    //   1020: getfield 351	com/antivirus/core/e/e:b	I
    //   1023: putfield 310	com/antivirus/core/scanners/w:d	I
    //   1026: aload 43
    //   1028: astore 47
    //   1030: iload 41
    //   1032: istore 9
    //   1034: aload 15
    //   1036: ifnull +8 -> 1044
    //   1039: aload 15
    //   1041: invokevirtual 416	java/util/jar/JarFile:close	()V
    //   1044: aload 47
    //   1046: ifnull +8 -> 1054
    //   1049: aload 47
    //   1051: invokevirtual 373	java/io/FileInputStream:close	()V
    //   1054: aload 42
    //   1056: ifnull -1043 -> 13
    //   1059: aload 42
    //   1061: invokevirtual 399	java/io/InputStream:close	()V
    //   1064: goto -1051 -> 13
    //   1067: astore 16
    //   1069: goto -1056 -> 13
    //   1072: aload 50
    //   1074: getfield 413	com/antivirus/core/e/e:c	Z
    //   1077: istore 51
    //   1079: aload 4
    //   1081: aload 4
    //   1083: getfield 296	com/antivirus/core/scanners/w:a	Ljava/lang/String;
    //   1086: putfield 300	com/antivirus/core/scanners/w:c	Ljava/lang/String;
    //   1089: aload 4
    //   1091: aload 50
    //   1093: getfield 351	com/antivirus/core/e/e:b	I
    //   1096: putfield 310	com/antivirus/core/scanners/w:d	I
    //   1099: aload 43
    //   1101: astore 47
    //   1103: iload 51
    //   1105: istore 9
    //   1107: goto -73 -> 1034
    //   1110: astore 21
    //   1112: aconst_null
    //   1113: astore 20
    //   1115: aconst_null
    //   1116: astore 22
    //   1118: aload 22
    //   1120: ifnull +8 -> 1128
    //   1123: aload 22
    //   1125: invokevirtual 416	java/util/jar/JarFile:close	()V
    //   1128: aload 20
    //   1130: ifnull +8 -> 1138
    //   1133: aload 20
    //   1135: invokevirtual 373	java/io/FileInputStream:close	()V
    //   1138: aload 10
    //   1140: ifnull +8 -> 1148
    //   1143: aload 10
    //   1145: invokevirtual 399	java/io/InputStream:close	()V
    //   1148: aload 21
    //   1150: athrow
    //   1151: astore 86
    //   1153: iconst_0
    //   1154: istore 9
    //   1156: aconst_null
    //   1157: astore 13
    //   1159: aconst_null
    //   1160: astore 14
    //   1162: aconst_null
    //   1163: astore 15
    //   1165: aload 15
    //   1167: ifnull +8 -> 1175
    //   1170: aload 15
    //   1172: invokevirtual 416	java/util/jar/JarFile:close	()V
    //   1175: aload 13
    //   1177: ifnull +8 -> 1185
    //   1180: aload 13
    //   1182: invokevirtual 373	java/io/FileInputStream:close	()V
    //   1185: aload 14
    //   1187: ifnull -1174 -> 13
    //   1190: aload 14
    //   1192: invokevirtual 399	java/io/InputStream:close	()V
    //   1195: goto -1182 -> 13
    //   1198: astore 18
    //   1200: goto -25 -> 1175
    //   1203: astore 17
    //   1205: goto -20 -> 1185
    //   1208: astore 25
    //   1210: goto -82 -> 1128
    //   1213: astore 24
    //   1215: goto -77 -> 1138
    //   1218: astore 23
    //   1220: goto -72 -> 1148
    //   1223: astore 71
    //   1225: goto -694 -> 531
    //   1228: astore 70
    //   1230: goto -691 -> 539
    //   1233: astore 69
    //   1235: goto -688 -> 547
    //   1238: astore 67
    //   1240: goto -494 -> 746
    //   1243: astore 66
    //   1245: goto -491 -> 754
    //   1248: astore 65
    //   1250: goto -486 -> 764
    //   1253: astore 49
    //   1255: goto -211 -> 1044
    //   1258: astore 48
    //   1260: goto -206 -> 1054
    //   1263: astore 19
    //   1265: aload 11
    //   1267: astore 20
    //   1269: aload 19
    //   1271: astore 21
    //   1273: aconst_null
    //   1274: astore 10
    //   1276: aconst_null
    //   1277: astore 22
    //   1279: goto -161 -> 1118
    //   1282: astore 21
    //   1284: aconst_null
    //   1285: astore 10
    //   1287: aconst_null
    //   1288: astore 20
    //   1290: aconst_null
    //   1291: astore 22
    //   1293: goto -175 -> 1118
    //   1296: astore 21
    //   1298: aconst_null
    //   1299: astore 20
    //   1301: goto -183 -> 1118
    //   1304: astore 78
    //   1306: aload 76
    //   1308: astore 10
    //   1310: aload 78
    //   1312: astore 21
    //   1314: aconst_null
    //   1315: astore 20
    //   1317: goto -199 -> 1118
    //   1320: astore 37
    //   1322: aload 37
    //   1324: astore 21
    //   1326: aconst_null
    //   1327: astore 10
    //   1329: aconst_null
    //   1330: astore 20
    //   1332: goto -214 -> 1118
    //   1335: astore 21
    //   1337: aload 15
    //   1339: astore 22
    //   1341: aload 42
    //   1343: astore 10
    //   1345: aconst_null
    //   1346: astore 20
    //   1348: goto -230 -> 1118
    //   1351: astore 45
    //   1353: aload 43
    //   1355: astore 20
    //   1357: aload 15
    //   1359: astore 22
    //   1361: aload 45
    //   1363: astore 21
    //   1365: aload 42
    //   1367: astore 10
    //   1369: goto -251 -> 1118
    //   1372: astore 12
    //   1374: aload 11
    //   1376: astore 13
    //   1378: iconst_0
    //   1379: istore 9
    //   1381: aconst_null
    //   1382: astore 14
    //   1384: aconst_null
    //   1385: astore 15
    //   1387: goto -222 -> 1165
    //   1390: astore 32
    //   1392: iconst_0
    //   1393: istore 9
    //   1395: aconst_null
    //   1396: astore 14
    //   1398: aconst_null
    //   1399: astore 13
    //   1401: aconst_null
    //   1402: astore 15
    //   1404: goto -239 -> 1165
    //   1407: astore 33
    //   1409: aload 22
    //   1411: astore 15
    //   1413: iconst_0
    //   1414: istore 9
    //   1416: aconst_null
    //   1417: astore 14
    //   1419: aconst_null
    //   1420: astore 13
    //   1422: goto -257 -> 1165
    //   1425: astore 77
    //   1427: aload 76
    //   1429: astore 14
    //   1431: aload 22
    //   1433: astore 15
    //   1435: iconst_0
    //   1436: istore 9
    //   1438: aconst_null
    //   1439: astore 13
    //   1441: goto -276 -> 1165
    //   1444: astore 36
    //   1446: aload 22
    //   1448: astore 15
    //   1450: iload 7
    //   1452: istore 9
    //   1454: aconst_null
    //   1455: astore 14
    //   1457: aconst_null
    //   1458: astore 13
    //   1460: goto -295 -> 1165
    //   1463: astore 74
    //   1465: aload 22
    //   1467: astore 15
    //   1469: iload 7
    //   1471: istore 9
    //   1473: aconst_null
    //   1474: astore 14
    //   1476: aconst_null
    //   1477: astore 13
    //   1479: goto -314 -> 1165
    //   1482: astore 57
    //   1484: aload 10
    //   1486: astore 14
    //   1488: iload 7
    //   1490: istore 9
    //   1492: aload 22
    //   1494: astore 15
    //   1496: aconst_null
    //   1497: astore 13
    //   1499: goto -334 -> 1165
    //   1502: astore 54
    //   1504: aload 42
    //   1506: astore 14
    //   1508: iload 41
    //   1510: istore 9
    //   1512: aconst_null
    //   1513: astore 13
    //   1515: goto -350 -> 1165
    //   1518: astore 44
    //   1520: aload 42
    //   1522: astore 14
    //   1524: aload 43
    //   1526: astore 13
    //   1528: iload 41
    //   1530: istore 9
    //   1532: goto -367 -> 1165
    //   1535: astore 52
    //   1537: aload 42
    //   1539: astore 53
    //   1541: aload 43
    //   1543: astore 13
    //   1545: iload 51
    //   1547: istore 9
    //   1549: aload 53
    //   1551: astore 14
    //   1553: goto -388 -> 1165
    //   1556: aload 43
    //   1558: astore 47
    //   1560: iload 41
    //   1562: istore 9
    //   1564: goto -530 -> 1034
    //   1567: iload 41
    //   1569: istore 9
    //   1571: aconst_null
    //   1572: astore 47
    //   1574: goto -540 -> 1034
    //   1577: aload 22
    //   1579: astore 15
    //   1581: iload 7
    //   1583: istore 41
    //   1585: aconst_null
    //   1586: astore 42
    //   1588: goto -662 -> 926
    //   1591: aconst_null
    //   1592: astore 35
    //   1594: goto -1281 -> 313
    //   1597: aconst_null
    //   1598: astore 42
    //   1600: aconst_null
    //   1601: astore 15
    //   1603: iconst_0
    //   1604: istore 41
    //   1606: goto -680 -> 926
    //   1609: iinc 30 1
    //   1612: iload 83
    //   1614: istore 28
    //   1616: iload 85
    //   1618: istore 29
    //   1620: iload 84
    //   1622: istore 31
    //   1624: goto -1505 -> 119
    //   1627: iconst_0
    //   1628: istore 83
    //   1630: goto -1462 -> 168
    //   1633: iload 28
    //   1635: istore 83
    //   1637: goto -1469 -> 168
    //   1640: iconst_0
    //   1641: istore 84
    //   1643: goto -1444 -> 199
    //   1646: iload 31
    //   1648: istore 84
    //   1650: goto -1451 -> 199
    //   1653: iconst_0
    //   1654: istore 85
    //   1656: goto -47 -> 1609
    //   1659: iload 29
    //   1661: istore 85
    //   1663: goto -54 -> 1609
    //
    // Exception table:
    //   from	to	target	type
    //   1059	1064	1067	java/io/IOException
    //   1190	1195	1067	java/io/IOException
    //   72	83	1110	finally
    //   72	83	1151	java/lang/Exception
    //   1170	1175	1198	java/io/IOException
    //   1180	1185	1203	java/io/IOException
    //   1123	1128	1208	java/io/IOException
    //   1133	1138	1213	java/io/IOException
    //   1143	1148	1218	java/io/IOException
    //   526	531	1223	java/io/IOException
    //   535	539	1228	java/io/IOException
    //   543	547	1233	java/io/IOException
    //   741	746	1238	java/io/IOException
    //   750	754	1243	java/io/IOException
    //   759	764	1248	java/io/IOException
    //   1039	1044	1253	java/io/IOException
    //   1049	1054	1258	java/io/IOException
    //   83	107	1263	finally
    //   129	249	1282	finally
    //   249	276	1296	finally
    //   587	730	1296	finally
    //   771	910	1296	finally
    //   280	299	1304	finally
    //   347	366	1304	finally
    //   299	343	1320	finally
    //   366	405	1320	finally
    //   410	430	1320	finally
    //   435	515	1320	finally
    //   554	578	1320	finally
    //   936	947	1335	finally
    //   947	1026	1351	finally
    //   1072	1079	1351	finally
    //   1079	1099	1351	finally
    //   83	107	1372	java/lang/Exception
    //   129	249	1390	java/lang/Exception
    //   249	276	1407	java/lang/Exception
    //   280	299	1425	java/lang/Exception
    //   347	366	1425	java/lang/Exception
    //   299	343	1444	java/lang/Exception
    //   366	405	1444	java/lang/Exception
    //   435	515	1444	java/lang/Exception
    //   554	578	1444	java/lang/Exception
    //   410	430	1463	java/lang/Exception
    //   587	730	1482	java/lang/Exception
    //   771	910	1482	java/lang/Exception
    //   936	947	1502	java/lang/Exception
    //   947	1026	1518	java/lang/Exception
    //   1072	1079	1518	java/lang/Exception
    //   1079	1099	1535	java/lang/Exception
  }

  private boolean a(ArrayList paramArrayList, String paramString, w paramw)
  {
    String str = paramString.toLowerCase(Locale.ENGLISH);
    int n = paramArrayList.size();
    int i1 = 0;
    if (i1 < n)
      if (str.contains(((e)paramArrayList.get(i1)).a))
      {
        if (paramw.c == null)
          paramw.c = ((e)paramArrayList.get(i1)).a;
        paramw.d = ((e)paramArrayList.get(i1)).b;
      }
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      i1++;
      break;
    }
  }

  private boolean b(File paramFile)
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

  private void c()
  {
    if (b())
      return;
    while (true)
    {
      String[] arrayOfString1;
      try
      {
        String str = Environment.getExternalStorageDirectory().getAbsolutePath();
        arrayOfString1 = this.f.scan(this.g, str);
        if ((arrayOfString1 != null) && (arrayOfString1.length != 0))
          break label126;
        arrayOfString2 = this.f.scan(this.g, "/data/app");
        if ((arrayOfString2 != null) && (arrayOfString2.length > 0))
          this.a.a = false;
        ((ScannerFilesResult)this.a).c = new ArrayList(Arrays.asList(arrayOfString2));
        ((ScannerFilesResult)this.a).b = this.f.getFileCount(this.g);
      }
      catch (Exception localException)
      {
        a.a(localException);
      }
      break;
      label126: String[] arrayOfString2 = arrayOfString1;
    }
  }

  public void a()
  {
    super.a();
    if (((ScannerFilesConfig)this.c).b.booleanValue())
      this.f.cancel(this.g);
  }

  public void a(Context paramContext, List paramList, ArrayList paramArrayList, ScannerFilesResult paramScannerFilesResult, String paramString, int paramInt1, int paramInt2)
  {
    if ((paramList == null) || (paramArrayList == null));
    while (true)
    {
      return;
      while ((paramList.size() > 0) && (!b()))
        a(paramContext, ((File)paramList.remove(0)).getAbsolutePath(), paramArrayList, paramScannerFilesResult, paramString, paramInt1, paramInt2);
    }
  }

  public void a(Context paramContext, boolean paramBoolean)
  {
    try
    {
      ScannerFilesResult localScannerFilesResult = (ScannerFilesResult)this.a;
      com.antivirus.core.e.b localb = new com.antivirus.core.e.b();
      this.h = localb.a(paramContext, d.e, ((ScannerFilesConfig)this.c).g);
      localScannerFilesResult.d = localb.e(paramContext);
      localb.a();
      if ((this.h == null) || (this.h.size() == 0))
        return;
      if (((ScannerFilesConfig)this.c).b.booleanValue())
        c();
    }
    catch (Exception localException)
    {
      a.a(localException);
    }
    a(paramContext);
  }

  public void a(Messenger paramMessenger, n paramn)
  {
    super.a(paramMessenger, paramn);
  }

  protected void finalize()
  {
    if (((ScannerFilesConfig)this.c).b.booleanValue())
      this.f.destroy(this.g);
    super.finalize();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.scanners.v
 * JD-Core Version:    0.6.2
 */