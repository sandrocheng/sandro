import android.net.Uri;
import android.os.Environment;
import com.tencent.tmsecure.utils.ScriptHelper;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;

public final class btd
{
  static
  {
    new String[][] { { "3gp", "video/3gpp" }, { "apk", "application/vnd.android.package-archive" }, { "asf", "video/x-ms-asf" }, { "avi", "video/x-msvideo" }, { "bin", "application/octet-stream" }, { "bmp", "image/bmp" }, { "c", "text/plain" }, { "class", "application/octet-stream" }, { "conf", "text/plain" }, { "cpp", "text/plain" }, { "doc", "application/msword" }, { "docx", "application/msword" }, { "exe", "application/octet-stream" }, { "gif", "image/gif" }, { "gtar", "application/x-gtar" }, { "gz", "application/x-gzip" }, { "h", "text/plain" }, { "htm", "text/html" }, { "html", "text/html" }, { "jar", "application/java-archive" }, { "java", "text/plain" }, { "jpeg", "image/jpeg" }, { "jpg", "image/jpeg" }, { "js", "application/x-javascript" }, { "log", "text/plain" }, { "m3u", "audio/x-mpegurl" }, { "m4a", "audio/mp4a-latm" }, { "m4b", "audio/mp4a-latm" }, { "m4p", "audio/mp4a-latm" }, { "m4u", "video/vnd.mpegurl" }, { "m4v", "video/x-m4v" }, { "mov", "video/quicktime" }, { "mp2", "audio/x-mpeg" }, { "mp3", "audio/x-mpeg" }, { "mp4", "video/mp4" }, { "mpc", "application/vnd.mpohn.certificate" }, { "mpe", "video/mpeg" }, { "mpeg", "video/mpeg" }, { "mpg", "video/mpeg" }, { "mpg4", "video/mp4" }, { "mpga", "audio/mpeg" }, { "msg", "application/vnd.ms-outlook" }, { "ogg", "audio/ogg" }, { "pdf", "application/pdf" }, { "png", "image/png" }, { "pps", "application/vnd.ms-powerpoint" }, { "ppsx", "application/vnd.ms-powerpoint" }, { "ppt", "application/vnd.ms-powerpoint" }, { "pptx", "application/vnd.ms-powerpoint" }, { "xls", "application/vnd.ms-excel" }, { "xlsx", "application/vnd.ms-excel" }, { "prop", "text/plain" }, { "rar", "application/x-rar-compressed" }, { "rc", "text/plain" }, { "rmvb", "audio/x-pn-realaudio" }, { "rtf", "application/rtf" }, { "sh", "text/plain" }, { "tar", "application/x-tar" }, { "tgz", "application/x-compressed" }, { "txt", "text/plain" }, { "wav", "audio/x-wav" }, { "wma", "audio/x-ms-wma" }, { "wmv", "audio/x-ms-wmv" }, { "wps", "application/vnd.ms-works" }, { "xml", "text/plain" }, { "z", "application/x-compress" }, { "zip", "application/zip" }, { "epub", "application/epub+zip" }, { "", "*/*" } };
  }

  // ERROR //
  public static int a(android.content.Context paramContext, Object paramObject, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: bipush 254
    //   5: istore 5
    //   7: aload_1
    //   8: ifnull +11 -> 19
    //   11: aload_2
    //   12: ifnull +7 -> 19
    //   15: aload_3
    //   16: ifnonnull +10 -> 26
    //   19: bipush 199
    //   21: istore 5
    //   23: iload 5
    //   25: ireturn
    //   26: aload_0
    //   27: aload_3
    //   28: iconst_0
    //   29: invokevirtual 250	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   32: astore 18
    //   34: aload 18
    //   36: astore 4
    //   38: new 252	com/qq/jce/wup/UniAttribute
    //   41: dup
    //   42: invokespecial 255	com/qq/jce/wup/UniAttribute:<init>	()V
    //   45: astore 19
    //   47: aload 19
    //   49: ldc_w 257
    //   52: invokevirtual 261	com/qq/jce/wup/UniAttribute:setEncodeName	(Ljava/lang/String;)V
    //   55: aload 19
    //   57: aload_2
    //   58: aload_1
    //   59: invokevirtual 265	com/qq/jce/wup/UniAttribute:put	(Ljava/lang/String;Ljava/lang/Object;)V
    //   62: aload_0
    //   63: aload 19
    //   65: invokevirtual 269	com/qq/jce/wup/UniAttribute:encode	()[B
    //   68: aconst_null
    //   69: invokestatic 275	com/tencent/tccdb/TccCryptor:encrypt	(Landroid/content/Context;[B[B)[B
    //   72: astore 23
    //   74: aload 23
    //   76: ifnull +13 -> 89
    //   79: aload 4
    //   81: aload 23
    //   83: invokevirtual 281	java/io/FileOutputStream:write	([B)V
    //   86: iconst_0
    //   87: istore 5
    //   89: aload 4
    //   91: ifnull -68 -> 23
    //   94: aload 4
    //   96: invokevirtual 284	java/io/FileOutputStream:close	()V
    //   99: goto -76 -> 23
    //   102: astore 24
    //   104: aload 24
    //   106: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   109: goto -86 -> 23
    //   112: astore 15
    //   114: aconst_null
    //   115: astore 9
    //   117: aload 15
    //   119: astore 16
    //   121: iconst_m1
    //   122: istore 5
    //   124: aload 16
    //   126: invokevirtual 288	java/io/FileNotFoundException:printStackTrace	()V
    //   129: aload 9
    //   131: ifnull -108 -> 23
    //   134: aload 9
    //   136: invokevirtual 284	java/io/FileOutputStream:close	()V
    //   139: goto -116 -> 23
    //   142: astore 17
    //   144: aload 17
    //   146: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   149: goto -126 -> 23
    //   152: astore 12
    //   154: aconst_null
    //   155: astore 9
    //   157: aload 12
    //   159: astore 13
    //   161: sipush -7000
    //   164: istore 5
    //   166: aload 13
    //   168: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   171: aload 9
    //   173: ifnull -150 -> 23
    //   176: aload 9
    //   178: invokevirtual 284	java/io/FileOutputStream:close	()V
    //   181: goto -158 -> 23
    //   184: astore 14
    //   186: aload 14
    //   188: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   191: goto -168 -> 23
    //   194: astore 8
    //   196: aconst_null
    //   197: astore 9
    //   199: aload 8
    //   201: astore 10
    //   203: aload 10
    //   205: invokevirtual 289	java/lang/Throwable:printStackTrace	()V
    //   208: aload 9
    //   210: ifnull -187 -> 23
    //   213: aload 9
    //   215: invokevirtual 284	java/io/FileOutputStream:close	()V
    //   218: goto -195 -> 23
    //   221: astore 11
    //   223: aload 11
    //   225: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   228: goto -205 -> 23
    //   231: astore 6
    //   233: aload 4
    //   235: ifnull +8 -> 243
    //   238: aload 4
    //   240: invokevirtual 284	java/io/FileOutputStream:close	()V
    //   243: aload 6
    //   245: athrow
    //   246: astore 7
    //   248: aload 7
    //   250: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   253: goto -10 -> 243
    //   256: astore 6
    //   258: aload 9
    //   260: astore 4
    //   262: goto -29 -> 233
    //   265: astore 22
    //   267: aload 4
    //   269: astore 9
    //   271: aload 22
    //   273: astore 10
    //   275: goto -72 -> 203
    //   278: astore 21
    //   280: aload 4
    //   282: astore 9
    //   284: aload 21
    //   286: astore 13
    //   288: goto -127 -> 161
    //   291: astore 20
    //   293: aload 4
    //   295: astore 9
    //   297: aload 20
    //   299: astore 16
    //   301: goto -180 -> 121
    //
    // Exception table:
    //   from	to	target	type
    //   94	99	102	java/io/IOException
    //   26	34	112	java/io/FileNotFoundException
    //   134	139	142	java/io/IOException
    //   26	34	152	java/io/IOException
    //   176	181	184	java/io/IOException
    //   26	34	194	java/lang/Throwable
    //   213	218	221	java/io/IOException
    //   26	34	231	finally
    //   38	86	231	finally
    //   238	243	246	java/io/IOException
    //   124	129	256	finally
    //   166	171	256	finally
    //   203	208	256	finally
    //   38	86	265	java/lang/Throwable
    //   38	86	278	java/io/IOException
    //   38	86	291	java/io/FileNotFoundException
  }

