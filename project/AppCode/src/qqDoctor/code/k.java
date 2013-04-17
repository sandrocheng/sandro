import android.content.Context;
import android.content.res.Resources;
import com.tencent.tmsecure.common.TMSApplication;
import java.io.File;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.GregorianCalendar;

public final class k
{
  public Integer a = Integer.valueOf(-5);
  public Integer b = Integer.valueOf(-4);
  public String c;
  public String d;
  public String e;

  public static String a(Context paramContext, int paramInt)
  {
    String str1;
    if (paramInt < 10000)
    {
      String str11 = String.valueOf(paramInt);
      String str12 = str11 + paramContext.getResources().getString(2131428124);
      str1 = str12 + paramContext.getResources().getString(2131428121);
    }
    while (true)
    {
      return str1;
      if ((paramInt >= 10000) && (paramInt < 50000))
      {
        String str8 = paramContext.getResources().getString(2131428131);
        String str9 = str8 + "1";
        String str10 = str9 + paramContext.getResources().getString(2131428132);
        str1 = str10 + paramContext.getResources().getString(2131428121);
      }
      else if ((paramInt >= 50000) && (paramInt < 100000))
      {
        String str5 = paramContext.getResources().getString(2131428131);
        String str6 = str5 + "5";
        String str7 = str6 + paramContext.getResources().getString(2131428132);
        str1 = str7 + paramContext.getResources().getString(2131428121);
      }
      else
      {
        str1 = null;
        if (paramInt >= 100000)
        {
          String str2 = paramContext.getResources().getString(2131428131);
          String str3 = str2 + "10";
          String str4 = str3 + paramContext.getResources().getString(2131428132);
          str1 = str4 + paramContext.getResources().getString(2131428121);
        }
      }
    }
  }

  public static String a(String paramString)
  {
    return b(a(paramString.getBytes()));
  }

  public static String a(String paramString, int paramInt1, int paramInt2)
  {
    if ((paramString == null) || (paramInt1 + paramInt2 >= paramString.length()));
    while (true)
    {
      return paramString;
      paramString = paramString.substring(0, paramInt1) + "***" + paramString.substring(paramString.length() - paramInt2);
    }
  }

  public static GregorianCalendar a(GregorianCalendar paramGregorianCalendar, int paramInt)
  {
    GregorianCalendar localGregorianCalendar = new GregorianCalendar();
    localGregorianCalendar.setTimeInMillis(paramGregorianCalendar.getTimeInMillis());
    if (localGregorianCalendar.get(5) != paramInt)
    {
      if (localGregorianCalendar.get(5) <= paramInt)
        break label72;
      localGregorianCalendar.set(5, paramInt);
    }
    while (true)
    {
      localGregorianCalendar.clear(11);
      localGregorianCalendar.clear(10);
      localGregorianCalendar.clear(12);
      localGregorianCalendar.clear(13);
      localGregorianCalendar.clear(14);
      return localGregorianCalendar;
      label72: localGregorianCalendar.set(5, 1);
      localGregorianCalendar.add(2, -1);
      int i = localGregorianCalendar.getActualMaximum(5);
      if (i >= paramInt)
        localGregorianCalendar.set(5, paramInt);
      else
        localGregorianCalendar.set(5, i);
    }
  }

