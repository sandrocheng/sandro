import android.os.Environment;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

public final class bj
{
  static
  {
    new String[][] { { "3gp", "video/3gpp" }, { "apk", "application/vnd.android.package-archive" }, { "asf", "video/x-ms-asf" }, { "avi", "video/x-msvideo" }, { "bin", "application/octet-stream" }, { "bmp", "image/bmp" }, { "c", "text/plain" }, { "class", "application/octet-stream" }, { "conf", "text/plain" }, { "cpp", "text/plain" }, { "doc", "application/msword" }, { "docx", "application/msword" }, { "exe", "application/octet-stream" }, { "gif", "image/gif" }, { "gtar", "application/x-gtar" }, { "gz", "application/x-gzip" }, { "h", "text/plain" }, { "htm", "text/html" }, { "html", "text/html" }, { "jar", "application/java-archive" }, { "java", "text/plain" }, { "jpeg", "image/jpeg" }, { "jpg", "image/jpeg" }, { "js", "application/x-javascript" }, { "log", "text/plain" }, { "m3u", "audio/x-mpegurl" }, { "m4a", "audio/mp4a-latm" }, { "m4b", "audio/mp4a-latm" }, { "m4p", "audio/mp4a-latm" }, { "m4u", "video/vnd.mpegurl" }, { "m4v", "video/x-m4v" }, { "mov", "video/quicktime" }, { "mp2", "audio/x-mpeg" }, { "mp3", "audio/x-mpeg" }, { "mp4", "video/mp4" }, { "mpc", "application/vnd.mpohn.certificate" }, { "mpe", "video/mpeg" }, { "mpeg", "video/mpeg" }, { "mpg", "video/mpeg" }, { "mpg4", "video/mp4" }, { "mpga", "audio/mpeg" }, { "msg", "application/vnd.ms-outlook" }, { "ogg", "audio/ogg" }, { "pdf", "application/pdf" }, { "png", "image/png" }, { "pps", "application/vnd.ms-powerpoint" }, { "ppsx", "application/vnd.ms-powerpoint" }, { "ppt", "application/vnd.ms-powerpoint" }, { "pptx", "application/vnd.ms-powerpoint" }, { "xls", "application/vnd.ms-excel" }, { "xlsx", "application/vnd.ms-excel" }, { "prop", "text/plain" }, { "rar", "application/x-rar-compressed" }, { "rc", "text/plain" }, { "rmvb", "audio/x-pn-realaudio" }, { "rtf", "application/rtf" }, { "sh", "text/plain" }, { "tar", "application/x-tar" }, { "tgz", "application/x-compressed" }, { "txt", "text/plain" }, { "wav", "audio/x-wav" }, { "wma", "audio/x-ms-wma" }, { "wmv", "audio/x-ms-wmv" }, { "wps", "application/vnd.ms-works" }, { "xml", "text/plain" }, { "z", "application/x-compress" }, { "zip", "application/zip" }, { "epub", "application/epub+zip" }, { "", "*/*" } };
  }

  public static String a(String paramString)
  {
    try
    {
      BufferedInputStream localBufferedInputStream = new BufferedInputStream(new FileInputStream(paramString));
      localByteArrayOutputStream = new ByteArrayOutputStream();
      byte[] arrayOfByte = new byte[1024];
      while (true)
      {
        int i = localBufferedInputStream.read(arrayOfByte);
        if (i == -1)
          break;
        localByteArrayOutputStream.write(arrayOfByte, 0, i);
      }
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      ByteArrayOutputStream localByteArrayOutputStream;
      localFileNotFoundException.printStackTrace();
      for (String str = ""; ; str = new String(localByteArrayOutputStream.toByteArray()))
        return str;
    }
    catch (IOException localIOException)
    {
      while (true)
        localIOException.printStackTrace();
    }
  }

  public static boolean a()
  {
    return Environment.getExternalStorageState().equals("mounted");
  }