  // ERROR //
  public static String a(android.content.Context paramContext, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: ldc 2
    //   4: monitorenter
    //   5: aload_2
    //   6: ifnull +12 -> 18
    //   9: aload_2
    //   10: ldc 234
    //   12: invokevirtual 294	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   15: ifeq +11 -> 26
    //   18: aload_0
    //   19: invokevirtual 298	android/content/Context:getFilesDir	()Ljava/io/File;
    //   22: invokevirtual 304	java/io/File:toString	()Ljava/lang/String;
    //   25: astore_2
    //   26: new 300	java/io/File
    //   29: dup
    //   30: aload_2
    //   31: invokespecial 306	java/io/File:<init>	(Ljava/lang/String;)V
    //   34: astore 5
    //   36: aload 5
    //   38: invokevirtual 310	java/io/File:exists	()Z
    //   41: ifeq +11 -> 52
    //   44: aload 5
    //   46: invokevirtual 313	java/io/File:isDirectory	()Z
    //   49: ifne +9 -> 58
    //   52: aload 5
    //   54: invokevirtual 316	java/io/File:mkdirs	()Z
    //   57: pop
    //   58: new 318	java/lang/StringBuilder
    //   61: dup
    //   62: aload_2
    //   63: invokestatic 322	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   66: invokespecial 323	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   69: getstatic 327	java/io/File:separator	Ljava/lang/String;
    //   72: invokevirtual 331	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   75: aload_1
    //   76: invokevirtual 331	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   79: invokevirtual 332	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   82: astore 7
    //   84: aload 7
    //   86: astore 8
    //   88: new 300	java/io/File
    //   91: dup
    //   92: aload 8
    //   94: invokespecial 306	java/io/File:<init>	(Ljava/lang/String;)V
    //   97: astore 9
    //   99: aload 9
    //   101: invokevirtual 310	java/io/File:exists	()Z
    //   104: ifeq +55 -> 159
    //   107: aload_1
    //   108: ldc_w 334
    //   111: invokevirtual 294	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   114: ifne +45 -> 159
    //   117: aload_1
    //   118: ldc_w 336
    //   121: invokevirtual 294	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   124: ifeq +10 -> 134
    //   127: aload_0
    //   128: invokestatic 339	btd:a	(Landroid/content/Context;)Z
    //   131: ifne +28 -> 159
    //   134: aload_1
    //   135: ldc_w 341
    //   138: invokevirtual 294	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   141: ifeq +10 -> 151
    //   144: aload_0
    //   145: invokestatic 344	btd:b	(Landroid/content/Context;)Z
    //   148: ifne +11 -> 159
    //   151: aload_0
    //   152: aload_1
    //   153: invokestatic 347	btd:a	(Landroid/content/Context;Ljava/lang/String;)Z
    //   156: ifeq +248 -> 404
    //   159: aload 9
    //   161: invokevirtual 310	java/io/File:exists	()Z
    //   164: ifeq +9 -> 173
    //   167: aload 9
    //   169: invokevirtual 350	java/io/File:delete	()Z
    //   172: pop
    //   173: aload_0
    //   174: invokevirtual 354	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   177: invokevirtual 360	android/content/res/Resources:getAssets	()Landroid/content/res/AssetManager;
    //   180: aload_1
    //   181: iconst_1
    //   182: invokevirtual 366	android/content/res/AssetManager:open	(Ljava/lang/String;I)Ljava/io/InputStream;
    //   185: astore 19
    //   187: aload 19
    //   189: astore 16
    //   191: new 277	java/io/FileOutputStream
    //   194: dup
    //   195: aload 9
    //   197: invokespecial 369	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   200: astore 20
    //   202: sipush 8192
    //   205: newarray byte
    //   207: astore 22
    //   209: aload 16
    //   211: aload 22
    //   213: invokevirtual 375	java/io/InputStream:read	([B)I
    //   216: istore 23
    //   218: iload 23
    //   220: ifgt +33 -> 253
    //   223: aload 20
    //   225: astore 24
    //   227: aload 16
    //   229: ifnull +8 -> 237
    //   232: aload 16
    //   234: invokevirtual 376	java/io/InputStream:close	()V
    //   237: aload 24
    //   239: ifnull +8 -> 247
    //   242: aload 24
    //   244: invokevirtual 284	java/io/FileOutputStream:close	()V
    //   247: ldc 2
    //   249: monitorexit
    //   250: aload 8
    //   252: areturn
    //   253: aload 20
    //   255: aload 22
    //   257: iconst_0
    //   258: iload 23
    //   260: invokevirtual 379	java/io/FileOutputStream:write	([BII)V
    //   263: goto -54 -> 209
    //   266: astore 21
    //   268: aload 20
    //   270: astore 11
    //   272: aload 16
    //   274: astore 12
    //   276: aload 12
    //   278: ifnull +8 -> 286
    //   281: aload 12
    //   283: invokevirtual 376	java/io/InputStream:close	()V
    //   286: aload 11
    //   288: ifnull +8 -> 296
    //   291: aload 11
    //   293: invokevirtual 284	java/io/FileOutputStream:close	()V
    //   296: aconst_null
    //   297: astore 8
    //   299: goto -52 -> 247
    //   302: astore 15
    //   304: aconst_null
    //   305: astore 16
    //   307: aload 16
    //   309: ifnull +8 -> 317
    //   312: aload 16
    //   314: invokevirtual 376	java/io/InputStream:close	()V
    //   317: aload_3
    //   318: ifnull +7 -> 325
    //   321: aload_3
    //   322: invokevirtual 284	java/io/FileOutputStream:close	()V
    //   325: aload 15
    //   327: athrow
    //   328: astore 4
    //   330: ldc 2
    //   332: monitorexit
    //   333: aload 4
    //   335: athrow
    //   336: astore 14
    //   338: goto -52 -> 286
    //   341: astore 13
    //   343: goto -47 -> 296
    //   346: astore 18
    //   348: goto -31 -> 317
    //   351: astore 17
    //   353: goto -28 -> 325
    //   356: astore 26
    //   358: goto -121 -> 237
    //   361: astore 25
    //   363: goto -116 -> 247
    //   366: astore 15
    //   368: aconst_null
    //   369: astore_3
    //   370: goto -63 -> 307
    //   373: astore 15
    //   375: aload 20
    //   377: astore_3
    //   378: goto -71 -> 307
    //   381: astore 10
    //   383: aconst_null
    //   384: astore 11
    //   386: aconst_null
    //   387: astore 12
    //   389: goto -113 -> 276
    //   392: astore 27
    //   394: aload 16
    //   396: astore 12
    //   398: aconst_null
    //   399: astore 11
    //   401: goto -125 -> 276
    //   404: aconst_null
    //   405: astore 24
    //   407: aconst_null
    //   408: astore 16
    //   410: goto -183 -> 227
    //
    // Exception table:
    //   from	to	target	type
    //   202	218	266	java/io/IOException
    //   253	263	266	java/io/IOException
    //   88	187	302	finally
    //   9	84	328	finally
    //   232	237	328	finally
    //   242	247	328	finally
    //   281	286	328	finally
    //   291	296	328	finally
    //   312	317	328	finally
    //   321	325	328	finally
    //   325	328	328	finally
    //   281	286	336	java/io/IOException
    //   291	296	341	java/io/IOException
    //   312	317	346	java/io/IOException
    //   321	325	351	java/io/IOException
    //   232	237	356	java/io/IOException
    //   242	247	361	java/io/IOException
    //   191	202	366	finally
    //   202	218	373	finally
    //   253	263	373	finally
    //   88	187	381	java/io/IOException
    //   191	202	392	java/io/IOException
  }

  public static final String a(String paramString)
  {
    String str1 = Uri.decode(paramString);
    int j;
    if (str1 != null)
    {
      int i = str1.indexOf('?');
      if (i > 0)
        str1 = str1.substring(0, i);
      if (!str1.endsWith("/"))
      {
        j = 1 + str1.lastIndexOf('/');
        if (j <= 0);
      }
    }
    for (String str2 = str1.substring(j); ; str2 = null)
    {
      if (str2 == null)
        str2 = null;
      if (str2 == null)
        str2 = "downloadfile";
      return str2;
    }
  }

  public static ArrayList<String> a(String[] paramArrayOfString)
  {
    ArrayList localArrayList = new ArrayList();
    HashMap localHashMap = new HashMap();
    File localFile1 = new File("/storage");
    if (localFile1.exists())
      a(localArrayList, localFile1, paramArrayOfString, localHashMap);
    while (true)
    {
      return localArrayList;
      File localFile2 = new File("/mnt/sdcard");
      if (localFile2.exists())
        a(localArrayList, localFile2, paramArrayOfString, localHashMap);
      File localFile3 = new File("/mnt/sdcard-ext");
      if (localFile3.exists())
        a(localArrayList, localFile3, paramArrayOfString, localHashMap);
    }
  }