  // ERROR //
  public static boolean a(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: ldc 126
    //   2: invokestatic 131	com/tencent/tmsecure/common/TMSApplication:getStrFromEnvMap	(Ljava/lang/String;)Ljava/lang/String;
    //   5: astore_2
    //   6: aload_2
    //   7: ifnonnull +84 -> 91
    //   10: aload_0
    //   11: invokevirtual 135	android/content/Context:getCacheDir	()Ljava/io/File;
    //   14: invokevirtual 138	java/io/File:toString	()Ljava/lang/String;
    //   17: astore 14
    //   19: aload 14
    //   21: ldc 140
    //   23: invokevirtual 144	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   26: ifeq +19 -> 45
    //   29: aload 14
    //   31: iconst_0
    //   32: bipush 254
    //   34: aload 14
    //   36: invokevirtual 81	java/lang/String:length	()I
    //   39: iadd
    //   40: invokevirtual 85	java/lang/String:substring	(II)Ljava/lang/String;
    //   43: astore 14
    //   45: aload 14
    //   47: bipush 47
    //   49: invokevirtual 147	java/lang/String:lastIndexOf	(I)I
    //   52: istore 15
    //   54: iload 15
    //   56: iconst_m1
    //   57: if_icmpeq +294 -> 351
    //   60: new 33	java/lang/StringBuilder
    //   63: dup
    //   64: aload 14
    //   66: iconst_0
    //   67: iload 15
    //   69: invokevirtual 85	java/lang/String:substring	(II)Ljava/lang/String;
    //   72: invokestatic 150	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   75: invokespecial 153	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   78: ldc 155
    //   80: invokevirtual 38	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   83: invokevirtual 54	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   86: astore 16
    //   88: aload 16
    //   90: astore_2
    //   91: aload_2
    //   92: invokevirtual 81	java/lang/String:length	()I
    //   95: ifeq +317 -> 412
    //   98: new 137	java/io/File
    //   101: dup
    //   102: new 33	java/lang/StringBuilder
    //   105: dup
    //   106: aload_2
    //   107: invokestatic 150	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   110: invokespecial 153	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   113: aload_1
    //   114: invokevirtual 38	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: invokevirtual 54	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   120: invokespecial 156	java/io/File:<init>	(Ljava/lang/String;)V
    //   123: invokevirtual 160	java/io/File:exists	()Z
    //   126: ifeq +263 -> 389
    //   129: new 33	java/lang/StringBuilder
    //   132: dup
    //   133: aload_2
    //   134: invokestatic 150	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   137: invokespecial 153	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   140: aload_1
    //   141: invokevirtual 38	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   144: invokevirtual 54	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   147: invokestatic 165	java/lang/System:load	(Ljava/lang/String;)V
    //   150: iconst_1
    //   151: istore 5
    //   153: iload 5
    //   155: ifne +276 -> 431
    //   158: aload_1
    //   159: ldc 167
    //   161: invokevirtual 144	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   164: ifne +267 -> 431
    //   167: new 33	java/lang/StringBuilder
    //   170: dup
    //   171: aload_1
    //   172: invokestatic 150	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   175: invokespecial 153	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   178: ldc 167
    //   180: invokevirtual 38	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   183: invokevirtual 54	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   186: astore 6
    //   188: new 137	java/io/File
    //   191: dup
    //   192: new 33	java/lang/StringBuilder
    //   195: dup
    //   196: aload_2
    //   197: invokestatic 150	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   200: invokespecial 153	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   203: aload 6
    //   205: invokevirtual 38	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   208: invokevirtual 54	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   211: invokespecial 156	java/io/File:<init>	(Ljava/lang/String;)V
    //   214: invokevirtual 160	java/io/File:exists	()Z
    //   217: ifeq +28 -> 245
    //   220: new 33	java/lang/StringBuilder
    //   223: dup
    //   224: aload_2
    //   225: invokestatic 150	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   228: invokespecial 153	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   231: aload 6
    //   233: invokevirtual 38	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   236: invokevirtual 54	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   239: invokestatic 165	java/lang/System:load	(Ljava/lang/String;)V
    //   242: iconst_1
    //   243: istore 5
    //   245: iload 5
    //   247: ifne +150 -> 397
    //   250: aload 6
    //   252: ldc 169
    //   254: invokevirtual 172	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   257: ifne +140 -> 397
    //   260: new 33	java/lang/StringBuilder
    //   263: dup
    //   264: ldc 169
    //   266: invokespecial 153	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   269: aload 6
    //   271: invokevirtual 38	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   274: invokevirtual 54	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   277: astore 9
    //   279: new 137	java/io/File
    //   282: dup
    //   283: new 33	java/lang/StringBuilder
    //   286: dup
    //   287: aload_2
    //   288: invokestatic 150	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   291: invokespecial 153	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   294: aload 9
    //   296: invokevirtual 38	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   299: invokevirtual 54	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   302: invokespecial 156	java/io/File:<init>	(Ljava/lang/String;)V
    //   305: invokevirtual 160	java/io/File:exists	()Z
    //   308: ifeq +89 -> 397
    //   311: new 33	java/lang/StringBuilder
    //   314: dup
    //   315: aload_2
    //   316: invokestatic 150	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   319: invokespecial 153	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   322: aload 9
    //   324: invokevirtual 38	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   327: invokevirtual 54	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   330: invokestatic 165	java/lang/System:load	(Ljava/lang/String;)V
    //   333: iconst_1
    //   334: istore 7
    //   336: iload 7
    //   338: ifne +7 -> 345
    //   341: aload_1
    //   342: invokestatic 175	java/lang/System:loadLibrary	(Ljava/lang/String;)V
    //   345: iconst_1
    //   346: istore 4
    //   348: iload 4
    //   350: ireturn
    //   351: ldc 177
    //   353: astore_2
    //   354: goto -263 -> 91
    //   357: astore 13
    //   359: new 33	java/lang/StringBuilder
    //   362: dup
    //   363: ldc 179
    //   365: invokespecial 153	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   368: aload_0
    //   369: invokevirtual 182	android/content/Context:getPackageName	()Ljava/lang/String;
    //   372: invokevirtual 38	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   375: ldc 155
    //   377: invokevirtual 38	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   380: invokevirtual 54	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   383: astore_2
    //   384: goto -293 -> 91
    //   387: astore 12
    //   389: iconst_0
    //   390: istore 5
    //   392: goto -239 -> 153
    //   395: astore 10
    //   397: iload 5
    //   399: istore 7
    //   401: goto -65 -> 336
    //   404: astore 8
    //   406: iconst_0
    //   407: istore 4
    //   409: goto -61 -> 348
    //   412: aload_1
    //   413: invokestatic 175	java/lang/System:loadLibrary	(Ljava/lang/String;)V
    //   416: goto -71 -> 345
    //   419: astore_3
    //   420: iconst_0
    //   421: istore 4
    //   423: goto -75 -> 348
    //   426: astore 11
    //   428: goto -183 -> 245
    //   431: aload_1
    //   432: astore 6
    //   434: goto -189 -> 245
    //
    // Exception table:
    //   from	to	target	type
    //   10	88	357	java/lang/Exception
    //   129	150	387	java/lang/UnsatisfiedLinkError
    //   311	333	395	java/lang/UnsatisfiedLinkError
    //   341	345	404	java/lang/UnsatisfiedLinkError
    //   412	416	419	java/lang/UnsatisfiedLinkError
    //   220	242	426	java/lang/UnsatisfiedLinkError
  }