  // ERROR //
  public static String[] b(String paramString)
  {
    // Byte code:
    //   0: new 244	java/io/BufferedInputStream
    //   3: dup
    //   4: new 246	java/io/FileInputStream
    //   7: dup
    //   8: aload_0
    //   9: invokespecial 250	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   12: invokespecial 253	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   15: astore_1
    //   16: new 255	java/io/ByteArrayOutputStream
    //   19: dup
    //   20: invokespecial 257	java/io/ByteArrayOutputStream:<init>	()V
    //   23: astore_2
    //   24: sipush 1024
    //   27: newarray byte
    //   29: astore 13
    //   31: aload_1
    //   32: aload 13
    //   34: invokevirtual 261	java/io/BufferedInputStream:read	([B)I
    //   37: istore 14
    //   39: iload 14
    //   41: iconst_m1
    //   42: if_icmpeq +44 -> 86
    //   45: aload_2
    //   46: aload 13
    //   48: iconst_0
    //   49: iload 14
    //   51: invokevirtual 265	java/io/ByteArrayOutputStream:write	([BII)V
    //   54: goto -23 -> 31
    //   57: astore 10
    //   59: aload 10
    //   61: invokevirtual 268	java/io/FileNotFoundException:printStackTrace	()V
    //   64: aload_1
    //   65: ifnull +7 -> 72
    //   68: aload_1
    //   69: invokevirtual 294	java/io/BufferedInputStream:close	()V
    //   72: aconst_null
    //   73: astore 7
    //   75: aload_2
    //   76: ifnull +7 -> 83
    //   79: aload_2
    //   80: invokevirtual 295	java/io/ByteArrayOutputStream:close	()V
    //   83: aload 7
    //   85: areturn
    //   86: new 10	java/lang/String
    //   89: dup
    //   90: aload_2
    //   91: invokevirtual 272	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   94: invokespecial 275	java/lang/String:<init>	([B)V
    //   97: ldc_w 297
    //   100: invokevirtual 300	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   103: astore 15
    //   105: aload 15
    //   107: astore 7
    //   109: aload_1
    //   110: invokevirtual 294	java/io/BufferedInputStream:close	()V
    //   113: aload_2
    //   114: invokevirtual 295	java/io/ByteArrayOutputStream:close	()V
    //   117: goto -34 -> 83
    //   120: astore 17
    //   122: aload 17
    //   124: invokevirtual 276	java/io/IOException:printStackTrace	()V
    //   127: goto -44 -> 83
    //   130: astore 16
    //   132: aload 16
    //   134: invokevirtual 276	java/io/IOException:printStackTrace	()V
    //   137: goto -24 -> 113
    //   140: astore 12
    //   142: aload 12
    //   144: invokevirtual 276	java/io/IOException:printStackTrace	()V
    //   147: goto -75 -> 72
    //   150: astore 11
    //   152: aload 11
    //   154: invokevirtual 276	java/io/IOException:printStackTrace	()V
    //   157: aconst_null
    //   158: astore 7
    //   160: goto -77 -> 83
    //   163: astore_3
    //   164: aconst_null
    //   165: astore_2
    //   166: aconst_null
    //   167: astore_1
    //   168: aload_3
    //   169: invokevirtual 276	java/io/IOException:printStackTrace	()V
    //   172: aload_1
    //   173: ifnull +7 -> 180
    //   176: aload_1
    //   177: invokevirtual 294	java/io/BufferedInputStream:close	()V
    //   180: aconst_null
    //   181: astore 7
    //   183: aload_2
    //   184: ifnull -101 -> 83
    //   187: aload_2
    //   188: invokevirtual 295	java/io/ByteArrayOutputStream:close	()V
    //   191: aconst_null
    //   192: astore 7
    //   194: goto -111 -> 83
    //   197: astore 8
    //   199: aload 8
    //   201: invokevirtual 276	java/io/IOException:printStackTrace	()V
    //   204: aconst_null
    //   205: astore 7
    //   207: goto -124 -> 83
    //   210: astore 9
    //   212: aload 9
    //   214: invokevirtual 276	java/io/IOException:printStackTrace	()V
    //   217: goto -37 -> 180
    //   220: astore 19
    //   222: aconst_null
    //   223: astore_2
    //   224: aconst_null
    //   225: astore_1
    //   226: aload 19
    //   228: astore 4
    //   230: aload_1
    //   231: ifnull +7 -> 238
    //   234: aload_1
    //   235: invokevirtual 294	java/io/BufferedInputStream:close	()V
    //   238: aload_2
    //   239: ifnull +7 -> 246
    //   242: aload_2
    //   243: invokevirtual 295	java/io/ByteArrayOutputStream:close	()V
    //   246: aload 4
    //   248: athrow
    //   249: astore 6
    //   251: aload 6
    //   253: invokevirtual 276	java/io/IOException:printStackTrace	()V
    //   256: goto -18 -> 238
    //   259: astore 5
    //   261: aload 5
    //   263: invokevirtual 276	java/io/IOException:printStackTrace	()V
    //   266: goto -20 -> 246
    //   269: astore 18
    //   271: aload 18
    //   273: astore 4
    //   275: aconst_null
    //   276: astore_2
    //   277: goto -47 -> 230
    //   280: astore 4
    //   282: goto -52 -> 230
    //   285: astore_3
    //   286: aconst_null
    //   287: astore_2
    //   288: goto -120 -> 168
    //   291: astore_3
    //   292: goto -124 -> 168
    //   295: astore 10
    //   297: aconst_null
    //   298: astore_2
    //   299: aconst_null
    //   300: astore_1
    //   301: goto -242 -> 59
    //   304: astore 10
    //   306: aconst_null
    //   307: astore_2
    //   308: goto -249 -> 59
    //
    // Exception table:
    //   from	to	target	type
    //   24	54	57	java/io/FileNotFoundException
    //   86	105	57	java/io/FileNotFoundException
    //   113	117	120	java/io/IOException
    //   109	113	130	java/io/IOException
    //   68	72	140	java/io/IOException
    //   79	83	150	java/io/IOException
    //   0	16	163	java/io/IOException
    //   187	191	197	java/io/IOException
    //   176	180	210	java/io/IOException
    //   0	16	220	finally
    //   234	238	249	java/io/IOException
    //   242	246	259	java/io/IOException
    //   16	24	269	finally
    //   24	54	280	finally
    //   59	64	280	finally
    //   86	105	280	finally
    //   168	172	280	finally
    //   16	24	285	java/io/IOException
    //   24	54	291	java/io/IOException
    //   86	105	291	java/io/IOException
    //   0	16	295	java/io/FileNotFoundException
    //   16	24	304	java/io/FileNotFoundException
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     bj
 * JD-Core Version:    0.6.2
 */