  public static List<String> a(File paramFile, List<String> paramList, boolean paramBoolean)
  {
    Object localObject;
    if (ScriptHelper.providerSupportGetAllApkFiles())
    {
      localObject = ScriptHelper.provider$24edfebd().b();
      return localObject;
    }
    ArrayList localArrayList = new ArrayList();
    bte localbte = new bte(paramList, paramBoolean, localArrayList);
    LinkedBlockingQueue localLinkedBlockingQueue = new LinkedBlockingQueue();
    File[] arrayOfFile1 = paramFile.listFiles(localbte);
    if (arrayOfFile1 != null)
      localLinkedBlockingQueue.addAll(Arrays.asList(arrayOfFile1));
    while (true)
    {
      if (localLinkedBlockingQueue.size() <= 0)
      {
        localObject = localArrayList;
        break;
      }
      File[] arrayOfFile2 = ((File)localLinkedBlockingQueue.poll()).listFiles(localbte);
      if (arrayOfFile2 != null)
        localLinkedBlockingQueue.addAll(Arrays.asList(arrayOfFile2));
    }
  }

  public static void a(File paramFile)
  {
    if (paramFile.exists())
      paramFile.delete();
  }

  private static void a(ArrayList<String> paramArrayList, File paramFile, String[] paramArrayOfString, HashMap<String, String> paramHashMap)
  {
    int i = 0;
    if (!paramFile.exists());
    while (true)
    {
      return;
      int m;
      if (paramFile.isDirectory())
      {
        if (paramArrayOfString != null)
        {
          int k = paramArrayOfString.length;
          m = 0;
          label29: if (m < k);
        }
        else
        {
          if (paramFile.getAbsolutePath().equals("/storage/emulated"))
            continue;
        }
      }
      else
        try
        {
          Object localObject = paramFile.getCanonicalPath();
          File localFile = paramFile;
          while (true)
          {
            if (((String)localObject).equals(localFile.getAbsolutePath()))
            {
              if (paramHashMap.containsKey(localObject))
                break;
              paramHashMap.put(localObject, localObject);
              File[] arrayOfFile = paramFile.listFiles();
              if (arrayOfFile == null)
                break;
              int j = arrayOfFile.length;
              while (i < j)
              {
                a(paramArrayList, arrayOfFile[i], paramArrayOfString, paramHashMap);
                i++;
              }
              String str2 = paramArrayOfString[m];
              if (paramFile.getName().toLowerCase().contains(str2))
                break;
              m++;
              break label29;
            }
            localFile = new File((String)localObject);
            String str1 = localFile.getCanonicalPath();
            localObject = str1;
          }
          if (paramFile.getName().endsWith(".apk"))
            paramArrayList.add(paramFile.getAbsolutePath());
        }
        catch (IOException localIOException)
        {
        }
    }
  }

  public static boolean a()
  {
    return Environment.getExternalStorageState().equals("mounted");
  }