  // ERROR //
  public static boolean a(File paramFile)
  {
    // Byte code:
    //   0: new 189	java/io/RandomAccessFile
    //   3: dup
    //   4: aload_0
    //   5: ldc 191
    //   7: invokespecial 194	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   10: astore_1
    //   11: aload_1
    //   12: lconst_0
    //   13: invokevirtual 197	java/io/RandomAccessFile:seek	(J)V
    //   16: sipush 1024
    //   19: newarray byte
    //   21: astore 9
    //   23: iconst_0
    //   24: istore 10
    //   26: aload_1
    //   27: aload 9
    //   29: iload 10
    //   31: sipush 1024
    //   34: iload 10
    //   36: isub
    //   37: invokevirtual 201	java/io/RandomAccessFile:read	([BII)I
    //   40: istore 11
    //   42: iload 11
    //   44: iconst_m1
    //   45: if_icmpeq +201 -> 246
    //   48: iload 10
    //   50: iload 11
    //   52: iadd
    //   53: istore 12
    //   55: goto +195 -> 250
    //   58: iload 13
    //   60: iload 12
    //   62: if_icmpge +24 -> 86
    //   65: aload 9
    //   67: iload 13
    //   69: sipush 256
    //   72: aload 9
    //   74: iload 13
    //   76: baload
    //   77: isub
    //   78: i2b
    //   79: bastore
    //   80: iinc 13 1
    //   83: goto -25 -> 58
    //   86: aload_1
    //   87: lconst_0
    //   88: invokevirtual 197	java/io/RandomAccessFile:seek	(J)V
    //   91: aload_1
    //   92: aload 9
    //   94: iconst_0
    //   95: iload 12
    //   97: invokevirtual 205	java/io/RandomAccessFile:write	([BII)V
    //   100: aload_1
    //   101: invokevirtual 209	java/io/RandomAccessFile:getFD	()Ljava/io/FileDescriptor;
    //   104: invokevirtual 214	java/io/FileDescriptor:sync	()V
    //   107: iconst_1
    //   108: istore 5
    //   110: aload_1
    //   111: invokevirtual 217	java/io/RandomAccessFile:close	()V
    //   114: iload 5
    //   116: ireturn
    //   117: astore 14
    //   119: aload 14
    //   121: invokevirtual 220	java/io/IOException:printStackTrace	()V
    //   124: goto -10 -> 114
    //   127: astore_2
    //   128: aconst_null
    //   129: astore_1
    //   130: aload_2
    //   131: invokevirtual 221	java/io/FileNotFoundException:printStackTrace	()V
    //   134: iconst_0
    //   135: istore 5
    //   137: aload_1
    //   138: ifnull -24 -> 114
    //   141: aload_1
    //   142: invokevirtual 217	java/io/RandomAccessFile:close	()V
    //   145: iconst_0
    //   146: istore 5
    //   148: goto -34 -> 114
    //   151: astore 6
    //   153: aload 6
    //   155: invokevirtual 220	java/io/IOException:printStackTrace	()V
    //   158: iconst_0
    //   159: istore 5
    //   161: goto -47 -> 114
    //   164: astore 7
    //   166: aconst_null
    //   167: astore_1
    //   168: aload 7
    //   170: invokevirtual 220	java/io/IOException:printStackTrace	()V
    //   173: iconst_0
    //   174: istore 5
    //   176: aload_1
    //   177: ifnull -63 -> 114
    //   180: aload_1
    //   181: invokevirtual 217	java/io/RandomAccessFile:close	()V
    //   184: iconst_0
    //   185: istore 5
    //   187: goto -73 -> 114
    //   190: astore 8
    //   192: aload 8
    //   194: invokevirtual 220	java/io/IOException:printStackTrace	()V
    //   197: iconst_0
    //   198: istore 5
    //   200: goto -86 -> 114
    //   203: astore_3
    //   204: aconst_null
    //   205: astore_1
    //   206: aload_1
    //   207: ifnull +7 -> 214
    //   210: aload_1
    //   211: invokevirtual 217	java/io/RandomAccessFile:close	()V
    //   214: aload_3
    //   215: athrow
    //   216: astore 4
    //   218: aload 4
    //   220: invokevirtual 220	java/io/IOException:printStackTrace	()V
    //   223: goto -9 -> 214
    //   226: astore_3
    //   227: goto -21 -> 206
    //   230: astore 7
    //   232: goto -64 -> 168
    //   235: astore_2
    //   236: goto -106 -> 130
    //   239: iload 12
    //   241: istore 10
    //   243: goto -217 -> 26
    //   246: iload 10
    //   248: istore 12
    //   250: iload 11
    //   252: iconst_m1
    //   253: if_icmpeq +11 -> 264
    //   256: iload 12
    //   258: sipush 1024
    //   261: if_icmplt -22 -> 239
    //   264: iconst_0
    //   265: istore 13
    //   267: goto -209 -> 58
    //
    // Exception table:
    //   from	to	target	type
    //   110	114	117	java/io/IOException
    //   0	11	127	java/io/FileNotFoundException
    //   141	145	151	java/io/IOException
    //   0	11	164	java/io/IOException
    //   180	184	190	java/io/IOException
    //   0	11	203	finally
    //   210	214	216	java/io/IOException
    //   11	107	226	finally
    //   130	134	226	finally
    //   168	173	226	finally
    //   11	107	230	java/io/IOException
    //   11	107	235	java/io/FileNotFoundException
  }

