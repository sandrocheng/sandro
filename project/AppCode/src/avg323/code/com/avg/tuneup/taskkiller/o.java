package com.avg.tuneup.taskkiller;

import android.app.ActivityManager;
import android.content.Context;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class o
{
  private HashMap a = new HashMap();

  public o(String paramString)
  {
    this.a.put("com.android.launcher", Boolean.valueOf(true));
    this.a.put("com.android.launcher2", Boolean.valueOf(true));
    this.a.put("com.htc.launcher", Boolean.valueOf(true));
    this.a.put("com.htc.android.mail", Boolean.valueOf(true));
    this.a.put("com.sec.android.app.launcher", Boolean.valueOf(true));
    this.a.put("com.sec.android.app.controlpanel", Boolean.valueOf(true));
    this.a.put("com.sec.android.app.twlauncher", Boolean.valueOf(true));
    this.a.put("com.android.settings", Boolean.valueOf(true));
    this.a.put("com.android.email", Boolean.valueOf(true));
    this.a.put("com.android.phone", Boolean.valueOf(true));
    this.a.put("com.android.contacts", Boolean.valueOf(true));
    this.a.put("com.android.systemui", Boolean.valueOf(true));
    this.a.put("com.huawei.launcher2", Boolean.valueOf(true));
    this.a.put("system", Boolean.valueOf(true));
    this.a.put("com.motorola.mmsp.threed.motohome", Boolean.valueOf(true));
    this.a.put("com.motorola.blur.home", Boolean.valueOf(true));
    this.a.put(paramString, Boolean.valueOf(true));
  }

  private long a(byte[] paramArrayOfByte, int paramInt)
  {
    int i;
    if ((paramInt < paramArrayOfByte.length) && (paramArrayOfByte[paramInt] != 10))
      if ((paramArrayOfByte[paramInt] >= 48) && (paramArrayOfByte[paramInt] <= 57))
        for (i = paramInt + 1; (i < paramArrayOfByte.length) && (paramArrayOfByte[i] >= 48) && (paramArrayOfByte[i] <= 57); i++);
    for (long l = 1024L * Integer.parseInt(new String(paramArrayOfByte, 0, paramInt, i - paramInt)); ; l = 0L)
    {
      return l;
      paramInt++;
      break;
    }
  }

  private boolean a(byte[] paramArrayOfByte, int paramInt, String paramString)
  {
    int i = paramString.length();
    int j = paramInt + i;
    int k = paramArrayOfByte.length;
    boolean bool = false;
    if (j >= k);
    while (true)
    {
      return bool;
      for (int m = 0; ; m++)
      {
        if (m >= i)
          break label71;
        int n = paramArrayOfByte[(paramInt + m)];
        int i1 = paramString.charAt(m);
        bool = false;
        if (n != i1)
          break;
      }
      label71: bool = true;
    }
  }

  // ERROR //
  public long a()
  {
    // Byte code:
    //   0: lconst_0
    //   1: lstore_1
    //   2: new 90	java/io/FileInputStream
    //   5: dup
    //   6: ldc 92
    //   8: invokespecial 94	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   11: astore_3
    //   12: sipush 1024
    //   15: newarray byte
    //   17: astore 10
    //   19: aload_3
    //   20: aload 10
    //   22: invokevirtual 98	java/io/FileInputStream:read	([B)I
    //   25: istore 11
    //   27: aload 10
    //   29: arraylength
    //   30: istore 12
    //   32: lload_1
    //   33: lstore 13
    //   35: lload_1
    //   36: lstore 15
    //   38: iconst_0
    //   39: istore 17
    //   41: goto +187 -> 228
    //   44: aload_0
    //   45: aload 10
    //   47: iload 17
    //   49: ldc 100
    //   51: invokespecial 102	com/avg/tuneup/taskkiller/o:a	([BILjava/lang/String;)Z
    //   54: ifeq +39 -> 93
    //   57: iinc 17 7
    //   60: aload_0
    //   61: aload 10
    //   63: iload 17
    //   65: invokespecial 104	com/avg/tuneup/taskkiller/o:a	([BI)J
    //   68: lstore 15
    //   70: iload 17
    //   72: iload 12
    //   74: if_icmpge +52 -> 126
    //   77: aload 10
    //   79: iload 17
    //   81: baload
    //   82: bipush 10
    //   84: if_icmpeq +42 -> 126
    //   87: iinc 17 1
    //   90: goto -20 -> 70
    //   93: aload_0
    //   94: aload 10
    //   96: iload 17
    //   98: ldc 106
    //   100: invokespecial 102	com/avg/tuneup/taskkiller/o:a	([BILjava/lang/String;)Z
    //   103: ifeq -33 -> 70
    //   106: iinc 17 6
    //   109: aload_0
    //   110: aload 10
    //   112: iload 17
    //   114: invokespecial 104	com/avg/tuneup/taskkiller/o:a	([BI)J
    //   117: lstore 19
    //   119: lload 19
    //   121: lstore 13
    //   123: goto -53 -> 70
    //   126: iinc 17 1
    //   129: goto +99 -> 228
    //   132: lload 15
    //   134: lload 13
    //   136: ladd
    //   137: lstore_1
    //   138: aload_3
    //   139: ifnull +7 -> 146
    //   142: aload_3
    //   143: invokevirtual 109	java/io/FileInputStream:close	()V
    //   146: lload_1
    //   147: lreturn
    //   148: astore 22
    //   150: aconst_null
    //   151: astore_3
    //   152: aload_3
    //   153: ifnull -7 -> 146
    //   156: aload_3
    //   157: invokevirtual 109	java/io/FileInputStream:close	()V
    //   160: goto -14 -> 146
    //   163: astore 5
    //   165: goto -19 -> 146
    //   168: astore 21
    //   170: aconst_null
    //   171: astore_3
    //   172: aload_3
    //   173: ifnull -27 -> 146
    //   176: aload_3
    //   177: invokevirtual 109	java/io/FileInputStream:close	()V
    //   180: goto -34 -> 146
    //   183: astore 7
    //   185: goto -39 -> 146
    //   188: astore 8
    //   190: aconst_null
    //   191: astore_3
    //   192: aload_3
    //   193: ifnull +7 -> 200
    //   196: aload_3
    //   197: invokevirtual 109	java/io/FileInputStream:close	()V
    //   200: aload 8
    //   202: athrow
    //   203: astore 18
    //   205: goto -59 -> 146
    //   208: astore 9
    //   210: goto -10 -> 200
    //   213: astore 8
    //   215: goto -23 -> 192
    //   218: astore 6
    //   220: goto -48 -> 172
    //   223: astore 4
    //   225: goto -73 -> 152
    //   228: iload 17
    //   230: iload 11
    //   232: if_icmpge -100 -> 132
    //   235: lload 15
    //   237: lload_1
    //   238: lcmp
    //   239: ifeq -195 -> 44
    //   242: lload 13
    //   244: lload_1
    //   245: lcmp
    //   246: ifne -114 -> 132
    //   249: goto -205 -> 44
    //
    // Exception table:
    //   from	to	target	type
    //   2	12	148	java/io/FileNotFoundException
    //   156	160	163	java/lang/Exception
    //   2	12	168	java/io/IOException
    //   176	180	183	java/lang/Exception
    //   2	12	188	finally
    //   142	146	203	java/lang/Exception
    //   196	200	208	java/lang/Exception
    //   12	119	213	finally
    //   12	119	218	java/io/IOException
    //   12	119	223	java/io/FileNotFoundException
  }

  // ERROR //
  public java.util.ArrayList a(Context paramContext, boolean paramBoolean1, boolean paramBoolean2)
  {
    // Byte code:
    //   0: new 116	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 117	java/util/ArrayList:<init>	()V
    //   7: astore 4
    //   9: aload_1
    //   10: ldc 119
    //   12: invokevirtual 125	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   15: checkcast 127	android/app/ActivityManager
    //   18: astore 5
    //   20: new 129	java/util/Hashtable
    //   23: dup
    //   24: invokespecial 130	java/util/Hashtable:<init>	()V
    //   27: astore 6
    //   29: new 129	java/util/Hashtable
    //   32: dup
    //   33: invokespecial 130	java/util/Hashtable:<init>	()V
    //   36: astore 7
    //   38: iload_2
    //   39: ifne +853 -> 892
    //   42: iload_3
    //   43: ifne +849 -> 892
    //   46: new 132	java/io/BufferedReader
    //   49: dup
    //   50: new 134	java/io/InputStreamReader
    //   53: dup
    //   54: invokestatic 140	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   57: ldc 142
    //   59: invokevirtual 146	java/lang/Runtime:exec	(Ljava/lang/String;)Ljava/lang/Process;
    //   62: invokevirtual 152	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   65: invokespecial 155	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   68: invokespecial 158	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   71: astore 46
    //   73: aload 46
    //   75: invokevirtual 162	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   78: astore 48
    //   80: iconst_0
    //   81: istore 49
    //   83: iconst_0
    //   84: istore 50
    //   86: iconst_0
    //   87: istore 51
    //   89: iconst_0
    //   90: istore 52
    //   92: aload 48
    //   94: astore 53
    //   96: aload 53
    //   98: ifnull +239 -> 337
    //   101: iconst_0
    //   102: istore 54
    //   104: aconst_null
    //   105: astore 55
    //   107: aconst_null
    //   108: astore 56
    //   110: new 164	java/util/StringTokenizer
    //   113: dup
    //   114: aload 53
    //   116: invokespecial 165	java/util/StringTokenizer:<init>	(Ljava/lang/String;)V
    //   119: astore 57
    //   121: aload 57
    //   123: invokevirtual 169	java/util/StringTokenizer:hasMoreElements	()Z
    //   126: ifeq +201 -> 327
    //   129: aload 57
    //   131: invokevirtual 172	java/util/StringTokenizer:nextToken	()Ljava/lang/String;
    //   134: astore 58
    //   136: iinc 54 1
    //   139: aload 58
    //   141: ifnull +1143 -> 1284
    //   144: iload 52
    //   146: ifne +88 -> 234
    //   149: ldc 174
    //   151: aload 58
    //   153: invokevirtual 178	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   156: ifeq +18 -> 174
    //   159: iload 51
    //   161: istore 60
    //   163: iload 50
    //   165: istore 61
    //   167: iload 54
    //   169: istore 62
    //   171: goto +1148 -> 1319
    //   174: ldc 180
    //   176: aload 58
    //   178: invokevirtual 178	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   181: ifeq +18 -> 199
    //   184: iload 51
    //   186: istore 60
    //   188: iload 49
    //   190: istore 62
    //   192: iload 54
    //   194: istore 61
    //   196: goto +1123 -> 1319
    //   199: ldc 182
    //   201: aload 58
    //   203: invokevirtual 178	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   206: istore 67
    //   208: iload 67
    //   210: ifeq +1097 -> 1307
    //   213: iload 54
    //   215: istore 60
    //   217: iload 50
    //   219: istore 61
    //   221: iload 49
    //   223: istore 62
    //   225: goto +1094 -> 1319
    //   228: iconst_0
    //   229: istore 68
    //   231: goto +1106 -> 1337
    //   234: iload 54
    //   236: iload 49
    //   238: if_icmpne +28 -> 266
    //   241: aload 58
    //   243: invokestatic 72	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   246: pop
    //   247: iload 52
    //   249: istore 59
    //   251: iload 51
    //   253: istore 60
    //   255: iload 50
    //   257: istore 61
    //   259: iload 49
    //   261: istore 62
    //   263: goto +1086 -> 1349
    //   266: iload 54
    //   268: iload 50
    //   270: if_icmpne +30 -> 300
    //   273: aload 58
    //   275: astore 56
    //   277: aload 55
    //   279: astore 58
    //   281: iload 52
    //   283: istore 59
    //   285: iload 51
    //   287: istore 60
    //   289: iload 50
    //   291: istore 61
    //   293: iload 49
    //   295: istore 62
    //   297: goto +1052 -> 1349
    //   300: iload 54
    //   302: iload 51
    //   304: if_icmpne +980 -> 1284
    //   307: aload 6
    //   309: aload 58
    //   311: aload 55
    //   313: invokevirtual 183	java/util/Hashtable:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   316: pop
    //   317: aload 7
    //   319: aload 55
    //   321: aload 56
    //   323: invokevirtual 183	java/util/Hashtable:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   326: pop
    //   327: aload 46
    //   329: invokevirtual 162	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   332: astore 53
    //   334: goto -238 -> 96
    //   337: aload 46
    //   339: invokevirtual 184	java/io/BufferedReader:close	()V
    //   342: iload_2
    //   343: ifeq +677 -> 1020
    //   346: aload 5
    //   348: invokevirtual 188	android/app/ActivityManager:getRunningAppProcesses	()Ljava/util/List;
    //   351: invokeinterface 194 1 0
    //   356: astore 43
    //   358: aload 43
    //   360: invokeinterface 200 1 0
    //   365: astore 13
    //   367: aload 43
    //   369: astore 14
    //   371: aload 13
    //   373: ifnull +902 -> 1275
    //   376: iload_2
    //   377: ifeq +674 -> 1051
    //   380: aload 13
    //   382: checkcast 202	android/app/ActivityManager$RunningAppProcessInfo
    //   385: getfield 206	android/app/ActivityManager$RunningAppProcessInfo:processName	Ljava/lang/String;
    //   388: astore 17
    //   390: aload_1
    //   391: invokevirtual 210	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   394: astore 18
    //   396: aload 17
    //   398: ifnull +779 -> 1177
    //   401: aload_0
    //   402: getfield 16	com/avg/tuneup/taskkiller/o:a	Ljava/util/HashMap;
    //   405: aload 17
    //   407: invokevirtual 214	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   410: ifnonnull +767 -> 1177
    //   413: aload 18
    //   415: aload 17
    //   417: iconst_0
    //   418: invokevirtual 220	android/content/pm/PackageManager:getApplicationInfo	(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    //   421: astore 19
    //   423: aload 19
    //   425: ifnull +752 -> 1177
    //   428: new 222	com/avg/tuneup/taskkiller/b
    //   431: dup
    //   432: invokespecial 223	com/avg/tuneup/taskkiller/b:<init>	()V
    //   435: astore 20
    //   437: aload 20
    //   439: aload 18
    //   441: aload 19
    //   443: invokevirtual 227	android/content/pm/PackageManager:getApplicationLabel	(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    //   446: checkcast 63	java/lang/String
    //   449: putfield 230	com/avg/tuneup/taskkiller/b:d	Ljava/lang/String;
    //   452: aload 20
    //   454: aload 19
    //   456: getfield 235	android/content/pm/ApplicationInfo:packageName	Ljava/lang/String;
    //   459: putfield 238	com/avg/tuneup/taskkiller/b:e	Ljava/lang/String;
    //   462: aload 20
    //   464: new 240	java/lang/StringBuilder
    //   467: dup
    //   468: invokespecial 241	java/lang/StringBuilder:<init>	()V
    //   471: aload_1
    //   472: getstatic 247	com/avg/a/g:task_killer_running	I
    //   475: invokevirtual 251	android/content/Context:getString	(I)Ljava/lang/String;
    //   478: invokevirtual 255	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   481: ldc_w 257
    //   484: invokevirtual 255	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   487: aload_1
    //   488: getstatic 260	com/avg/a/g:task_killer_min	I
    //   491: invokevirtual 251	android/content/Context:getString	(I)Ljava/lang/String;
    //   494: invokevirtual 255	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   497: invokevirtual 263	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   500: putfield 266	com/avg/tuneup/taskkiller/b:c	Ljava/lang/String;
    //   503: iload_2
    //   504: ifeq +563 -> 1067
    //   507: aload 13
    //   509: checkcast 202	android/app/ActivityManager$RunningAppProcessInfo
    //   512: getfield 269	android/app/ActivityManager$RunningAppProcessInfo:pid	I
    //   515: istore 22
    //   517: iload 22
    //   519: ifeq +658 -> 1177
    //   522: iload_2
    //   523: ifne +636 -> 1159
    //   526: iload_3
    //   527: ifne +632 -> 1159
    //   530: aload 20
    //   532: aload 5
    //   534: iconst_1
    //   535: newarray int
    //   537: dup
    //   538: iconst_0
    //   539: iload 22
    //   541: iastore
    //   542: invokevirtual 273	android/app/ActivityManager:getProcessMemoryInfo	([I)[Landroid/os/Debug$MemoryInfo;
    //   545: iconst_0
    //   546: aaload
    //   547: invokevirtual 278	android/os/Debug$MemoryInfo:getTotalPss	()I
    //   550: i2f
    //   551: putfield 282	com/avg/tuneup/taskkiller/b:b	F
    //   554: aload 20
    //   556: ldc_w 284
    //   559: putfield 266	com/avg/tuneup/taskkiller/b:c	Ljava/lang/String;
    //   562: aload 20
    //   564: aload 7
    //   566: iload 22
    //   568: invokestatic 286	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   571: invokevirtual 287	java/util/Hashtable:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   574: checkcast 63	java/lang/String
    //   577: putfield 289	com/avg/tuneup/taskkiller/b:a	Ljava/lang/String;
    //   580: aload 20
    //   582: getfield 289	com/avg/tuneup/taskkiller/b:a	Ljava/lang/String;
    //   585: ifnonnull +11 -> 596
    //   588: aload 20
    //   590: ldc_w 291
    //   593: putfield 289	com/avg/tuneup/taskkiller/b:a	Ljava/lang/String;
    //   596: new 132	java/io/BufferedReader
    //   599: dup
    //   600: new 134	java/io/InputStreamReader
    //   603: dup
    //   604: invokestatic 140	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   607: new 240	java/lang/StringBuilder
    //   610: dup
    //   611: invokespecial 241	java/lang/StringBuilder:<init>	()V
    //   614: ldc_w 293
    //   617: invokevirtual 255	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   620: iload 22
    //   622: invokevirtual 296	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   625: invokevirtual 263	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   628: invokevirtual 146	java/lang/Runtime:exec	(Ljava/lang/String;)Ljava/lang/Process;
    //   631: invokevirtual 152	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   634: invokespecial 155	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   637: invokespecial 158	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   640: astore 24
    //   642: aload 24
    //   644: invokevirtual 162	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   647: astore 26
    //   649: aload 26
    //   651: ifnull +595 -> 1246
    //   654: iconst_0
    //   655: istore 27
    //   657: aconst_null
    //   658: astore 28
    //   660: new 164	java/util/StringTokenizer
    //   663: dup
    //   664: aload 26
    //   666: invokespecial 165	java/util/StringTokenizer:<init>	(Ljava/lang/String;)V
    //   669: astore 29
    //   671: aload 29
    //   673: invokevirtual 169	java/util/StringTokenizer:hasMoreElements	()Z
    //   676: ifeq +192 -> 868
    //   679: aload 29
    //   681: invokevirtual 172	java/util/StringTokenizer:nextToken	()Ljava/lang/String;
    //   684: astore 31
    //   686: iinc 27 1
    //   689: aload 31
    //   691: ifnull -20 -> 671
    //   694: iload 27
    //   696: iconst_4
    //   697: if_icmpne +7 -> 704
    //   700: aload 31
    //   702: astore 28
    //   704: iload 27
    //   706: iconst_5
    //   707: if_icmpne -36 -> 671
    //   710: new 298	java/text/SimpleDateFormat
    //   713: dup
    //   714: ldc_w 300
    //   717: invokespecial 301	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;)V
    //   720: new 240	java/lang/StringBuilder
    //   723: dup
    //   724: invokespecial 241	java/lang/StringBuilder:<init>	()V
    //   727: aload 28
    //   729: invokevirtual 255	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   732: ldc_w 303
    //   735: invokevirtual 255	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   738: aload 31
    //   740: invokevirtual 255	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   743: invokevirtual 263	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   746: invokevirtual 307	java/text/SimpleDateFormat:parse	(Ljava/lang/String;)Ljava/util/Date;
    //   749: invokevirtual 312	java/util/Date:getTime	()J
    //   752: lstore 32
    //   754: invokestatic 317	java/lang/System:currentTimeMillis	()J
    //   757: lload 32
    //   759: lsub
    //   760: lstore 34
    //   762: lload 34
    //   764: ldc2_w 318
    //   767: ldiv
    //   768: lstore 36
    //   770: lload 34
    //   772: ldc2_w 320
    //   775: ldiv
    //   776: lstore 38
    //   778: lload 34
    //   780: ldc2_w 322
    //   783: ldiv
    //   784: lstore 40
    //   786: aload 20
    //   788: new 240	java/lang/StringBuilder
    //   791: dup
    //   792: invokespecial 241	java/lang/StringBuilder:<init>	()V
    //   795: aload_1
    //   796: getstatic 247	com/avg/a/g:task_killer_running	I
    //   799: invokevirtual 251	android/content/Context:getString	(I)Ljava/lang/String;
    //   802: invokevirtual 255	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   805: ldc_w 325
    //   808: invokevirtual 255	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   811: invokevirtual 263	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   814: putfield 266	com/avg/tuneup/taskkiller/b:c	Ljava/lang/String;
    //   817: lload 40
    //   819: lconst_0
    //   820: lcmp
    //   821: ifle +277 -> 1098
    //   824: aload 20
    //   826: new 240	java/lang/StringBuilder
    //   829: dup
    //   830: invokespecial 241	java/lang/StringBuilder:<init>	()V
    //   833: aload 20
    //   835: getfield 266	com/avg/tuneup/taskkiller/b:c	Ljava/lang/String;
    //   838: invokevirtual 255	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   841: lload 40
    //   843: invokevirtual 328	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   846: ldc_w 303
    //   849: invokevirtual 255	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   852: aload_1
    //   853: getstatic 331	com/avg/a/g:task_killer_day	I
    //   856: invokevirtual 251	android/content/Context:getString	(I)Ljava/lang/String;
    //   859: invokevirtual 255	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   862: invokevirtual 263	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   865: putfield 266	com/avg/tuneup/taskkiller/b:c	Ljava/lang/String;
    //   868: aload 24
    //   870: invokevirtual 162	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   873: astore 30
    //   875: aload 30
    //   877: astore 26
    //   879: goto -230 -> 649
    //   882: astore 47
    //   884: aload 47
    //   886: invokestatic 336	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   889: goto -547 -> 342
    //   892: aload 5
    //   894: invokevirtual 188	android/app/ActivityManager:getRunningAppProcesses	()Ljava/util/List;
    //   897: invokeinterface 194 1 0
    //   902: astore 8
    //   904: aload 8
    //   906: invokeinterface 339 1 0
    //   911: ifeq +37 -> 948
    //   914: aload 8
    //   916: invokeinterface 200 1 0
    //   921: checkcast 202	android/app/ActivityManager$RunningAppProcessInfo
    //   924: astore 44
    //   926: aload 6
    //   928: aload 44
    //   930: getfield 206	android/app/ActivityManager$RunningAppProcessInfo:processName	Ljava/lang/String;
    //   933: aload 44
    //   935: getfield 269	android/app/ActivityManager$RunningAppProcessInfo:pid	I
    //   938: invokestatic 286	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   941: invokevirtual 183	java/util/Hashtable:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   944: pop
    //   945: goto -41 -> 904
    //   948: aload 5
    //   950: sipush 9999
    //   953: invokevirtual 343	android/app/ActivityManager:getRunningServices	(I)Ljava/util/List;
    //   956: invokeinterface 194 1 0
    //   961: astore 9
    //   963: aload 9
    //   965: invokeinterface 339 1 0
    //   970: ifeq -628 -> 342
    //   973: aload 9
    //   975: invokeinterface 200 1 0
    //   980: checkcast 345	android/app/ActivityManager$RunningServiceInfo
    //   983: astore 10
    //   985: aload 6
    //   987: aload 10
    //   989: getfield 348	android/app/ActivityManager$RunningServiceInfo:process	Ljava/lang/String;
    //   992: invokevirtual 351	java/util/Hashtable:containsKey	(Ljava/lang/Object;)Z
    //   995: ifne -32 -> 963
    //   998: aload 6
    //   1000: aload 10
    //   1002: getfield 348	android/app/ActivityManager$RunningServiceInfo:process	Ljava/lang/String;
    //   1005: aload 10
    //   1007: getfield 352	android/app/ActivityManager$RunningServiceInfo:pid	I
    //   1010: invokestatic 286	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   1013: invokevirtual 183	java/util/Hashtable:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1016: pop
    //   1017: goto -54 -> 963
    //   1020: aload 5
    //   1022: sipush 9999
    //   1025: invokevirtual 355	android/app/ActivityManager:getRunningTasks	(I)Ljava/util/List;
    //   1028: invokeinterface 194 1 0
    //   1033: astore 12
    //   1035: aload 12
    //   1037: invokeinterface 200 1 0
    //   1042: astore 13
    //   1044: aload 12
    //   1046: astore 14
    //   1048: goto -677 -> 371
    //   1051: aload 13
    //   1053: checkcast 357	android/app/ActivityManager$RunningTaskInfo
    //   1056: getfield 361	android/app/ActivityManager$RunningTaskInfo:baseActivity	Landroid/content/ComponentName;
    //   1059: invokevirtual 366	android/content/ComponentName:getPackageName	()Ljava/lang/String;
    //   1062: astore 17
    //   1064: goto -674 -> 390
    //   1067: aload 6
    //   1069: aload 17
    //   1071: invokevirtual 287	java/util/Hashtable:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   1074: checkcast 63	java/lang/String
    //   1077: astore 21
    //   1079: aload 21
    //   1081: ifnull +197 -> 1278
    //   1084: aload 21
    //   1086: invokestatic 72	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   1089: istore 42
    //   1091: iload 42
    //   1093: istore 22
    //   1095: goto -578 -> 517
    //   1098: lload 38
    //   1100: lconst_0
    //   1101: lcmp
    //   1102: ifle +97 -> 1199
    //   1105: aload 20
    //   1107: new 240	java/lang/StringBuilder
    //   1110: dup
    //   1111: invokespecial 241	java/lang/StringBuilder:<init>	()V
    //   1114: aload 20
    //   1116: getfield 266	com/avg/tuneup/taskkiller/b:c	Ljava/lang/String;
    //   1119: invokevirtual 255	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1122: lload 38
    //   1124: invokevirtual 328	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   1127: ldc_w 303
    //   1130: invokevirtual 255	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1133: aload_1
    //   1134: getstatic 369	com/avg/a/g:task_killer_hour	I
    //   1137: invokevirtual 251	android/content/Context:getString	(I)Ljava/lang/String;
    //   1140: invokevirtual 255	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1143: invokevirtual 263	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1146: putfield 266	com/avg/tuneup/taskkiller/b:c	Ljava/lang/String;
    //   1149: goto -281 -> 868
    //   1152: astore 25
    //   1154: aload 25
    //   1156: invokestatic 336	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   1159: aload 4
    //   1161: aload 20
    //   1163: invokevirtual 372	java/util/ArrayList:contains	(Ljava/lang/Object;)Z
    //   1166: ifne +11 -> 1177
    //   1169: aload 4
    //   1171: aload 20
    //   1173: invokevirtual 375	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   1176: pop
    //   1177: aload 14
    //   1179: invokeinterface 339 1 0
    //   1184: ifeq +80 -> 1264
    //   1187: aload 14
    //   1189: invokeinterface 200 1 0
    //   1194: astore 13
    //   1196: goto -825 -> 371
    //   1199: aload 20
    //   1201: new 240	java/lang/StringBuilder
    //   1204: dup
    //   1205: invokespecial 241	java/lang/StringBuilder:<init>	()V
    //   1208: aload 20
    //   1210: getfield 266	com/avg/tuneup/taskkiller/b:c	Ljava/lang/String;
    //   1213: invokevirtual 255	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1216: lload 36
    //   1218: invokevirtual 328	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   1221: ldc_w 303
    //   1224: invokevirtual 255	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1227: aload_1
    //   1228: getstatic 260	com/avg/a/g:task_killer_min	I
    //   1231: invokevirtual 251	android/content/Context:getString	(I)Ljava/lang/String;
    //   1234: invokevirtual 255	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1237: invokevirtual 263	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1240: putfield 266	com/avg/tuneup/taskkiller/b:c	Ljava/lang/String;
    //   1243: goto -375 -> 868
    //   1246: aload 24
    //   1248: invokevirtual 184	java/io/BufferedReader:close	()V
    //   1251: goto -92 -> 1159
    //   1254: astore 15
    //   1256: aload 15
    //   1258: invokestatic 336	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   1261: goto -84 -> 1177
    //   1264: aconst_null
    //   1265: astore 13
    //   1267: goto -896 -> 371
    //   1270: astore 65
    //   1272: goto -945 -> 327
    //   1275: aload 4
    //   1277: areturn
    //   1278: iconst_0
    //   1279: istore 22
    //   1281: goto -764 -> 517
    //   1284: aload 55
    //   1286: astore 58
    //   1288: iload 52
    //   1290: istore 59
    //   1292: iload 51
    //   1294: istore 60
    //   1296: iload 50
    //   1298: istore 61
    //   1300: iload 49
    //   1302: istore 62
    //   1304: goto +45 -> 1349
    //   1307: iload 51
    //   1309: istore 60
    //   1311: iload 50
    //   1313: istore 61
    //   1315: iload 49
    //   1317: istore 62
    //   1319: iload 62
    //   1321: ifle -1093 -> 228
    //   1324: iload 61
    //   1326: ifle -1098 -> 228
    //   1329: iload 60
    //   1331: ifle -1103 -> 228
    //   1334: iconst_1
    //   1335: istore 68
    //   1337: aload 55
    //   1339: astore 69
    //   1341: iload 68
    //   1343: istore 59
    //   1345: aload 69
    //   1347: astore 58
    //   1349: iload 62
    //   1351: istore 49
    //   1353: iload 61
    //   1355: istore 50
    //   1357: iload 60
    //   1359: istore 51
    //   1361: iload 59
    //   1363: istore 52
    //   1365: aload 58
    //   1367: astore 55
    //   1369: goto -1248 -> 121
    //   1372: astore 16
    //   1374: goto -197 -> 1177
    //
    // Exception table:
    //   from	to	target	type
    //   46	208	882	java/lang/Exception
    //   241	247	882	java/lang/Exception
    //   307	342	882	java/lang/Exception
    //   596	875	1152	java/lang/Exception
    //   1105	1149	1152	java/lang/Exception
    //   1199	1251	1152	java/lang/Exception
    //   380	596	1254	java/lang/Exception
    //   1051	1091	1254	java/lang/Exception
    //   1154	1177	1254	java/lang/Exception
    //   241	247	1270	java/lang/NumberFormatException
    //   380	596	1372	android/content/pm/PackageManager$NameNotFoundException
    //   596	875	1372	android/content/pm/PackageManager$NameNotFoundException
    //   1051	1091	1372	android/content/pm/PackageManager$NameNotFoundException
    //   1105	1149	1372	android/content/pm/PackageManager$NameNotFoundException
    //   1154	1177	1372	android/content/pm/PackageManager$NameNotFoundException
    //   1199	1251	1372	android/content/pm/PackageManager$NameNotFoundException
  }

  public void a(Context paramContext)
  {
    ActivityManager localActivityManager = (ActivityManager)paramContext.getSystemService("activity");
    Iterator localIterator = a(paramContext, false, true).iterator();
    while (localIterator.hasNext())
      localActivityManager.restartPackage(((b)localIterator.next()).e);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.taskkiller.o
 * JD-Core Version:    0.6.2
 */