  // ERROR //
  private static boolean a(android.content.Context paramContext)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_1
    //   2: new 318	java/lang/StringBuilder
    //   5: dup
    //   6: invokespecial 512	java/lang/StringBuilder:<init>	()V
    //   9: aload_0
    //   10: invokevirtual 298	android/content/Context:getFilesDir	()Ljava/io/File;
    //   13: invokevirtual 515	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   16: getstatic 327	java/io/File:separator	Ljava/lang/String;
    //   19: invokevirtual 331	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   22: ldc_w 336
    //   25: invokevirtual 331	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   28: invokevirtual 332	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   31: astore_2
    //   32: new 300	java/io/File
    //   35: dup
    //   36: aload_2
    //   37: invokespecial 306	java/io/File:<init>	(Ljava/lang/String;)V
    //   40: invokevirtual 310	java/io/File:exists	()Z
    //   43: ifne +5 -> 48
    //   46: iload_1
    //   47: ireturn
    //   48: aload_0
    //   49: invokevirtual 516	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   52: astore_3
    //   53: aconst_null
    //   54: astore 4
    //   56: aload_3
    //   57: ldc_w 336
    //   60: invokevirtual 519	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   63: astore 4
    //   65: bipush 12
    //   67: newarray byte
    //   69: astore 14
    //   71: aload 4
    //   73: aload 14
    //   75: invokevirtual 375	java/io/InputStream:read	([B)I
    //   78: pop
    //   79: sipush 255
    //   82: aload 14
    //   84: bipush 6
    //   86: baload
    //   87: iand
    //   88: sipush 255
    //   91: aload 14
    //   93: bipush 7
    //   95: baload
    //   96: iand
    //   97: bipush 8
    //   99: ishl
    //   100: ior
    //   101: sipush 255
    //   104: aload 14
    //   106: bipush 8
    //   108: baload
    //   109: iand
    //   110: bipush 16
    //   112: ishl
    //   113: ior
    //   114: istore 16
    //   116: aload 14
    //   118: bipush 9
    //   120: baload
    //   121: istore 17
    //   123: iload 16
    //   125: iload 17
    //   127: sipush 255
    //   130: iand
    //   131: bipush 24
    //   133: ishl
    //   134: ior
    //   135: istore 18
    //   137: aload 4
    //   139: ifnull +126 -> 265
    //   142: aload 4
    //   144: invokevirtual 376	java/io/InputStream:close	()V
    //   147: iload 18
    //   149: istore 8
    //   151: iload 8
    //   153: ifne +119 -> 272
    //   156: iconst_0
    //   157: istore_1
    //   158: goto -112 -> 46
    //   161: astore 12
    //   163: aload 12
    //   165: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   168: aload 4
    //   170: ifnull +139 -> 309
    //   173: aload 4
    //   175: invokevirtual 376	java/io/InputStream:close	()V
    //   178: iconst_0
    //   179: istore 8
    //   181: goto -30 -> 151
    //   184: astore 13
    //   186: aload 13
    //   188: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   191: iconst_0
    //   192: istore 8
    //   194: goto -43 -> 151
    //   197: astore 7
    //   199: aload 7
    //   201: invokevirtual 520	java/lang/Exception:printStackTrace	()V
    //   204: aload 4
    //   206: ifnull +103 -> 309
    //   209: aload 4
    //   211: invokevirtual 376	java/io/InputStream:close	()V
    //   214: iconst_0
    //   215: istore 8
    //   217: goto -66 -> 151
    //   220: astore 11
    //   222: aload 11
    //   224: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   227: iconst_0
    //   228: istore 8
    //   230: goto -79 -> 151
    //   233: astore 5
    //   235: aload 4
    //   237: ifnull +8 -> 245
    //   240: aload 4
    //   242: invokevirtual 376	java/io/InputStream:close	()V
    //   245: aload 5
    //   247: athrow
    //   248: astore 6
    //   250: aload 6
    //   252: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   255: goto -10 -> 245
    //   258: astore 19
    //   260: aload 19
    //   262: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   265: iload 18
    //   267: istore 8
    //   269: goto -118 -> 151
    //   272: aload_0
    //   273: aload_2
    //   274: invokestatic 526	com/tencent/tmsecure/utils/UpdateUtil:getSmsCheckerConfInfo	(Landroid/content/Context;Ljava/lang/String;)LQQPIM/ConfInfo;
    //   277: astore 9
    //   279: aload 9
    //   281: ifnull +22 -> 303
    //   284: aload 9
    //   286: invokevirtual 531	QQPIM/ConfInfo:getTimestamp	()I
    //   289: istore 10
    //   291: iload 8
    //   293: iload 10
    //   295: if_icmpgt -249 -> 46
    //   298: iconst_0
    //   299: istore_1
    //   300: goto -254 -> 46
    //   303: iconst_0
    //   304: istore 10
    //   306: goto -15 -> 291
    //   309: iconst_0
    //   310: istore 8
    //   312: goto -161 -> 151
    //
    // Exception table:
    //   from	to	target	type
    //   56	123	161	java/io/IOException
    //   173	178	184	java/io/IOException
    //   56	123	197	java/lang/Exception
    //   209	214	220	java/io/IOException
    //   56	123	233	finally
    //   163	168	233	finally
    //   199	204	233	finally
    //   240	245	248	java/io/IOException
    //   142	147	258	java/io/IOException
  }

  // ERROR //
  private static boolean a(android.content.Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: iconst_1
    //   3: istore_3
    //   4: new 300	java/io/File
    //   7: dup
    //   8: new 318	java/lang/StringBuilder
    //   11: dup
    //   12: invokespecial 512	java/lang/StringBuilder:<init>	()V
    //   15: invokestatic 537	com/tencent/tmsecure/common/TMSApplication:getApplicaionContext	()Landroid/content/Context;
    //   18: invokevirtual 298	android/content/Context:getFilesDir	()Ljava/io/File;
    //   21: invokevirtual 515	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   24: getstatic 327	java/io/File:separator	Ljava/lang/String;
    //   27: invokevirtual 331	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: aload_1
    //   31: invokevirtual 331	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   34: invokevirtual 332	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   37: invokespecial 306	java/io/File:<init>	(Ljava/lang/String;)V
    //   40: astore 4
    //   42: aload 4
    //   44: invokevirtual 310	java/io/File:exists	()Z
    //   47: ifne +5 -> 52
    //   50: iload_3
    //   51: ireturn
    //   52: aload_0
    //   53: invokevirtual 354	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   56: invokevirtual 360	android/content/res/Resources:getAssets	()Landroid/content/res/AssetManager;
    //   59: aload_1
    //   60: iconst_1
    //   61: invokevirtual 366	android/content/res/AssetManager:open	(Ljava/lang/String;I)Ljava/io/InputStream;
    //   64: astore 18
    //   66: aload 18
    //   68: astore 6
    //   70: aload 6
    //   72: invokestatic 542	m:a	(Ljava/io/InputStream;)Lbtc;
    //   75: getfield 547	btc:a	I
    //   78: istore 19
    //   80: aload 6
    //   82: ifnull +96 -> 178
    //   85: aload 6
    //   87: invokevirtual 376	java/io/InputStream:close	()V
    //   90: iload 19
    //   92: istore 9
    //   94: iload 9
    //   96: ifne +89 -> 185
    //   99: iconst_0
    //   100: istore_3
    //   101: goto -51 -> 50
    //   104: astore 8
    //   106: aconst_null
    //   107: astore 6
    //   109: aload 8
    //   111: invokevirtual 520	java/lang/Exception:printStackTrace	()V
    //   114: aload 6
    //   116: ifnull +206 -> 322
    //   119: aload 6
    //   121: invokevirtual 376	java/io/InputStream:close	()V
    //   124: iconst_0
    //   125: istore 9
    //   127: goto -33 -> 94
    //   130: astore 17
    //   132: aload 17
    //   134: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   137: iconst_0
    //   138: istore 9
    //   140: goto -46 -> 94
    //   143: astore 5
    //   145: aconst_null
    //   146: astore 6
    //   148: aload 6
    //   150: ifnull +8 -> 158
    //   153: aload 6
    //   155: invokevirtual 376	java/io/InputStream:close	()V
    //   158: aload 5
    //   160: athrow
    //   161: astore 7
    //   163: aload 7
    //   165: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   168: goto -10 -> 158
    //   171: astore 20
    //   173: aload 20
    //   175: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   178: iload 19
    //   180: istore 9
    //   182: goto -88 -> 94
    //   185: new 549	java/io/FileInputStream
    //   188: dup
    //   189: aload 4
    //   191: invokespecial 550	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   194: astore 10
    //   196: aload 10
    //   198: invokestatic 542	m:a	(Ljava/io/InputStream;)Lbtc;
    //   201: getfield 547	btc:a	I
    //   204: istore 14
    //   206: aload 10
    //   208: invokevirtual 551	java/io/FileInputStream:close	()V
    //   211: iload 9
    //   213: iload 14
    //   215: if_icmpgt -165 -> 50
    //   218: iconst_0
    //   219: istore_3
    //   220: goto -170 -> 50
    //   223: astore 11
    //   225: aload 11
    //   227: invokevirtual 520	java/lang/Exception:printStackTrace	()V
    //   230: aload_2
    //   231: ifnull +85 -> 316
    //   234: aload_2
    //   235: invokevirtual 551	java/io/FileInputStream:close	()V
    //   238: iconst_0
    //   239: istore 14
    //   241: goto -30 -> 211
    //   244: astore 15
    //   246: aload 15
    //   248: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   251: iconst_0
    //   252: istore 14
    //   254: goto -43 -> 211
    //   257: astore 12
    //   259: aload_2
    //   260: ifnull +7 -> 267
    //   263: aload_2
    //   264: invokevirtual 551	java/io/FileInputStream:close	()V
    //   267: aload 12
    //   269: athrow
    //   270: astore 13
    //   272: aload 13
    //   274: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   277: goto -10 -> 267
    //   280: astore 16
    //   282: aload 16
    //   284: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   287: goto -76 -> 211
    //   290: astore 12
    //   292: aload 10
    //   294: astore_2
    //   295: goto -36 -> 259
    //   298: astore 11
    //   300: aload 10
    //   302: astore_2
    //   303: goto -78 -> 225
    //   306: astore 5
    //   308: goto -160 -> 148
    //   311: astore 8
    //   313: goto -204 -> 109
    //   316: iconst_0
    //   317: istore 14
    //   319: goto -108 -> 211
    //   322: iconst_0
    //   323: istore 9
    //   325: goto -231 -> 94
    //
    // Exception table:
    //   from	to	target	type
    //   52	66	104	java/lang/Exception
    //   119	124	130	java/io/IOException
    //   52	66	143	finally
    //   153	158	161	java/io/IOException
    //   85	90	171	java/io/IOException
    //   185	196	223	java/lang/Exception
    //   234	238	244	java/io/IOException
    //   185	196	257	finally
    //   225	230	257	finally
    //   263	267	270	java/io/IOException
    //   206	211	280	java/io/IOException
    //   196	206	290	finally
    //   196	206	298	java/lang/Exception
    //   70	80	306	finally
    //   109	114	306	finally
    //   70	80	311	java/lang/Exception
  }

  // ERROR //
  public static Object b(android.content.Context paramContext, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_1
    //   3: ifnull +9 -> 12
    //   6: aconst_null
    //   7: astore_3
    //   8: aload_2
    //   9: ifnonnull +5 -> 14
    //   12: aload_3
    //   13: areturn
    //   14: aload_0
    //   15: aload_2
    //   16: invokevirtual 556	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   19: astore 19
    //   21: aload 19
    //   23: astore 6
    //   25: new 558	java/io/ByteArrayOutputStream
    //   28: dup
    //   29: invokespecial 559	java/io/ByteArrayOutputStream:<init>	()V
    //   32: astore 5
    //   34: sipush 1024
    //   37: newarray byte
    //   39: astore 23
    //   41: aload 6
    //   43: aload 23
    //   45: invokevirtual 560	java/io/FileInputStream:read	([B)I
    //   48: istore 24
    //   50: iload 24
    //   52: iconst_m1
    //   53: if_icmpne +78 -> 131
    //   56: aload 5
    //   58: invokevirtual 563	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   61: astore 25
    //   63: new 252	com/qq/jce/wup/UniAttribute
    //   66: dup
    //   67: invokespecial 255	com/qq/jce/wup/UniAttribute:<init>	()V
    //   70: astore 26
    //   72: aload 26
    //   74: ldc_w 257
    //   77: invokevirtual 261	com/qq/jce/wup/UniAttribute:setEncodeName	(Ljava/lang/String;)V
    //   80: aload 26
    //   82: aload_0
    //   83: aload 25
    //   85: aconst_null
    //   86: invokestatic 566	com/tencent/tccdb/TccCryptor:decrypt	(Landroid/content/Context;[B[B)[B
    //   89: invokevirtual 568	com/qq/jce/wup/UniAttribute:decode	([B)V
    //   92: aload 26
    //   94: aload_1
    //   95: invokevirtual 572	com/qq/jce/wup/UniAttribute:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   98: astore 27
    //   100: aload 27
    //   102: astore_3
    //   103: aload 6
    //   105: ifnull +8 -> 113
    //   108: aload 6
    //   110: invokevirtual 551	java/io/FileInputStream:close	()V
    //   113: aload 5
    //   115: invokevirtual 573	java/io/ByteArrayOutputStream:close	()V
    //   118: goto -106 -> 12
    //   121: astore 28
    //   123: aload 28
    //   125: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   128: goto -116 -> 12
    //   131: aload 5
    //   133: aload 23
    //   135: iconst_0
    //   136: iload 24
    //   138: invokevirtual 574	java/io/ByteArrayOutputStream:write	([BII)V
    //   141: goto -100 -> 41
    //   144: astore 22
    //   146: aload 6
    //   148: ifnull +8 -> 156
    //   151: aload 6
    //   153: invokevirtual 551	java/io/FileInputStream:close	()V
    //   156: aconst_null
    //   157: astore_3
    //   158: aload 5
    //   160: ifnull -148 -> 12
    //   163: aload 5
    //   165: invokevirtual 573	java/io/ByteArrayOutputStream:close	()V
    //   168: aconst_null
    //   169: astore_3
    //   170: goto -158 -> 12
    //   173: astore 7
    //   175: aload 7
    //   177: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   180: aconst_null
    //   181: astore_3
    //   182: goto -170 -> 12
    //   185: astore 8
    //   187: aload 8
    //   189: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   192: goto -36 -> 156
    //   195: astore 16
    //   197: aconst_null
    //   198: astore 5
    //   200: aconst_null
    //   201: astore 6
    //   203: aload 6
    //   205: ifnull +8 -> 213
    //   208: aload 6
    //   210: invokevirtual 551	java/io/FileInputStream:close	()V
    //   213: aconst_null
    //   214: astore_3
    //   215: aload 5
    //   217: ifnull -205 -> 12
    //   220: aload 5
    //   222: invokevirtual 573	java/io/ByteArrayOutputStream:close	()V
    //   225: aconst_null
    //   226: astore_3
    //   227: goto -215 -> 12
    //   230: astore 17
    //   232: aload 17
    //   234: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   237: aconst_null
    //   238: astore_3
    //   239: goto -227 -> 12
    //   242: astore 18
    //   244: aload 18
    //   246: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   249: goto -36 -> 213
    //   252: astore 13
    //   254: aconst_null
    //   255: astore 5
    //   257: aconst_null
    //   258: astore 6
    //   260: aload 6
    //   262: ifnull +8 -> 270
    //   265: aload 6
    //   267: invokevirtual 551	java/io/FileInputStream:close	()V
    //   270: aconst_null
    //   271: astore_3
    //   272: aload 5
    //   274: ifnull -262 -> 12
    //   277: aload 5
    //   279: invokevirtual 573	java/io/ByteArrayOutputStream:close	()V
    //   282: aconst_null
    //   283: astore_3
    //   284: goto -272 -> 12
    //   287: astore 14
    //   289: aload 14
    //   291: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   294: aconst_null
    //   295: astore_3
    //   296: goto -284 -> 12
    //   299: astore 15
    //   301: aload 15
    //   303: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   306: goto -36 -> 270
    //   309: astore 9
    //   311: aconst_null
    //   312: astore 6
    //   314: aload 9
    //   316: astore 10
    //   318: aconst_null
    //   319: astore 5
    //   321: aload 6
    //   323: ifnull +8 -> 331
    //   326: aload 6
    //   328: invokevirtual 551	java/io/FileInputStream:close	()V
    //   331: aload 5
    //   333: ifnull +8 -> 341
    //   336: aload 5
    //   338: invokevirtual 573	java/io/ByteArrayOutputStream:close	()V
    //   341: aload 10
    //   343: athrow
    //   344: astore 12
    //   346: aload 12
    //   348: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   351: goto -20 -> 331
    //   354: astore 11
    //   356: aload 11
    //   358: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   361: goto -20 -> 341
    //   364: astore 29
    //   366: aload 29
    //   368: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   371: goto -258 -> 113
    //   374: astore 33
    //   376: aload 33
    //   378: astore 10
    //   380: aconst_null
    //   381: astore 5
    //   383: goto -62 -> 321
    //   386: astore 10
    //   388: goto -67 -> 321
    //   391: astore 32
    //   393: aconst_null
    //   394: astore 5
    //   396: goto -136 -> 260
    //   399: astore 21
    //   401: goto -141 -> 260
    //   404: astore 31
    //   406: aconst_null
    //   407: astore 5
    //   409: goto -206 -> 203
    //   412: astore 20
    //   414: goto -211 -> 203
    //   417: astore 4
    //   419: aconst_null
    //   420: astore 5
    //   422: aconst_null
    //   423: astore 6
    //   425: goto -279 -> 146
    //   428: astore 30
    //   430: aconst_null
    //   431: astore 5
    //   433: goto -287 -> 146
    //
    // Exception table:
    //   from	to	target	type
    //   113	118	121	java/io/IOException
    //   34	100	144	java/io/FileNotFoundException
    //   131	141	144	java/io/FileNotFoundException
    //   163	168	173	java/io/IOException
    //   151	156	185	java/io/IOException
    //   14	21	195	java/io/IOException
    //   220	225	230	java/io/IOException
    //   208	213	242	java/io/IOException
    //   14	21	252	java/lang/Throwable
    //   277	282	287	java/io/IOException
    //   265	270	299	java/io/IOException
    //   14	21	309	finally
    //   326	331	344	java/io/IOException
    //   336	341	354	java/io/IOException
    //   108	113	364	java/io/IOException
    //   25	34	374	finally
    //   34	100	386	finally
    //   131	141	386	finally
    //   25	34	391	java/lang/Throwable
    //   34	100	399	java/lang/Throwable
    //   131	141	399	java/lang/Throwable
    //   25	34	404	java/io/IOException
    //   34	100	412	java/io/IOException
    //   131	141	412	java/io/IOException
    //   14	21	417	java/io/FileNotFoundException
    //   25	34	428	java/io/FileNotFoundException
  }

  // ERROR //
  private static boolean b(android.content.Context paramContext)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_1
    //   2: new 576	btl
    //   5: dup
    //   6: ldc_w 578
    //   9: invokespecial 579	btl:<init>	(Ljava/lang/String;)V
    //   12: astore_2
    //   13: aload_2
    //   14: getfield 582	btl:c	Landroid/content/SharedPreferences;
    //   17: new 318	java/lang/StringBuilder
    //   20: dup
    //   21: aload_2
    //   22: getfield 584	btl:a	Ljava/lang/String;
    //   25: invokestatic 322	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   28: invokespecial 323	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   31: ldc_w 586
    //   34: invokevirtual 331	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: ldc_w 588
    //   40: invokevirtual 331	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: invokevirtual 332	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   46: ldc 234
    //   48: invokeinterface 594 3 0
    //   53: astore_3
    //   54: ldc_w 596
    //   57: invokestatic 599	com/tencent/tmsecure/common/TMSApplication:getStrFromEnvMap	(Ljava/lang/String;)Ljava/lang/String;
    //   60: astore 4
    //   62: aload_3
    //   63: aload 4
    //   65: invokevirtual 294	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   68: ifne +64 -> 132
    //   71: aload_2
    //   72: getfield 602	btl:b	Landroid/content/SharedPreferences$Editor;
    //   75: new 318	java/lang/StringBuilder
    //   78: dup
    //   79: aload_2
    //   80: getfield 584	btl:a	Ljava/lang/String;
    //   83: invokestatic 322	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   86: invokespecial 323	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   89: ldc_w 586
    //   92: invokevirtual 331	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   95: ldc_w 588
    //   98: invokevirtual 331	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   101: invokevirtual 332	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   104: aload 4
    //   106: invokeinterface 608 3 0
    //   111: pop
    //   112: aload_2
    //   113: getfield 602	btl:b	Landroid/content/SharedPreferences$Editor;
    //   116: invokeinterface 611 1 0
    //   121: pop
    //   122: iload_1
    //   123: istore 5
    //   125: iload 5
    //   127: ifeq +11 -> 138
    //   130: iload_1
    //   131: ireturn
    //   132: iconst_0
    //   133: istore 5
    //   135: goto -10 -> 125
    //   138: new 318	java/lang/StringBuilder
    //   141: dup
    //   142: invokespecial 512	java/lang/StringBuilder:<init>	()V
    //   145: aload_0
    //   146: invokevirtual 298	android/content/Context:getFilesDir	()Ljava/io/File;
    //   149: invokevirtual 515	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   152: getstatic 327	java/io/File:separator	Ljava/lang/String;
    //   155: invokevirtual 331	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   158: ldc_w 341
    //   161: invokevirtual 331	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   164: invokevirtual 332	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   167: astore 6
    //   169: new 300	java/io/File
    //   172: dup
    //   173: aload 6
    //   175: invokespecial 306	java/io/File:<init>	(Ljava/lang/String;)V
    //   178: invokevirtual 310	java/io/File:exists	()Z
    //   181: ifeq -51 -> 130
    //   184: aload_0
    //   185: invokevirtual 516	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   188: astore 7
    //   190: aload 7
    //   192: ldc_w 341
    //   195: invokevirtual 519	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   198: astore 20
    //   200: aload 20
    //   202: astore 9
    //   204: bipush 28
    //   206: newarray byte
    //   208: astore 21
    //   210: aload 9
    //   212: aload 21
    //   214: invokevirtual 375	java/io/InputStream:read	([B)I
    //   217: pop
    //   218: sipush 255
    //   221: aload 21
    //   223: iconst_4
    //   224: baload
    //   225: iand
    //   226: sipush 255
    //   229: aload 21
    //   231: iconst_5
    //   232: baload
    //   233: iand
    //   234: bipush 8
    //   236: ishl
    //   237: ior
    //   238: sipush 255
    //   241: aload 21
    //   243: bipush 6
    //   245: baload
    //   246: iand
    //   247: bipush 16
    //   249: ishl
    //   250: ior
    //   251: istore 23
    //   253: aload 21
    //   255: bipush 7
    //   257: baload
    //   258: istore 24
    //   260: iload 23
    //   262: iload 24
    //   264: sipush 255
    //   267: iand
    //   268: bipush 24
    //   270: ishl
    //   271: ior
    //   272: istore 12
    //   274: sipush 255
    //   277: aload 21
    //   279: bipush 24
    //   281: baload
    //   282: iand
    //   283: sipush 255
    //   286: aload 21
    //   288: bipush 25
    //   290: baload
    //   291: iand
    //   292: bipush 8
    //   294: ishl
    //   295: ior
    //   296: sipush 255
    //   299: aload 21
    //   301: bipush 26
    //   303: baload
    //   304: iand
    //   305: bipush 16
    //   307: ishl
    //   308: ior
    //   309: istore 25
    //   311: aload 21
    //   313: bipush 27
    //   315: baload
    //   316: istore 26
    //   318: iload 25
    //   320: iload 26
    //   322: sipush 255
    //   325: iand
    //   326: bipush 24
    //   328: ishl
    //   329: ior
    //   330: istore 13
    //   332: aload 9
    //   334: ifnull +8 -> 342
    //   337: aload 9
    //   339: invokevirtual 376	java/io/InputStream:close	()V
    //   342: iload 13
    //   344: ifne +130 -> 474
    //   347: iconst_0
    //   348: istore_1
    //   349: goto -219 -> 130
    //   352: astore 18
    //   354: aconst_null
    //   355: astore 9
    //   357: iconst_0
    //   358: istore 12
    //   360: aload 18
    //   362: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   365: aload 9
    //   367: ifnull +184 -> 551
    //   370: aload 9
    //   372: invokevirtual 376	java/io/InputStream:close	()V
    //   375: iconst_0
    //   376: istore 13
    //   378: goto -36 -> 342
    //   381: astore 19
    //   383: aload 19
    //   385: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   388: iconst_0
    //   389: istore 13
    //   391: goto -49 -> 342
    //   394: astore 11
    //   396: aconst_null
    //   397: astore 9
    //   399: iconst_0
    //   400: istore 12
    //   402: aload 11
    //   404: invokevirtual 520	java/lang/Exception:printStackTrace	()V
    //   407: aload 9
    //   409: ifnull +142 -> 551
    //   412: aload 9
    //   414: invokevirtual 376	java/io/InputStream:close	()V
    //   417: iconst_0
    //   418: istore 13
    //   420: goto -78 -> 342
    //   423: astore 17
    //   425: aload 17
    //   427: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   430: iconst_0
    //   431: istore 13
    //   433: goto -91 -> 342
    //   436: astore 8
    //   438: aconst_null
    //   439: astore 9
    //   441: aload 9
    //   443: ifnull +8 -> 451
    //   446: aload 9
    //   448: invokevirtual 376	java/io/InputStream:close	()V
    //   451: aload 8
    //   453: athrow
    //   454: astore 10
    //   456: aload 10
    //   458: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   461: goto -10 -> 451
    //   464: astore 27
    //   466: aload 27
    //   468: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   471: goto -129 -> 342
    //   474: aload_0
    //   475: aload 6
    //   477: invokestatic 617	com/tencent/tmsecure/module/qscanner/AmScanner:loadAmfHeader	(Landroid/content/Context;Ljava/lang/String;)LQQPIM/VirusClientInfo;
    //   480: astore 14
    //   482: aload 14
    //   484: ifnull -354 -> 130
    //   487: aload 14
    //   489: invokevirtual 622	QQPIM/VirusClientInfo:getVersion	()I
    //   492: istore 15
    //   494: aload 14
    //   496: invokevirtual 623	QQPIM/VirusClientInfo:getTimestamp	()I
    //   499: istore 16
    //   501: iload 12
    //   503: iload 15
    //   505: if_icmpne -375 -> 130
    //   508: iload 13
    //   510: iload 16
    //   512: if_icmpgt -382 -> 130
    //   515: iconst_0
    //   516: istore_1
    //   517: goto -387 -> 130
    //   520: astore 8
    //   522: goto -81 -> 441
    //   525: astore 11
    //   527: iconst_0
    //   528: istore 12
    //   530: goto -128 -> 402
    //   533: astore 11
    //   535: goto -133 -> 402
    //   538: astore 18
    //   540: iconst_0
    //   541: istore 12
    //   543: goto -183 -> 360
    //   546: astore 18
    //   548: goto -188 -> 360
    //   551: iconst_0
    //   552: istore 13
    //   554: goto -212 -> 342
    //
    // Exception table:
    //   from	to	target	type
    //   190	200	352	java/io/IOException
    //   370	375	381	java/io/IOException
    //   190	200	394	java/lang/Exception
    //   412	417	423	java/io/IOException
    //   190	200	436	finally
    //   446	451	454	java/io/IOException
    //   337	342	464	java/io/IOException
    //   204	260	520	finally
    //   274	318	520	finally
    //   360	365	520	finally
    //   402	407	520	finally
    //   204	260	525	java/lang/Exception
    //   274	318	533	java/lang/Exception
    //   204	260	538	java/io/IOException
    //   274	318	546	java/io/IOException
  }

  public static boolean b(String paramString)
  {
    if (!paramString.endsWith(File.separator))
      paramString = paramString + File.separator;
    File localFile = new File(paramString);
    boolean bool1 = localFile.exists();
    int i = 0;
    if (bool1)
    {
      boolean bool2 = localFile.isDirectory();
      i = 0;
      if (bool2)
        break label66;
    }
    label66: File[] arrayOfFile;
    while (true)
    {
      return i;
      arrayOfFile = localFile.listFiles();
      if (arrayOfFile == null)
      {
        i = localFile.delete();
      }
      else
      {
        int j = arrayOfFile.length;
        if (i < j)
          break;
        i = localFile.delete();
      }
    }
    if (arrayOfFile[i].isFile())
      f(arrayOfFile[i].getAbsolutePath());
    while (true)
    {
      i++;
      break;
      b(arrayOfFile[i].getAbsolutePath());
    }
  }

  // ERROR //
  public static String[] b(File paramFile)
  {
    // Byte code:
    //   0: new 634	java/io/BufferedInputStream
    //   3: dup
    //   4: new 549	java/io/FileInputStream
    //   7: dup
    //   8: aload_0
    //   9: invokespecial 550	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   12: invokespecial 637	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   15: astore_1
    //   16: new 558	java/io/ByteArrayOutputStream
    //   19: dup
    //   20: invokespecial 559	java/io/ByteArrayOutputStream:<init>	()V
    //   23: astore_2
    //   24: sipush 1024
    //   27: newarray byte
    //   29: astore 13
    //   31: aload_1
    //   32: aload 13
    //   34: invokevirtual 638	java/io/BufferedInputStream:read	([B)I
    //   37: istore 14
    //   39: iload 14
    //   41: iconst_m1
    //   42: if_icmpne +37 -> 79
    //   45: new 10	java/lang/String
    //   48: dup
    //   49: aload_2
    //   50: invokevirtual 563	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   53: invokespecial 640	java/lang/String:<init>	([B)V
    //   56: ldc_w 642
    //   59: invokevirtual 646	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   62: astore 15
    //   64: aload 15
    //   66: astore 7
    //   68: aload_1
    //   69: invokevirtual 647	java/io/BufferedInputStream:close	()V
    //   72: aload_2
    //   73: invokevirtual 573	java/io/ByteArrayOutputStream:close	()V
    //   76: aload 7
    //   78: areturn
    //   79: aload_2
    //   80: aload 13
    //   82: iconst_0
    //   83: iload 14
    //   85: invokevirtual 574	java/io/ByteArrayOutputStream:write	([BII)V
    //   88: goto -57 -> 31
    //   91: astore 10
    //   93: aload 10
    //   95: invokevirtual 288	java/io/FileNotFoundException:printStackTrace	()V
    //   98: aload_1
    //   99: ifnull +7 -> 106
    //   102: aload_1
    //   103: invokevirtual 647	java/io/BufferedInputStream:close	()V
    //   106: aconst_null
    //   107: astore 7
    //   109: aload_2
    //   110: ifnull -34 -> 76
    //   113: aload_2
    //   114: invokevirtual 573	java/io/ByteArrayOutputStream:close	()V
    //   117: aconst_null
    //   118: astore 7
    //   120: goto -44 -> 76
    //   123: astore 11
    //   125: aload 11
    //   127: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   130: aconst_null
    //   131: astore 7
    //   133: goto -57 -> 76
    //   136: astore 16
    //   138: aload 16
    //   140: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   143: goto -71 -> 72
    //   146: astore 17
    //   148: aload 17
    //   150: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   153: goto -77 -> 76
    //   156: astore 12
    //   158: aload 12
    //   160: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   163: goto -57 -> 106
    //   166: astore_3
    //   167: aconst_null
    //   168: astore_2
    //   169: aconst_null
    //   170: astore_1
    //   171: aload_3
    //   172: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   175: aload_1
    //   176: ifnull +7 -> 183
    //   179: aload_1
    //   180: invokevirtual 647	java/io/BufferedInputStream:close	()V
    //   183: aconst_null
    //   184: astore 7
    //   186: aload_2
    //   187: ifnull -111 -> 76
    //   190: aload_2
    //   191: invokevirtual 573	java/io/ByteArrayOutputStream:close	()V
    //   194: aconst_null
    //   195: astore 7
    //   197: goto -121 -> 76
    //   200: astore 8
    //   202: aload 8
    //   204: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   207: aconst_null
    //   208: astore 7
    //   210: goto -134 -> 76
    //   213: astore 9
    //   215: aload 9
    //   217: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   220: goto -37 -> 183
    //   223: astore 19
    //   225: aconst_null
    //   226: astore_2
    //   227: aconst_null
    //   228: astore_1
    //   229: aload 19
    //   231: astore 4
    //   233: aload_1
    //   234: ifnull +7 -> 241
    //   237: aload_1
    //   238: invokevirtual 647	java/io/BufferedInputStream:close	()V
    //   241: aload_2
    //   242: ifnull +7 -> 249
    //   245: aload_2
    //   246: invokevirtual 573	java/io/ByteArrayOutputStream:close	()V
    //   249: aload 4
    //   251: athrow
    //   252: astore 6
    //   254: aload 6
    //   256: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   259: goto -18 -> 241
    //   262: astore 5
    //   264: aload 5
    //   266: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   269: goto -20 -> 249
    //   272: astore 18
    //   274: aload 18
    //   276: astore 4
    //   278: aconst_null
    //   279: astore_2
    //   280: goto -47 -> 233
    //   283: astore 4
    //   285: goto -52 -> 233
    //   288: astore_3
    //   289: aconst_null
    //   290: astore_2
    //   291: goto -120 -> 171
    //   294: astore_3
    //   295: goto -124 -> 171
    //   298: astore 10
    //   300: aconst_null
    //   301: astore_2
    //   302: aconst_null
    //   303: astore_1
    //   304: goto -211 -> 93
    //   307: astore 10
    //   309: aconst_null
    //   310: astore_2
    //   311: goto -218 -> 93
    //
    // Exception table:
    //   from	to	target	type
    //   24	64	91	java/io/FileNotFoundException
    //   79	88	91	java/io/FileNotFoundException
    //   113	117	123	java/io/IOException
    //   68	72	136	java/io/IOException
    //   72	76	146	java/io/IOException
    //   102	106	156	java/io/IOException
    //   0	16	166	java/io/IOException
    //   190	194	200	java/io/IOException
    //   179	183	213	java/io/IOException
    //   0	16	223	finally
    //   237	241	252	java/io/IOException
    //   245	249	262	java/io/IOException
    //   16	24	272	finally
    //   24	64	283	finally
    //   79	88	283	finally
    //   93	98	283	finally
    //   171	175	283	finally
    //   16	24	288	java/io/IOException
    //   24	64	294	java/io/IOException
    //   79	88	294	java/io/IOException
    //   0	16	298	java/io/FileNotFoundException
    //   16	24	307	java/io/FileNotFoundException
  }

  public static boolean c(String paramString)
  {
    return new File(paramString).exists();
  }

  // ERROR //
  public static String d(String paramString)
  {
    // Byte code:
    //   0: new 634	java/io/BufferedInputStream
    //   3: dup
    //   4: new 549	java/io/FileInputStream
    //   7: dup
    //   8: aload_0
    //   9: invokespecial 652	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   12: invokespecial 637	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   15: astore_1
    //   16: new 558	java/io/ByteArrayOutputStream
    //   19: dup
    //   20: invokespecial 559	java/io/ByteArrayOutputStream:<init>	()V
    //   23: astore_2
    //   24: sipush 1024
    //   27: newarray byte
    //   29: astore 14
    //   31: aload_1
    //   32: aload 14
    //   34: invokevirtual 638	java/io/BufferedInputStream:read	([B)I
    //   37: istore 15
    //   39: iload 15
    //   41: iconst_m1
    //   42: if_icmpne +27 -> 69
    //   45: new 10	java/lang/String
    //   48: dup
    //   49: aload_2
    //   50: invokevirtual 563	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   53: invokespecial 640	java/lang/String:<init>	([B)V
    //   56: astore 8
    //   58: aload_2
    //   59: invokevirtual 573	java/io/ByteArrayOutputStream:close	()V
    //   62: aload_1
    //   63: invokevirtual 647	java/io/BufferedInputStream:close	()V
    //   66: aload 8
    //   68: areturn
    //   69: aload_2
    //   70: aload 14
    //   72: iconst_0
    //   73: iload 15
    //   75: invokevirtual 574	java/io/ByteArrayOutputStream:write	([BII)V
    //   78: goto -47 -> 31
    //   81: astore 10
    //   83: aload_1
    //   84: astore 11
    //   86: aload 10
    //   88: invokevirtual 288	java/io/FileNotFoundException:printStackTrace	()V
    //   91: aload_2
    //   92: ifnull +7 -> 99
    //   95: aload_2
    //   96: invokevirtual 573	java/io/ByteArrayOutputStream:close	()V
    //   99: aload 11
    //   101: ifnull +8 -> 109
    //   104: aload 11
    //   106: invokevirtual 647	java/io/BufferedInputStream:close	()V
    //   109: ldc 234
    //   111: astore 8
    //   113: goto -47 -> 66
    //   116: astore 16
    //   118: aload 16
    //   120: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   123: goto -61 -> 62
    //   126: astore 17
    //   128: aload 17
    //   130: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   133: goto -67 -> 66
    //   136: astore 13
    //   138: aload 13
    //   140: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   143: goto -44 -> 99
    //   146: astore 12
    //   148: aload 12
    //   150: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   153: goto -44 -> 109
    //   156: astore_3
    //   157: aconst_null
    //   158: astore_2
    //   159: aconst_null
    //   160: astore_1
    //   161: aload_3
    //   162: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   165: aload_2
    //   166: ifnull +7 -> 173
    //   169: aload_2
    //   170: invokevirtual 573	java/io/ByteArrayOutputStream:close	()V
    //   173: aload_1
    //   174: ifnull -65 -> 109
    //   177: aload_1
    //   178: invokevirtual 647	java/io/BufferedInputStream:close	()V
    //   181: goto -72 -> 109
    //   184: astore 7
    //   186: aload 7
    //   188: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   191: goto -82 -> 109
    //   194: astore 9
    //   196: aload 9
    //   198: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   201: goto -28 -> 173
    //   204: astore 4
    //   206: aconst_null
    //   207: astore_2
    //   208: aconst_null
    //   209: astore_1
    //   210: aload_2
    //   211: ifnull +7 -> 218
    //   214: aload_2
    //   215: invokevirtual 573	java/io/ByteArrayOutputStream:close	()V
    //   218: aload_1
    //   219: ifnull +7 -> 226
    //   222: aload_1
    //   223: invokevirtual 647	java/io/BufferedInputStream:close	()V
    //   226: aload 4
    //   228: athrow
    //   229: astore 6
    //   231: aload 6
    //   233: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   236: goto -18 -> 218
    //   239: astore 5
    //   241: aload 5
    //   243: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   246: goto -20 -> 226
    //   249: astore 4
    //   251: aconst_null
    //   252: astore_2
    //   253: goto -43 -> 210
    //   256: astore 4
    //   258: goto -48 -> 210
    //   261: astore 4
    //   263: aload 11
    //   265: astore_1
    //   266: goto -56 -> 210
    //   269: astore_3
    //   270: aconst_null
    //   271: astore_2
    //   272: goto -111 -> 161
    //   275: astore_3
    //   276: goto -115 -> 161
    //   279: astore 10
    //   281: aconst_null
    //   282: astore_2
    //   283: aconst_null
    //   284: astore 11
    //   286: goto -200 -> 86
    //   289: astore 10
    //   291: aload_1
    //   292: astore 11
    //   294: aconst_null
    //   295: astore_2
    //   296: goto -210 -> 86
    //
    // Exception table:
    //   from	to	target	type
    //   24	58	81	java/io/FileNotFoundException
    //   69	78	81	java/io/FileNotFoundException
    //   58	62	116	java/io/IOException
    //   62	66	126	java/io/IOException
    //   95	99	136	java/io/IOException
    //   104	109	146	java/io/IOException
    //   0	16	156	java/io/IOException
    //   177	181	184	java/io/IOException
    //   169	173	194	java/io/IOException
    //   0	16	204	finally
    //   214	218	229	java/io/IOException
    //   222	226	239	java/io/IOException
    //   16	24	249	finally
    //   24	58	256	finally
    //   69	78	256	finally
    //   161	165	256	finally
    //   86	91	261	finally
    //   16	24	269	java/io/IOException
    //   24	58	275	java/io/IOException
    //   69	78	275	java/io/IOException
    //   0	16	279	java/io/FileNotFoundException
    //   16	24	289	java/io/FileNotFoundException
  }

  // ERROR //
  private static boolean d(File paramFile)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_0
    //   3: invokevirtual 313	java/io/File:isDirectory	()Z
    //   6: istore_2
    //   7: iconst_0
    //   8: istore_3
    //   9: iload_2
    //   10: ifne +61 -> 71
    //   13: aload_0
    //   14: invokevirtual 656	java/io/File:length	()J
    //   17: ldc2_w 657
    //   20: lcmp
    //   21: istore 4
    //   23: iconst_0
    //   24: istore_3
    //   25: iload 4
    //   27: ifle +44 -> 71
    //   30: new 660	java/io/DataInputStream
    //   33: dup
    //   34: new 549	java/io/FileInputStream
    //   37: dup
    //   38: aload_0
    //   39: invokespecial 550	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   42: invokespecial 661	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   45: astore 5
    //   47: aload 5
    //   49: invokevirtual 664	java/io/DataInputStream:readInt	()I
    //   52: istore 10
    //   54: iconst_0
    //   55: istore_3
    //   56: iload 10
    //   58: ldc_w 665
    //   61: if_icmpne +5 -> 66
    //   64: iconst_1
    //   65: istore_3
    //   66: aload 5
    //   68: invokevirtual 666	java/io/DataInputStream:close	()V
    //   71: iload_3
    //   72: ireturn
    //   73: astore 12
    //   75: aconst_null
    //   76: astore 5
    //   78: iconst_0
    //   79: istore_3
    //   80: aload 5
    //   82: ifnull -11 -> 71
    //   85: aload 5
    //   87: invokevirtual 666	java/io/DataInputStream:close	()V
    //   90: iconst_0
    //   91: istore_3
    //   92: goto -21 -> 71
    //   95: astore 7
    //   97: iconst_0
    //   98: istore_3
    //   99: goto -28 -> 71
    //   102: astore 8
    //   104: aload_1
    //   105: ifnull +7 -> 112
    //   108: aload_1
    //   109: invokevirtual 666	java/io/DataInputStream:close	()V
    //   112: aload 8
    //   114: athrow
    //   115: astore 11
    //   117: goto -46 -> 71
    //   120: astore 9
    //   122: goto -10 -> 112
    //   125: astore 8
    //   127: aload 5
    //   129: astore_1
    //   130: goto -26 -> 104
    //   133: astore 6
    //   135: goto -57 -> 78
    //
    // Exception table:
    //   from	to	target	type
    //   30	47	73	java/io/IOException
    //   85	90	95	java/io/IOException
    //   30	47	102	finally
    //   66	71	115	java/io/IOException
    //   108	112	120	java/io/IOException
    //   47	54	125	finally
    //   47	54	133	java/io/IOException
  }

  // ERROR //
  public static String[] e(String paramString)
  {
    // Byte code:
    //   0: new 634	java/io/BufferedInputStream
    //   3: dup
    //   4: new 549	java/io/FileInputStream
    //   7: dup
    //   8: aload_0
    //   9: invokespecial 652	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   12: invokespecial 637	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   15: astore_1
    //   16: new 558	java/io/ByteArrayOutputStream
    //   19: dup
    //   20: invokespecial 559	java/io/ByteArrayOutputStream:<init>	()V
    //   23: astore_2
    //   24: sipush 1024
    //   27: newarray byte
    //   29: astore 13
    //   31: aload_1
    //   32: aload 13
    //   34: invokevirtual 638	java/io/BufferedInputStream:read	([B)I
    //   37: istore 14
    //   39: iload 14
    //   41: iconst_m1
    //   42: if_icmpne +37 -> 79
    //   45: new 10	java/lang/String
    //   48: dup
    //   49: aload_2
    //   50: invokevirtual 563	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   53: invokespecial 640	java/lang/String:<init>	([B)V
    //   56: ldc_w 642
    //   59: invokevirtual 646	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   62: astore 15
    //   64: aload 15
    //   66: astore 7
    //   68: aload_1
    //   69: invokevirtual 647	java/io/BufferedInputStream:close	()V
    //   72: aload_2
    //   73: invokevirtual 573	java/io/ByteArrayOutputStream:close	()V
    //   76: aload 7
    //   78: areturn
    //   79: aload_2
    //   80: aload 13
    //   82: iconst_0
    //   83: iload 14
    //   85: invokevirtual 574	java/io/ByteArrayOutputStream:write	([BII)V
    //   88: goto -57 -> 31
    //   91: astore 10
    //   93: aload 10
    //   95: invokevirtual 288	java/io/FileNotFoundException:printStackTrace	()V
    //   98: aload_1
    //   99: ifnull +7 -> 106
    //   102: aload_1
    //   103: invokevirtual 647	java/io/BufferedInputStream:close	()V
    //   106: aconst_null
    //   107: astore 7
    //   109: aload_2
    //   110: ifnull -34 -> 76
    //   113: aload_2
    //   114: invokevirtual 573	java/io/ByteArrayOutputStream:close	()V
    //   117: aconst_null
    //   118: astore 7
    //   120: goto -44 -> 76
    //   123: astore 11
    //   125: aload 11
    //   127: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   130: aconst_null
    //   131: astore 7
    //   133: goto -57 -> 76
    //   136: astore 16
    //   138: aload 16
    //   140: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   143: goto -71 -> 72
    //   146: astore 17
    //   148: aload 17
    //   150: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   153: goto -77 -> 76
    //   156: astore 12
    //   158: aload 12
    //   160: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   163: goto -57 -> 106
    //   166: astore_3
    //   167: aconst_null
    //   168: astore_2
    //   169: aconst_null
    //   170: astore_1
    //   171: aload_3
    //   172: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   175: aload_1
    //   176: ifnull +7 -> 183
    //   179: aload_1
    //   180: invokevirtual 647	java/io/BufferedInputStream:close	()V
    //   183: aconst_null
    //   184: astore 7
    //   186: aload_2
    //   187: ifnull -111 -> 76
    //   190: aload_2
    //   191: invokevirtual 573	java/io/ByteArrayOutputStream:close	()V
    //   194: aconst_null
    //   195: astore 7
    //   197: goto -121 -> 76
    //   200: astore 8
    //   202: aload 8
    //   204: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   207: aconst_null
    //   208: astore 7
    //   210: goto -134 -> 76
    //   213: astore 9
    //   215: aload 9
    //   217: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   220: goto -37 -> 183
    //   223: astore 19
    //   225: aconst_null
    //   226: astore_2
    //   227: aconst_null
    //   228: astore_1
    //   229: aload 19
    //   231: astore 4
    //   233: aload_1
    //   234: ifnull +7 -> 241
    //   237: aload_1
    //   238: invokevirtual 647	java/io/BufferedInputStream:close	()V
    //   241: aload_2
    //   242: ifnull +7 -> 249
    //   245: aload_2
    //   246: invokevirtual 573	java/io/ByteArrayOutputStream:close	()V
    //   249: aload 4
    //   251: athrow
    //   252: astore 6
    //   254: aload 6
    //   256: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   259: goto -18 -> 241
    //   262: astore 5
    //   264: aload 5
    //   266: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   269: goto -20 -> 249
    //   272: astore 18
    //   274: aload 18
    //   276: astore 4
    //   278: aconst_null
    //   279: astore_2
    //   280: goto -47 -> 233
    //   283: astore 4
    //   285: goto -52 -> 233
    //   288: astore_3
    //   289: aconst_null
    //   290: astore_2
    //   291: goto -120 -> 171
    //   294: astore_3
    //   295: goto -124 -> 171
    //   298: astore 10
    //   300: aconst_null
    //   301: astore_2
    //   302: aconst_null
    //   303: astore_1
    //   304: goto -211 -> 93
    //   307: astore 10
    //   309: aconst_null
    //   310: astore_2
    //   311: goto -218 -> 93
    //
    // Exception table:
    //   from	to	target	type
    //   24	64	91	java/io/FileNotFoundException
    //   79	88	91	java/io/FileNotFoundException
    //   113	117	123	java/io/IOException
    //   68	72	136	java/io/IOException
    //   72	76	146	java/io/IOException
    //   102	106	156	java/io/IOException
    //   0	16	166	java/io/IOException
    //   190	194	200	java/io/IOException
    //   179	183	213	java/io/IOException
    //   0	16	223	finally
    //   237	241	252	java/io/IOException
    //   245	249	262	java/io/IOException
    //   16	24	272	finally
    //   24	64	283	finally
    //   79	88	283	finally
    //   93	98	283	finally
    //   171	175	283	finally
    //   16	24	288	java/io/IOException
    //   24	64	294	java/io/IOException
    //   79	88	294	java/io/IOException
    //   0	16	298	java/io/FileNotFoundException
    //   16	24	307	java/io/FileNotFoundException
  }

  private static boolean f(String paramString)
  {
    try
    {
      boolean bool2 = new File(paramString).delete();
      bool1 = bool2;
      return bool1;
    }
    catch (Exception localException)
    {
      while (true)
        boolean bool1 = false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     btd
 * JD-Core Version:    0.6.2
 */