  // ERROR //
  public static boolean a(File paramFile1, File paramFile2)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: aconst_null
    //   3: astore_3
    //   4: aload_0
    //   5: invokevirtual 225	java/io/File:isFile	()Z
    //   8: ifeq +187 -> 195
    //   11: new 227	java/io/FileInputStream
    //   14: dup
    //   15: aload_0
    //   16: invokespecial 230	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   19: astore 7
    //   21: new 232	java/io/FileOutputStream
    //   24: dup
    //   25: aload_1
    //   26: invokespecial 233	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   29: astore 8
    //   31: new 235	java/io/BufferedInputStream
    //   34: dup
    //   35: aload 7
    //   37: invokespecial 238	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   40: astore 9
    //   42: new 240	java/io/BufferedOutputStream
    //   45: dup
    //   46: aload 8
    //   48: invokespecial 243	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   51: astore 10
    //   53: sipush 8192
    //   56: newarray byte
    //   58: astore 18
    //   60: aload 9
    //   62: aload 18
    //   64: invokevirtual 246	java/io/BufferedInputStream:read	([B)I
    //   67: istore 19
    //   69: iload 19
    //   71: iconst_m1
    //   72: if_icmpeq +57 -> 129
    //   75: aload 10
    //   77: aload 18
    //   79: iconst_0
    //   80: iload 19
    //   82: invokevirtual 247	java/io/BufferedOutputStream:write	([BII)V
    //   85: goto -25 -> 60
    //   88: astore 13
    //   90: aload 9
    //   92: astore 14
    //   94: aload 8
    //   96: astore 15
    //   98: aload 7
    //   100: astore 16
    //   102: aload 13
    //   104: invokevirtual 248	java/lang/Exception:printStackTrace	()V
    //   107: aload 14
    //   109: invokevirtual 249	java/io/BufferedInputStream:close	()V
    //   112: aload 10
    //   114: invokevirtual 250	java/io/BufferedOutputStream:close	()V
    //   117: aload 16
    //   119: invokevirtual 253	java/io/InputStream:close	()V
    //   122: aload 15
    //   124: invokevirtual 256	java/io/OutputStream:close	()V
    //   127: iconst_1
    //   128: ireturn
    //   129: aload 10
    //   131: invokevirtual 259	java/io/BufferedOutputStream:flush	()V
    //   134: aload 9
    //   136: invokevirtual 249	java/io/BufferedInputStream:close	()V
    //   139: aload 10
    //   141: invokevirtual 250	java/io/BufferedOutputStream:close	()V
    //   144: aload 7
    //   146: invokevirtual 253	java/io/InputStream:close	()V
    //   149: aload 8
    //   151: invokevirtual 256	java/io/OutputStream:close	()V
    //   154: goto -27 -> 127
    //   157: astore 20
    //   159: goto -32 -> 127
    //   162: astore 11
    //   164: aconst_null
    //   165: astore 9
    //   167: aconst_null
    //   168: astore 8
    //   170: aconst_null
    //   171: astore 7
    //   173: aload 9
    //   175: invokevirtual 249	java/io/BufferedInputStream:close	()V
    //   178: aload_3
    //   179: invokevirtual 250	java/io/BufferedOutputStream:close	()V
    //   182: aload 7
    //   184: invokevirtual 253	java/io/InputStream:close	()V
    //   187: aload 8
    //   189: invokevirtual 256	java/io/OutputStream:close	()V
    //   192: aload 11
    //   194: athrow
    //   195: aload_0
    //   196: invokevirtual 262	java/io/File:isDirectory	()Z
    //   199: ifeq -72 -> 127
    //   202: aload_0
    //   203: invokevirtual 266	java/io/File:listFiles	()[Ljava/io/File;
    //   206: astore 4
    //   208: aload_1
    //   209: invokevirtual 269	java/io/File:mkdir	()Z
    //   212: pop
    //   213: iload_2
    //   214: aload 4
    //   216: arraylength
    //   217: if_icmpge -90 -> 127
    //   220: aload 4
    //   222: iload_2
    //   223: aaload
    //   224: invokevirtual 272	java/io/File:getAbsoluteFile	()Ljava/io/File;
    //   227: new 137	java/io/File
    //   230: dup
    //   231: new 33	java/lang/StringBuilder
    //   234: dup
    //   235: invokespecial 34	java/lang/StringBuilder:<init>	()V
    //   238: aload_1
    //   239: invokevirtual 272	java/io/File:getAbsoluteFile	()Ljava/io/File;
    //   242: invokevirtual 275	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   245: getstatic 278	java/io/File:separator	Ljava/lang/String;
    //   248: invokevirtual 38	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   251: aload 4
    //   253: iload_2
    //   254: aaload
    //   255: invokevirtual 281	java/io/File:getName	()Ljava/lang/String;
    //   258: invokevirtual 38	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   261: invokevirtual 54	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   264: invokespecial 156	java/io/File:<init>	(Ljava/lang/String;)V
    //   267: invokestatic 283	k:a	(Ljava/io/File;Ljava/io/File;)Z
    //   270: pop
    //   271: iinc 2 1
    //   274: goto -61 -> 213
    //   277: astore 12
    //   279: goto -87 -> 192
    //   282: astore 11
    //   284: aconst_null
    //   285: astore_3
    //   286: aconst_null
    //   287: astore 9
    //   289: aconst_null
    //   290: astore 8
    //   292: goto -119 -> 173
    //   295: astore 11
    //   297: aconst_null
    //   298: astore_3
    //   299: aconst_null
    //   300: astore 9
    //   302: goto -129 -> 173
    //   305: astore 11
    //   307: aconst_null
    //   308: astore_3
    //   309: goto -136 -> 173
    //   312: astore 11
    //   314: aload 10
    //   316: astore_3
    //   317: goto -144 -> 173
    //   320: astore 11
    //   322: aload 16
    //   324: astore 7
    //   326: aload 15
    //   328: astore 8
    //   330: aload 14
    //   332: astore 9
    //   334: aload 10
    //   336: astore_3
    //   337: goto -164 -> 173
    //   340: astore 17
    //   342: goto -215 -> 127
    //   345: astore 13
    //   347: aconst_null
    //   348: astore 10
    //   350: aconst_null
    //   351: astore 14
    //   353: aconst_null
    //   354: astore 15
    //   356: aconst_null
    //   357: astore 16
    //   359: goto -257 -> 102
    //   362: astore 13
    //   364: aload 7
    //   366: astore 16
    //   368: aconst_null
    //   369: astore 10
    //   371: aconst_null
    //   372: astore 14
    //   374: aconst_null
    //   375: astore 15
    //   377: goto -275 -> 102
    //   380: astore 13
    //   382: aload 8
    //   384: astore 15
    //   386: aload 7
    //   388: astore 16
    //   390: aconst_null
    //   391: astore 10
    //   393: aconst_null
    //   394: astore 14
    //   396: goto -294 -> 102
    //   399: astore 13
    //   401: aload 9
    //   403: astore 14
    //   405: aload 8
    //   407: astore 15
    //   409: aload 7
    //   411: astore 16
    //   413: aconst_null
    //   414: astore 10
    //   416: goto -314 -> 102
    //
    // Exception table:
    //   from	to	target	type
    //   53	85	88	java/lang/Exception
    //   129	134	88	java/lang/Exception
    //   134	154	157	java/lang/Exception
    //   11	21	162	finally
    //   173	192	277	java/lang/Exception
    //   21	31	282	finally
    //   31	42	295	finally
    //   42	53	305	finally
    //   53	85	312	finally
    //   129	134	312	finally
    //   102	107	320	finally
    //   107	127	340	java/lang/Exception
    //   11	21	345	java/lang/Exception
    //   21	31	362	java/lang/Exception
    //   31	42	380	java/lang/Exception
    //   42	53	399	java/lang/Exception
  }

  private static boolean a(String paramString, String[] paramArrayOfString)
  {
    int i = paramArrayOfString.length;
    for (int j = 0; ; j++)
    {
      boolean bool = false;
      if (j < i)
      {
        if (paramString.equalsIgnoreCase(paramArrayOfString[j]))
          bool = true;
      }
      else
        return bool;
    }
  }

  public static byte[] a(byte[] paramArrayOfByte)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramArrayOfByte);
      byte[] arrayOfByte2 = localMessageDigest.digest();
      arrayOfByte1 = arrayOfByte2;
      return arrayOfByte1;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      while (true)
      {
        localNoSuchAlgorithmException.printStackTrace();
        byte[] arrayOfByte1 = null;
      }
    }
  }

  public static int b(File paramFile)
  {
    int i;
    if (paramFile.isDirectory())
      i = 99;
    while (true)
    {
      return i;
      String str = c(paramFile.getName());
      Context localContext = TMSApplication.getApplicaionContext();
      if (a(str, localContext.getResources().getStringArray(2131165255)))
        i = 0;
      else if (a(str, localContext.getResources().getStringArray(2131165253)))
        i = 2;
      else if (a(str, localContext.getResources().getStringArray(2131165254)))
        i = 1;
      else
        i = 100;
    }
  }

  // ERROR //
  public static android.graphics.Bitmap b(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_0
    //   3: ifnonnull +5 -> 8
    //   6: aload_1
    //   7: areturn
    //   8: new 324	java/net/URL
    //   11: dup
    //   12: aload_0
    //   13: invokespecial 325	java/net/URL:<init>	(Ljava/lang/String;)V
    //   16: invokevirtual 329	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   19: checkcast 331	java/net/HttpURLConnection
    //   22: astore 11
    //   24: aload 11
    //   26: sipush 15000
    //   29: invokevirtual 334	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   32: aload 11
    //   34: sipush 15000
    //   37: invokevirtual 337	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   40: aload 11
    //   42: iconst_1
    //   43: invokevirtual 341	java/net/HttpURLConnection:setDoInput	(Z)V
    //   46: aload 11
    //   48: invokevirtual 344	java/net/HttpURLConnection:connect	()V
    //   51: aload 11
    //   53: invokevirtual 348	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   56: astore 12
    //   58: aload 12
    //   60: astore 6
    //   62: aload 6
    //   64: ifnonnull +33 -> 97
    //   67: aconst_null
    //   68: astore_1
    //   69: aload 6
    //   71: ifnull -65 -> 6
    //   74: aload 6
    //   76: invokevirtual 253	java/io/InputStream:close	()V
    //   79: aconst_null
    //   80: astore_1
    //   81: goto -75 -> 6
    //   84: astore 13
    //   86: aload 13
    //   88: invokevirtual 351	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   91: pop
    //   92: aconst_null
    //   93: astore_1
    //   94: goto -88 -> 6
    //   97: aload 6
    //   99: invokestatic 355	a:a	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    //   102: astore 15
    //   104: aload 15
    //   106: astore 8
    //   108: aload 6
    //   110: ifnull +8 -> 118
    //   113: aload 6
    //   115: invokevirtual 253	java/io/InputStream:close	()V
    //   118: aload 8
    //   120: astore_1
    //   121: goto -115 -> 6
    //   124: astore 16
    //   126: aload 16
    //   128: invokevirtual 351	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   131: pop
    //   132: goto -14 -> 118
    //   135: astore 5
    //   137: aconst_null
    //   138: astore 6
    //   140: aload 5
    //   142: invokevirtual 351	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   145: pop
    //   146: aload 6
    //   148: ifnull +8 -> 156
    //   151: aload 6
    //   153: invokevirtual 253	java/io/InputStream:close	()V
    //   156: aconst_null
    //   157: astore 8
    //   159: goto -41 -> 118
    //   162: astore 9
    //   164: aload 9
    //   166: invokevirtual 351	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   169: pop
    //   170: aconst_null
    //   171: astore 8
    //   173: goto -55 -> 118
    //   176: astore_2
    //   177: aload_1
    //   178: ifnull +7 -> 185
    //   181: aload_1
    //   182: invokevirtual 253	java/io/InputStream:close	()V
    //   185: aload_2
    //   186: athrow
    //   187: astore_3
    //   188: aload_3
    //   189: invokevirtual 351	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   192: pop
    //   193: goto -8 -> 185
    //   196: astore_2
    //   197: aload 6
    //   199: astore_1
    //   200: goto -23 -> 177
    //   203: astore 5
    //   205: goto -65 -> 140
    //
    // Exception table:
    //   from	to	target	type
    //   74	79	84	java/lang/Exception
    //   113	118	124	java/lang/Exception
    //   8	58	135	java/lang/Exception
    //   151	156	162	java/lang/Exception
    //   8	58	176	finally
    //   181	185	187	java/lang/Exception
    //   97	104	196	finally
    //   140	146	196	finally
    //   97	104	203	java/lang/Exception
  }

  public static String b(byte[] paramArrayOfByte)
  {
    StringBuffer localStringBuffer = new StringBuffer(paramArrayOfByte.length);
    for (int i = 0; i < paramArrayOfByte.length; i++)
    {
      String str = Integer.toHexString(0xFF & paramArrayOfByte[i]);
      if (str.length() < 2)
        localStringBuffer.append(0);
      localStringBuffer.append(str.toUpperCase());
    }
    return localStringBuffer.toString();
  }

  public static boolean b(File paramFile1, File paramFile2)
    throws Exception
  {
    boolean bool1 = paramFile1.exists();
    boolean bool2 = false;
    if (!bool1);
    while (true)
    {
      return bool2;
      if (!paramFile2.exists())
        break;
      paramFile2.delete();
      bool2 = paramFile1.renameTo(paramFile2);
      label31: if (bool2)
        break label106;
      bool2 = c(paramFile1, paramFile2);
    }
    String str = paramFile2.getAbsolutePath();
    File localFile = new File(str.substring(0, str.lastIndexOf(File.separator)));
    if ((localFile.exists()) && (localFile.isDirectory()));
    for (boolean bool3 = true; ; bool3 = localFile.mkdirs())
    {
      bool2 = false;
      if (!bool3)
        break label31;
      bool2 = paramFile1.renameTo(paramFile2);
      break label31;
      label106: break;
    }
  }

  public static String c(String paramString)
  {
    int i = paramString.substring(1 + paramString.lastIndexOf(File.separator)).lastIndexOf(".");
    if (i != -1);
    for (String str = paramString.substring(i).toLowerCase(); ; str = "")
      return str;
  }

  private static void c(File paramFile)
  {
    if (paramFile.isDirectory())
    {
      File[] arrayOfFile = paramFile.listFiles();
      if ((arrayOfFile != null) && (arrayOfFile.length > 0))
        for (int i = 0; i < arrayOfFile.length; i++)
          c(arrayOfFile[i]);
    }
    paramFile.delete();
  }

  private static boolean c(File paramFile1, File paramFile2)
    throws Exception
  {
    a(paramFile1, paramFile2);
    c(paramFile1);
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     k
 * JD-Core Version:    0.6.2
 */