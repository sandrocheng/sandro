package com.jxphone.mosecurity.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.text.TextUtils;
import com.keniu.security.e;
import com.keniu.security.malware.bz;
import com.keniu.security.util.av;
import com.keniu.security.util.i;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.zip.GZIPOutputStream;

public final class a
{
  public static String a = "moseinstime.txt";
  public static String b = "uuid.txt";
  public static boolean c = false;
  public static final String d = "http://st.ios.ijinshan.com/active/";
  public static long e = -1L;

  private static long a()
  {
    try
    {
      String str1 = Environment.getExternalStorageDirectory().getAbsolutePath() + "/mosecurity/";
      File localFile = new File(str1 + a);
      if ((localFile.exists()) && (localFile.length() > 0L))
      {
        FileInputStream localFileInputStream = new FileInputStream(localFile);
        byte[] arrayOfByte = new byte[(int)localFile.length()];
        if (localFileInputStream.read(arrayOfByte) > 0)
        {
          String str2 = new String(arrayOfByte);
          try
          {
            long l2 = Long.parseLong(str2);
            l1 = l2;
            return l1;
          }
          catch (Exception localException2)
          {
            while (true)
              l1 = 0L;
          }
        }
      }
    }
    catch (Exception localException1)
    {
      while (true)
      {
        long l1 = 0L;
        continue;
        l1 = 0L;
      }
    }
  }

  public static String a(Context paramContext, Class paramClass)
  {
    ComponentName localComponentName = new ComponentName(paramContext, paramClass);
    try
    {
      String str2 = Integer.toString(paramContext.getPackageManager().getPackageInfo(localComponentName.getPackageName(), 0).versionCode);
      str1 = str2;
      return str1;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
        String str1 = null;
    }
  }

  private static String a(String[][] paramArrayOfString)
  {
    Object localObject1 = "";
    if ((paramArrayOfString != null) && (paramArrayOfString.length > 0))
    {
      Object localObject2 = localObject1;
      for (int i = 0; i < paramArrayOfString.length; i++)
      {
        String str1 = (String)localObject2 + paramArrayOfString[i][0];
        String str2 = str1 + "=";
        localObject2 = str2 + paramArrayOfString[i][1];
        if (i < paramArrayOfString.length - 1)
          localObject2 = (String)localObject2 + "&";
      }
      localObject1 = localObject2;
    }
    return (String)localObject1 + "\n";
  }

  // ERROR //
  public static void a(long paramLong)
  {
    // Byte code:
    //   0: new 39	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 40	java/lang/StringBuilder:<init>	()V
    //   7: invokestatic 46	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   10: invokevirtual 52	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   13: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   16: ldc 58
    //   18: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   21: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   24: astore_3
    //   25: new 39	java/lang/StringBuilder
    //   28: dup
    //   29: invokespecial 40	java/lang/StringBuilder:<init>	()V
    //   32: aload_3
    //   33: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   36: getstatic 21	com/jxphone/mosecurity/a/a:a	Ljava/lang/String;
    //   39: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   45: astore 4
    //   47: new 48	java/io/File
    //   50: dup
    //   51: aload_3
    //   52: invokespecial 64	java/io/File:<init>	(Ljava/lang/String;)V
    //   55: invokevirtual 138	java/io/File:mkdirs	()Z
    //   58: pop
    //   59: new 48	java/io/File
    //   62: dup
    //   63: aload 4
    //   65: invokespecial 64	java/io/File:<init>	(Ljava/lang/String;)V
    //   68: astore 6
    //   70: aload 6
    //   72: invokevirtual 68	java/io/File:exists	()Z
    //   75: istore 7
    //   77: iload 7
    //   79: ifne +34 -> 113
    //   82: aconst_null
    //   83: astore 8
    //   85: new 140	java/io/FileOutputStream
    //   88: dup
    //   89: aload 6
    //   91: invokespecial 141	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   94: astore 9
    //   96: aload 9
    //   98: lload_0
    //   99: invokestatic 145	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   102: invokevirtual 149	java/lang/String:getBytes	()[B
    //   105: invokevirtual 152	java/io/FileOutputStream:write	([B)V
    //   108: aload 9
    //   110: invokevirtual 155	java/io/FileOutputStream:close	()V
    //   113: return
    //   114: astore 16
    //   116: aconst_null
    //   117: astore 11
    //   119: aload 11
    //   121: ifnull -8 -> 113
    //   124: aload 11
    //   126: invokevirtual 155	java/io/FileOutputStream:close	()V
    //   129: goto -16 -> 113
    //   132: astore 12
    //   134: goto -21 -> 113
    //   137: astore 13
    //   139: aload 8
    //   141: ifnull +8 -> 149
    //   144: aload 8
    //   146: invokevirtual 155	java/io/FileOutputStream:close	()V
    //   149: aload 13
    //   151: athrow
    //   152: astore_2
    //   153: goto -40 -> 113
    //   156: astore 15
    //   158: goto -45 -> 113
    //   161: astore 14
    //   163: goto -14 -> 149
    //   166: astore 13
    //   168: aload 9
    //   170: astore 8
    //   172: goto -33 -> 139
    //   175: astore 10
    //   177: aload 9
    //   179: astore 11
    //   181: goto -62 -> 119
    //
    // Exception table:
    //   from	to	target	type
    //   85	96	114	java/lang/Exception
    //   124	129	132	java/lang/Exception
    //   85	96	137	finally
    //   0	77	152	java/lang/Exception
    //   149	152	152	java/lang/Exception
    //   108	113	156	java/lang/Exception
    //   144	149	161	java/lang/Exception
    //   96	108	166	finally
    //   96	108	175	java/lang/Exception
  }

  public static void a(Context paramContext)
  {
    Context localContext = paramContext.getApplicationContext();
    if (e == -1L)
      e = localContext.getSharedPreferences("report_flag", 0).getLong("report_timer", 0L);
    int i;
    if (e != 0L)
    {
      Date localDate1 = new Date(System.currentTimeMillis());
      Date localDate2 = new Date(e);
      if (localDate1.getDate() == localDate2.getDate())
      {
        i = 1;
        if (i == 0)
          break label89;
      }
    }
    label89: 
    while (c)
    {
      return;
      i = 0;
      break;
    }
    c = true;
    int j;
    label112: com.jxphone.a.a.a locala;
    String str1;
    String str2;
    long l3;
    if (com.keniu.security.a.a(localContext).aR())
    {
      j = 0;
      locala = com.jxphone.a.a.a.a(localContext, e.X);
      SharedPreferences localSharedPreferences = localContext.getSharedPreferences("report_flag", 0);
      str1 = localSharedPreferences.getString("report_uuid_imei", null);
      str2 = localSharedPreferences.getString("report_uuid_imsi", null);
      l3 = localSharedPreferences.getLong("report_lasttime", 0L);
      if ((b(str1)) && (b(str2)))
        break label999;
    }
    while (true)
    {
      try
      {
        String str10 = b();
        if ((!TextUtils.isEmpty(str10)) && (str10.contains("imei=")) && (str10.contains("imsi=")))
        {
          str1 = str10.split("imsi=")[0].split("imei=")[1];
          str3 = str10.split("imsi=")[1];
          if (!b(str1))
            str1 = av.a(localContext);
          if (!b(str3))
          {
            str4 = av.c(localContext);
            str5 = str1;
            SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyyMMdd");
            l4 = a();
            if (l4 > 0L)
            {
              String str6 = localSimpleDateFormat.format(Long.valueOf(l4));
              bz.a();
              boolean bool = bz.b();
              arrayOfString; = new String[16][];
              arrayOfString;[0] = { "s", "0401000301" };
              arrayOfString;[1] = { "imei", str5 };
              arrayOfString;[2] = { "imsi", str4 };
              String[] arrayOfString1 = new String[2];
              arrayOfString1[0] = "lasttime";
              arrayOfString1[1] = String.valueOf(l3);
              arrayOfString;[3] = arrayOfString1;
              String[] arrayOfString2 = new String[2];
              arrayOfString2[0] = "var";
              arrayOfString2[1] = a(localContext, localContext.getClass());
              arrayOfString;[4] = arrayOfString2;
              String[] arrayOfString3 = new String[2];
              arrayOfString3[0] = "model";
              arrayOfString3[1] = Build.MODEL;
              arrayOfString;[5] = arrayOfString3;
              String[] arrayOfString4 = new String[2];
              arrayOfString4[0] = "value";
              arrayOfString4[1] = Build.VERSION.SDK;
              arrayOfString;[6] = arrayOfString4;
              String[] arrayOfString5 = new String[2];
              arrayOfString5[0] = "info";
              arrayOfString5[1] = Build.BRAND;
              arrayOfString;[7] = arrayOfString5;
              String[] arrayOfString6 = new String[2];
              arrayOfString6[0] = "channel";
              arrayOfString6[1] = e.c(localContext);
              arrayOfString;[8] = arrayOfString6;
              String[] arrayOfString7 = new String[2];
              arrayOfString7[0] = "res";
              if (!e.a())
                continue;
              str7 = "1";
              arrayOfString7[1] = str7;
              arrayOfString;[9] = arrayOfString7;
              String[] arrayOfString8 = new String[2];
              arrayOfString8[0] = "type";
              if (!b(localContext, localContext.getClass()))
                continue;
              str8 = "16";
              arrayOfString8[1] = str8;
              arrayOfString;[10] = arrayOfString8;
              arrayOfString;[11] = { "actionname", "ac" };
              String[] arrayOfString9 = new String[2];
              arrayOfString9[0] = "actiontime";
              arrayOfString9[1] = String.valueOf(new Date().getTime() / 1000L);
              arrayOfString;[12] = arrayOfString9;
              arrayOfString;[13] = { "atime", str6 };
              String[] arrayOfString10 = new String[2];
              arrayOfString10[0] = "inst";
              arrayOfString10[1] = Integer.toString(j);
              arrayOfString;[14] = arrayOfString10;
              String[] arrayOfString11 = new String[2];
              arrayOfString11[0] = "amobileroot";
              arrayOfString11[1] = String.valueOf(bool);
              arrayOfString;[15] = arrayOfString11;
              localb = new b(localContext, l4, str5, str4);
              localc = new c();
            }
          }
        }
      }
      catch (Exception localException)
      {
        try
        {
          String[][] arrayOfString;;
          b localb;
          c localc;
          String str9 = a(arrayOfString;);
          ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
          GZIPOutputStream localGZIPOutputStream = new GZIPOutputStream(localByteArrayOutputStream);
          localGZIPOutputStream.write(str9.getBytes());
          localGZIPOutputStream.close();
          byte[] arrayOfByte2 = localByteArrayOutputStream.toByteArray();
          arrayOfByte1 = arrayOfByte2;
          if ((arrayOfByte1 == null) || (arrayOfByte1.length <= 0))
            break;
          locala.a(arrayOfByte1, localb, localc, "http://st.ios.ijinshan.com/active/");
          break;
          long l1 = localContext.getSharedPreferences("report_flag", 0).getLong("report_timer", 0L);
          long l2 = a();
          if ((l1 != 0L) || (l2 > 0L))
          {
            j = 2;
            break label112;
          }
          j = 1;
          break label112;
          localException = localException;
          str1 = str1;
          str3 = str2;
          continue;
          long l4 = new Date().getTime();
          continue;
          String str7 = "-1";
          continue;
          String str8 = "32";
        }
        catch (IOException localIOException)
        {
          localIOException.printStackTrace();
          byte[] arrayOfByte1 = null;
          continue;
        }
        str4 = str3;
        str5 = str1;
        continue;
        String str3 = str2;
        continue;
      }
      label999: String str4 = str2;
      String str5 = str1;
    }
  }

  public static void a(Context paramContext, int paramInt)
  {
    if (!com.keniu.security.a.a(paramContext).aH());
    while (true)
    {
      return;
      String str = av.a(paramContext);
      String[][] arrayOfString; = new String[8][];
      arrayOfString;[0] = { "s", "0401000301" };
      String[] arrayOfString1 = new String[2];
      arrayOfString1[0] = "var";
      arrayOfString1[1] = a(paramContext, paramContext.getClass());
      arrayOfString;[1] = arrayOfString1;
      arrayOfString;[2] = { "uuid", str };
      String[] arrayOfString2 = new String[2];
      arrayOfString2[0] = "model";
      arrayOfString2[1] = Build.MODEL;
      arrayOfString;[3] = arrayOfString2;
      String[] arrayOfString3 = new String[2];
      arrayOfString3[0] = "info";
      arrayOfString3[1] = Build.BRAND;
      arrayOfString;[4] = arrayOfString3;
      String[] arrayOfString4 = new String[2];
      arrayOfString4[0] = "channel";
      arrayOfString4[1] = e.c(paramContext);
      arrayOfString;[5] = arrayOfString4;
      arrayOfString;[6] = { "actionname", "bksms" };
      String[] arrayOfString5 = new String[2];
      arrayOfString5[0] = "type";
      arrayOfString5[1] = Integer.toString(paramInt);
      arrayOfString;[7] = arrayOfString5;
      com.jxphone.a.a.a.a(paramContext, e.X).a(arrayOfString;);
    }
  }

  public static void a(Context paramContext, int paramInt1, int paramInt2)
  {
    if (!com.keniu.security.a.a(paramContext).aH());
    while (true)
    {
      return;
      String str = av.a(paramContext);
      String[][] arrayOfString; = new String[9][];
      arrayOfString;[0] = { "s", "0401000301" };
      String[] arrayOfString1 = new String[2];
      arrayOfString1[0] = "var";
      arrayOfString1[1] = a(paramContext, paramContext.getClass());
      arrayOfString;[1] = arrayOfString1;
      arrayOfString;[2] = { "uuid", str };
      String[] arrayOfString2 = new String[2];
      arrayOfString2[0] = "model";
      arrayOfString2[1] = Build.MODEL;
      arrayOfString;[3] = arrayOfString2;
      String[] arrayOfString3 = new String[2];
      arrayOfString3[0] = "info";
      arrayOfString3[1] = Build.BRAND;
      arrayOfString;[4] = arrayOfString3;
      String[] arrayOfString4 = new String[2];
      arrayOfString4[0] = "channel";
      arrayOfString4[1] = e.c(paramContext);
      arrayOfString;[5] = arrayOfString4;
      arrayOfString;[6] = { "actionname", "mgt_vmalres" };
      String[] arrayOfString5 = new String[2];
      arrayOfString5[0] = "type";
      arrayOfString5[1] = String.valueOf(paramInt1);
      arrayOfString;[7] = arrayOfString5;
      String[] arrayOfString6 = new String[2];
      arrayOfString6[0] = "value";
      arrayOfString6[1] = String.valueOf(paramInt2);
      arrayOfString;[8] = arrayOfString6;
      com.jxphone.a.a.a.a(paramContext, e.X).a(arrayOfString;);
    }
  }

  public static void a(Context paramContext, int paramInt, boolean paramBoolean, String paramString, long paramLong)
  {
    if (!com.keniu.security.a.a(paramContext).aH())
      return;
    String str1 = av.a(paramContext);
    String[][] arrayOfString; = new String[11][];
    arrayOfString;[0] = { "s", "0401000301" };
    String[] arrayOfString1 = new String[2];
    arrayOfString1[0] = "var";
    arrayOfString1[1] = a(paramContext, paramContext.getClass());
    arrayOfString;[1] = arrayOfString1;
    arrayOfString;[2] = { "uuid", str1 };
    String[] arrayOfString2 = new String[2];
    arrayOfString2[0] = "model";
    arrayOfString2[1] = Build.MODEL;
    arrayOfString;[3] = arrayOfString2;
    String[] arrayOfString3 = new String[2];
    arrayOfString3[0] = "info";
    arrayOfString3[1] = Build.BRAND;
    arrayOfString;[4] = arrayOfString3;
    String[] arrayOfString4 = new String[2];
    arrayOfString4[0] = "channel";
    arrayOfString4[1] = e.c(paramContext);
    arrayOfString;[5] = arrayOfString4;
    arrayOfString;[6] = { "actionname", "mgt_vscantime" };
    String[] arrayOfString5 = new String[2];
    arrayOfString5[0] = "type";
    arrayOfString5[1] = (paramInt + "");
    arrayOfString;[7] = arrayOfString5;
    String[] arrayOfString6 = new String[2];
    arrayOfString6[0] = "res";
    if (paramBoolean);
    for (String str2 = "stop"; ; str2 = "done")
    {
      arrayOfString6[1] = str2;
      arrayOfString;[8] = arrayOfString6;
      arrayOfString;[9] = { "content", paramString };
      String[] arrayOfString7 = new String[2];
      arrayOfString7[0] = "value";
      arrayOfString7[1] = (paramLong + "");
      arrayOfString;[10] = arrayOfString7;
      com.jxphone.a.a.a.a(paramContext, e.X).a(arrayOfString;);
      break;
    }
  }

  public static void a(Context paramContext, String paramString)
  {
    if (!com.keniu.security.a.a(paramContext).aH());
    while (true)
    {
      return;
      com.jxphone.a.a.a locala = com.jxphone.a.a.a.a(paramContext, e.X);
      String[][] arrayOfString; = new String[9][];
      arrayOfString;[0] = { "s", "0401000301" };
      String[] arrayOfString1 = new String[2];
      arrayOfString1[0] = "var";
      arrayOfString1[1] = a(paramContext, paramContext.getClass());
      arrayOfString;[1] = arrayOfString1;
      String[] arrayOfString2 = new String[2];
      arrayOfString2[0] = "uuid";
      arrayOfString2[1] = av.a(paramContext);
      arrayOfString;[2] = arrayOfString2;
      String[] arrayOfString3 = new String[2];
      arrayOfString3[0] = "model";
      arrayOfString3[1] = Build.MODEL;
      arrayOfString;[3] = arrayOfString3;
      String[] arrayOfString4 = new String[2];
      arrayOfString4[0] = "info";
      arrayOfString4[1] = Build.BRAND;
      arrayOfString;[4] = arrayOfString4;
      String[] arrayOfString5 = new String[2];
      arrayOfString5[0] = "channel";
      arrayOfString5[1] = e.c(paramContext);
      arrayOfString;[5] = arrayOfString5;
      String[] arrayOfString6 = new String[2];
      arrayOfString6[0] = "dt";
      arrayOfString6[1] = i.c(System.currentTimeMillis());
      arrayOfString;[6] = arrayOfString6;
      arrayOfString;[7] = { "actionname", "blockteltype" };
      arrayOfString;[8] = { "type", paramString };
      locala.a(arrayOfString;);
    }
  }

  public static void a(Context paramContext, String paramString, int paramInt)
  {
    if (!com.keniu.security.a.a(paramContext).aH());
    while (true)
    {
      return;
      String str = av.a(paramContext);
      String[][] arrayOfString; = new String[9][];
      arrayOfString;[0] = { "s", "0401000301" };
      String[] arrayOfString1 = new String[2];
      arrayOfString1[0] = "var";
      arrayOfString1[1] = a(paramContext, paramContext.getClass());
      arrayOfString;[1] = arrayOfString1;
      arrayOfString;[2] = { "uuid", str };
      String[] arrayOfString2 = new String[2];
      arrayOfString2[0] = "model";
      arrayOfString2[1] = Build.MODEL;
      arrayOfString;[3] = arrayOfString2;
      String[] arrayOfString3 = new String[2];
      arrayOfString3[0] = "info";
      arrayOfString3[1] = Build.BRAND;
      arrayOfString;[4] = arrayOfString3;
      String[] arrayOfString4 = new String[2];
      arrayOfString4[0] = "channel";
      arrayOfString4[1] = e.c(paramContext);
      arrayOfString;[5] = arrayOfString4;
      arrayOfString;[6] = { "actionname", "blockerror" };
      arrayOfString;[7] = { "type", paramString };
      String[] arrayOfString5 = new String[2];
      arrayOfString5[0] = "value";
      arrayOfString5[1] = Integer.toString(paramInt);
      arrayOfString;[8] = arrayOfString5;
      com.jxphone.a.a.a.a(paramContext, e.X).a(arrayOfString;);
    }
  }

  public static void a(Context paramContext, String paramString1, long paramLong, String paramString2)
  {
    if (!com.keniu.security.a.a(paramContext).aH());
    while (true)
    {
      return;
      String str = av.a(paramContext);
      String[][] arrayOfString; = new String[11][];
      arrayOfString;[0] = { "s", "0401000301" };
      String[] arrayOfString1 = new String[2];
      arrayOfString1[0] = "var";
      arrayOfString1[1] = a(paramContext, paramContext.getClass());
      arrayOfString;[1] = arrayOfString1;
      arrayOfString;[2] = { "uuid", str };
      String[] arrayOfString2 = new String[2];
      arrayOfString2[0] = "model";
      arrayOfString2[1] = Build.MODEL;
      arrayOfString;[3] = arrayOfString2;
      String[] arrayOfString3 = new String[2];
      arrayOfString3[0] = "info";
      arrayOfString3[1] = Build.BRAND;
      arrayOfString;[4] = arrayOfString3;
      String[] arrayOfString4 = new String[2];
      arrayOfString4[0] = "channel";
      arrayOfString4[1] = e.c(paramContext);
      arrayOfString;[5] = arrayOfString4;
      arrayOfString;[6] = { "actionname", "ad_check_data_feedback" };
      arrayOfString;[7] = { "type", "1" };
      arrayOfString;[8] = { "ad_check_apk_package_name", paramString1 };
      String[] arrayOfString5 = new String[2];
      arrayOfString5[0] = "ad_check_apk_package_size";
      arrayOfString5[1] = (paramLong + "");
      arrayOfString;[9] = arrayOfString5;
      arrayOfString;[10] = { "ad_check_apk_notification_content", paramString2 };
      com.jxphone.a.a.a.a(paramContext, e.X).a(arrayOfString;);
    }
  }

  public static void a(Context paramContext, String paramString1, String paramString2)
  {
    if (!com.keniu.security.a.a(paramContext).aH());
    while (true)
    {
      return;
      String str = av.a(paramContext);
      String[][] arrayOfString; = new String[9][];
      arrayOfString;[0] = { "s", "0401000301" };
      arrayOfString;[1] = { "uuid", str };
      String[] arrayOfString1 = new String[2];
      arrayOfString1[0] = "var";
      arrayOfString1[1] = a(paramContext, paramContext.getClass());
      arrayOfString;[2] = arrayOfString1;
      String[] arrayOfString2 = new String[2];
      arrayOfString2[0] = "model";
      arrayOfString2[1] = Build.MODEL;
      arrayOfString;[3] = arrayOfString2;
      String[] arrayOfString3 = new String[2];
      arrayOfString3[0] = "info";
      arrayOfString3[1] = Build.BRAND;
      arrayOfString;[4] = arrayOfString3;
      String[] arrayOfString4 = new String[2];
      arrayOfString4[0] = "channel";
      arrayOfString4[1] = e.c(paramContext);
      arrayOfString;[5] = arrayOfString4;
      arrayOfString;[6] = { "actionname", "traf_ck" };
      arrayOfString;[7] = { "type", paramString1 };
      arrayOfString;[8] = { "value", paramString2 };
      com.jxphone.a.a.a.a(paramContext, e.X).a(arrayOfString;);
    }
  }

  public static void a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    if (!com.keniu.security.a.a(paramContext).aH());
    while (true)
    {
      return;
      String str = av.a(paramContext);
      String[][] arrayOfString; = new String[9][];
      arrayOfString;[0] = { "s", "0401000301" };
      String[] arrayOfString1 = new String[2];
      arrayOfString1[0] = "var";
      arrayOfString1[1] = a(paramContext, paramContext.getClass());
      arrayOfString;[1] = arrayOfString1;
      arrayOfString;[2] = { "uuid", str };
      String[] arrayOfString2 = new String[2];
      arrayOfString2[0] = "model";
      arrayOfString2[1] = Build.MODEL;
      arrayOfString;[3] = arrayOfString2;
      String[] arrayOfString3 = new String[2];
      arrayOfString3[0] = "info";
      arrayOfString3[1] = Build.BRAND;
      arrayOfString;[4] = arrayOfString3;
      String[] arrayOfString4 = new String[2];
      arrayOfString4[0] = "channel";
      arrayOfString4[1] = e.c(paramContext);
      arrayOfString;[5] = arrayOfString4;
      arrayOfString;[6] = { "actionname", paramString1 };
      arrayOfString;[7] = { "type", paramString2 };
      arrayOfString;[8] = { "value", paramString3 };
      com.jxphone.a.a.a.a(paramContext, e.X).a(arrayOfString;);
    }
  }

  public static void a(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean, String paramString5, String paramString6, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramString3 == null)
      paramString3 = "";
    if (paramString3.length() > 48)
      paramString3 = paramString3.substring(48);
    if (!com.keniu.security.a.a(paramContext).aH())
      return;
    String str1 = av.a(paramContext);
    String[][] arrayOfString; = new String[18][];
    arrayOfString;[0] = { "s", "0401000301" };
    String[] arrayOfString1 = new String[2];
    arrayOfString1[0] = "var";
    arrayOfString1[1] = a(paramContext, paramContext.getClass());
    arrayOfString;[1] = arrayOfString1;
    arrayOfString;[2] = { "uuid", str1 };
    String[] arrayOfString2 = new String[2];
    arrayOfString2[0] = "model";
    arrayOfString2[1] = Build.MODEL;
    arrayOfString;[3] = arrayOfString2;
    String[] arrayOfString3 = new String[2];
    arrayOfString3[0] = "info";
    arrayOfString3[1] = Build.BRAND;
    arrayOfString;[4] = arrayOfString3;
    String[] arrayOfString4 = new String[2];
    arrayOfString4[0] = "channel";
    arrayOfString4[1] = e.c(paramContext);
    arrayOfString;[5] = arrayOfString4;
    arrayOfString;[6] = { "actionname", "mgt_vkill" };
    String[] arrayOfString5 = new String[2];
    arrayOfString5[0] = "type";
    if (paramBoolean);
    for (String str2 = "rom"; ; str2 = "common")
    {
      arrayOfString5[1] = str2;
      arrayOfString;[7] = arrayOfString5;
      arrayOfString;[8] = { "content", paramString6 };
      String[] arrayOfString6 = new String[2];
      arrayOfString6[0] = "res";
      arrayOfString6[1] = (paramInt1 + "");
      arrayOfString;[9] = arrayOfString6;
      String[] arrayOfString7 = new String[2];
      arrayOfString7[0] = "value";
      arrayOfString7[1] = (paramInt2 + "");
      arrayOfString;[10] = arrayOfString7;
      arrayOfString;[11] = { "sysversion", paramString1 };
      arrayOfString;[12] = { "md5", paramString2 };
      arrayOfString;[13] = { "malname", paramString3 };
      arrayOfString;[14] = { "malpackname", paramString4 };
      arrayOfString;[15] = { "findoperate", paramString5 };
      String[] arrayOfString8 = new String[2];
      arrayOfString8[0] = "authorize";
      arrayOfString8[1] = (paramInt3 + "");
      arrayOfString;[16] = arrayOfString8;
      String[] arrayOfString9 = new String[2];
      arrayOfString9[0] = "sdcard";
      arrayOfString9[1] = (paramInt4 + "");
      arrayOfString;[17] = arrayOfString9;
      com.jxphone.a.a.a.a(paramContext, e.X).a(arrayOfString;);
      break;
    }
  }

  public static void a(Context paramContext, boolean paramBoolean)
  {
    if (!com.keniu.security.a.a(paramContext).aH())
      return;
    String str1 = av.a(paramContext);
    String[][] arrayOfString; = new String[8][];
    arrayOfString;[0] = { "s", "0401000301" };
    String[] arrayOfString1 = new String[2];
    arrayOfString1[0] = "var";
    arrayOfString1[1] = a(paramContext, paramContext.getClass());
    arrayOfString;[1] = arrayOfString1;
    arrayOfString;[2] = { "uuid", str1 };
    String[] arrayOfString2 = new String[2];
    arrayOfString2[0] = "model";
    arrayOfString2[1] = Build.MODEL;
    arrayOfString;[3] = arrayOfString2;
    String[] arrayOfString3 = new String[2];
    arrayOfString3[0] = "info";
    arrayOfString3[1] = Build.BRAND;
    arrayOfString;[4] = arrayOfString3;
    String[] arrayOfString4 = new String[2];
    arrayOfString4[0] = "channel";
    arrayOfString4[1] = e.c(paramContext);
    arrayOfString;[5] = arrayOfString4;
    arrayOfString;[6] = { "actionname", "cloudcheckstate" };
    String[] arrayOfString5 = new String[2];
    arrayOfString5[0] = "type";
    if (paramBoolean);
    for (String str2 = "1"; ; str2 = "0")
    {
      arrayOfString5[1] = str2;
      arrayOfString;[7] = arrayOfString5;
      com.jxphone.a.a.a.a(paramContext, e.X).a(arrayOfString;);
      break;
    }
  }

  // ERROR //
  public static void a(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: new 39	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 40	java/lang/StringBuilder:<init>	()V
    //   7: invokestatic 46	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   10: invokevirtual 52	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   13: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   16: ldc 58
    //   18: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   21: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   24: astore_3
    //   25: new 39	java/lang/StringBuilder
    //   28: dup
    //   29: invokespecial 40	java/lang/StringBuilder:<init>	()V
    //   32: aload_3
    //   33: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   36: getstatic 25	com/jxphone/mosecurity/a/a:b	Ljava/lang/String;
    //   39: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   45: astore 4
    //   47: new 48	java/io/File
    //   50: dup
    //   51: aload_3
    //   52: invokespecial 64	java/io/File:<init>	(Ljava/lang/String;)V
    //   55: invokevirtual 138	java/io/File:mkdirs	()Z
    //   58: pop
    //   59: new 48	java/io/File
    //   62: dup
    //   63: aload 4
    //   65: invokespecial 64	java/io/File:<init>	(Ljava/lang/String;)V
    //   68: astore 6
    //   70: aconst_null
    //   71: astore 7
    //   73: new 140	java/io/FileOutputStream
    //   76: dup
    //   77: aload 6
    //   79: invokespecial 141	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   82: astore 8
    //   84: aload 8
    //   86: new 39	java/lang/StringBuilder
    //   89: dup
    //   90: invokespecial 40	java/lang/StringBuilder:<init>	()V
    //   93: ldc 230
    //   95: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   98: aload_0
    //   99: invokestatic 466	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   102: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   105: ldc 134
    //   107: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   110: ldc 235
    //   112: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   115: aload_1
    //   116: invokestatic 466	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   119: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   122: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   125: invokevirtual 149	java/lang/String:getBytes	()[B
    //   128: invokevirtual 152	java/io/FileOutputStream:write	([B)V
    //   131: aload 8
    //   133: invokevirtual 155	java/io/FileOutputStream:close	()V
    //   136: return
    //   137: astore 15
    //   139: aconst_null
    //   140: astore 10
    //   142: aload 10
    //   144: ifnull -8 -> 136
    //   147: aload 10
    //   149: invokevirtual 155	java/io/FileOutputStream:close	()V
    //   152: goto -16 -> 136
    //   155: astore 11
    //   157: goto -21 -> 136
    //   160: astore 12
    //   162: aload 7
    //   164: ifnull +8 -> 172
    //   167: aload 7
    //   169: invokevirtual 155	java/io/FileOutputStream:close	()V
    //   172: aload 12
    //   174: athrow
    //   175: astore_2
    //   176: goto -40 -> 136
    //   179: astore 14
    //   181: goto -45 -> 136
    //   184: astore 13
    //   186: goto -14 -> 172
    //   189: astore 12
    //   191: aload 8
    //   193: astore 7
    //   195: goto -33 -> 162
    //   198: astore 9
    //   200: aload 8
    //   202: astore 10
    //   204: goto -62 -> 142
    //
    // Exception table:
    //   from	to	target	type
    //   73	84	137	java/lang/Exception
    //   147	152	155	java/lang/Exception
    //   73	84	160	finally
    //   0	70	175	java/lang/Exception
    //   172	175	175	java/lang/Exception
    //   131	136	179	java/lang/Exception
    //   167	172	184	java/lang/Exception
    //   84	131	189	finally
    //   84	131	198	java/lang/Exception
  }

  private static byte[] a(String paramString)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    GZIPOutputStream localGZIPOutputStream = new GZIPOutputStream(localByteArrayOutputStream);
    localGZIPOutputStream.write(paramString.getBytes());
    localGZIPOutputStream.close();
    return localByteArrayOutputStream.toByteArray();
  }

  private static int b(Context paramContext)
  {
    int i;
    if (com.keniu.security.a.a(paramContext).aR())
      i = 0;
    while (true)
    {
      return i;
      long l1 = paramContext.getSharedPreferences("report_flag", 0).getLong("report_timer", 0L);
      long l2 = a();
      if ((l1 != 0L) || (l2 > 0L))
        i = 2;
      else
        i = 1;
    }
  }

  // ERROR //
  private static String b()
  {
    // Byte code:
    //   0: ldc 128
    //   2: astore_0
    //   3: new 39	java/lang/StringBuilder
    //   6: dup
    //   7: invokespecial 40	java/lang/StringBuilder:<init>	()V
    //   10: invokestatic 46	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   13: invokevirtual 52	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   16: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   19: ldc 58
    //   21: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   24: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   27: astore 11
    //   29: new 39	java/lang/StringBuilder
    //   32: dup
    //   33: invokespecial 40	java/lang/StringBuilder:<init>	()V
    //   36: aload 11
    //   38: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   41: getstatic 25	com/jxphone/mosecurity/a/a:b	Ljava/lang/String;
    //   44: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   50: astore 12
    //   52: new 48	java/io/File
    //   55: dup
    //   56: aload 11
    //   58: invokespecial 64	java/io/File:<init>	(Ljava/lang/String;)V
    //   61: invokevirtual 138	java/io/File:mkdirs	()Z
    //   64: pop
    //   65: new 48	java/io/File
    //   68: dup
    //   69: aload 12
    //   71: invokespecial 64	java/io/File:<init>	(Ljava/lang/String;)V
    //   74: astore 14
    //   76: aload 14
    //   78: invokevirtual 68	java/io/File:exists	()Z
    //   81: ifeq +213 -> 294
    //   84: new 470	java/io/FileReader
    //   87: dup
    //   88: aload 14
    //   90: invokespecial 471	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   93: astore_3
    //   94: new 473	java/io/BufferedReader
    //   97: dup
    //   98: aload_3
    //   99: invokespecial 476	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   102: astore_2
    //   103: aload_2
    //   104: invokevirtual 479	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   107: astore 17
    //   109: aload 17
    //   111: ifnull +30 -> 141
    //   114: new 39	java/lang/StringBuilder
    //   117: dup
    //   118: invokespecial 40	java/lang/StringBuilder:<init>	()V
    //   121: aload_0
    //   122: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   125: aload 17
    //   127: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   130: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   133: astore 23
    //   135: aload 23
    //   137: astore_0
    //   138: goto -35 -> 103
    //   141: aload_2
    //   142: astore 18
    //   144: aload_3
    //   145: astore 19
    //   147: aload_0
    //   148: astore 20
    //   150: aload 18
    //   152: astore 21
    //   154: aload 21
    //   156: invokevirtual 480	java/io/BufferedReader:close	()V
    //   159: aload 19
    //   161: invokevirtual 481	java/io/FileReader:close	()V
    //   164: aload 20
    //   166: astore 10
    //   168: aload 10
    //   170: areturn
    //   171: astore 22
    //   173: aload 22
    //   175: invokevirtual 376	java/io/IOException:printStackTrace	()V
    //   178: aload 20
    //   180: astore 10
    //   182: goto -14 -> 168
    //   185: astore 5
    //   187: aconst_null
    //   188: astore 6
    //   190: aload_0
    //   191: astore 7
    //   193: aconst_null
    //   194: astore 8
    //   196: aload 8
    //   198: invokevirtual 480	java/io/BufferedReader:close	()V
    //   201: aload 6
    //   203: invokevirtual 481	java/io/FileReader:close	()V
    //   206: aload 7
    //   208: astore 10
    //   210: goto -42 -> 168
    //   213: astore 9
    //   215: aload 9
    //   217: invokevirtual 376	java/io/IOException:printStackTrace	()V
    //   220: aload 7
    //   222: astore 10
    //   224: goto -56 -> 168
    //   227: astore_1
    //   228: aconst_null
    //   229: astore_2
    //   230: aconst_null
    //   231: astore_3
    //   232: aload_2
    //   233: invokevirtual 480	java/io/BufferedReader:close	()V
    //   236: aload_3
    //   237: invokevirtual 481	java/io/FileReader:close	()V
    //   240: aload_1
    //   241: athrow
    //   242: astore 4
    //   244: aload 4
    //   246: invokevirtual 376	java/io/IOException:printStackTrace	()V
    //   249: goto -9 -> 240
    //   252: astore_1
    //   253: aconst_null
    //   254: astore_2
    //   255: goto -23 -> 232
    //   258: astore_1
    //   259: goto -27 -> 232
    //   262: astore 24
    //   264: aload_3
    //   265: astore 6
    //   267: aload_0
    //   268: astore 7
    //   270: aconst_null
    //   271: astore 8
    //   273: goto -77 -> 196
    //   276: astore 15
    //   278: aload_2
    //   279: astore 16
    //   281: aload_3
    //   282: astore 6
    //   284: aload_0
    //   285: astore 7
    //   287: aload 16
    //   289: astore 8
    //   291: goto -95 -> 196
    //   294: aload_0
    //   295: astore 20
    //   297: aconst_null
    //   298: astore 21
    //   300: aconst_null
    //   301: astore 19
    //   303: goto -149 -> 154
    //
    // Exception table:
    //   from	to	target	type
    //   154	164	171	java/io/IOException
    //   3	94	185	java/lang/Exception
    //   196	206	213	java/io/IOException
    //   3	94	227	finally
    //   232	240	242	java/io/IOException
    //   94	103	252	finally
    //   103	135	258	finally
    //   94	103	262	java/lang/Exception
    //   103	135	276	java/lang/Exception
  }

  public static void b(Context paramContext, int paramInt)
  {
    if (!com.keniu.security.a.a(paramContext).aH());
    while (true)
    {
      return;
      String str = av.a(paramContext);
      String[][] arrayOfString; = new String[8][];
      arrayOfString;[0] = { "s", "0401000301" };
      String[] arrayOfString1 = new String[2];
      arrayOfString1[0] = "var";
      arrayOfString1[1] = a(paramContext, paramContext.getClass());
      arrayOfString;[1] = arrayOfString1;
      arrayOfString;[2] = { "uuid", str };
      String[] arrayOfString2 = new String[2];
      arrayOfString2[0] = "model";
      arrayOfString2[1] = Build.MODEL;
      arrayOfString;[3] = arrayOfString2;
      String[] arrayOfString3 = new String[2];
      arrayOfString3[0] = "info";
      arrayOfString3[1] = Build.BRAND;
      arrayOfString;[4] = arrayOfString3;
      String[] arrayOfString4 = new String[2];
      arrayOfString4[0] = "channel";
      arrayOfString4[1] = e.c(paramContext);
      arrayOfString;[5] = arrayOfString4;
      arrayOfString;[6] = { "actionname", "smsscanres" };
      String[] arrayOfString5 = new String[2];
      arrayOfString5[0] = "type";
      arrayOfString5[1] = Integer.toString(paramInt);
      arrayOfString;[7] = arrayOfString5;
      com.jxphone.a.a.a.a(paramContext, e.X).a(arrayOfString;);
    }
  }

  public static void b(Context paramContext, String paramString)
  {
    if (!com.keniu.security.a.a(paramContext).aH());
    while (true)
    {
      return;
      String str = av.a(paramContext);
      String[][] arrayOfString; = new String[8][];
      arrayOfString;[0] = { "s", "0401000301" };
      arrayOfString;[1] = { "uuid", str };
      String[] arrayOfString1 = new String[2];
      arrayOfString1[0] = "var";
      arrayOfString1[1] = a(paramContext, paramContext.getClass());
      arrayOfString;[2] = arrayOfString1;
      String[] arrayOfString2 = new String[2];
      arrayOfString2[0] = "model";
      arrayOfString2[1] = Build.MODEL;
      arrayOfString;[3] = arrayOfString2;
      String[] arrayOfString3 = new String[2];
      arrayOfString3[0] = "info";
      arrayOfString3[1] = Build.BRAND;
      arrayOfString;[4] = arrayOfString3;
      String[] arrayOfString4 = new String[2];
      arrayOfString4[0] = "channel";
      arrayOfString4[1] = e.c(paramContext);
      arrayOfString;[5] = arrayOfString4;
      arrayOfString;[6] = { "actionname", "ck_nty" };
      arrayOfString;[7] = { "type", paramString };
      com.jxphone.a.a.a.a(paramContext, e.X).a(arrayOfString;);
    }
  }

  public static void b(Context paramContext, String paramString1, String paramString2)
  {
    if (!com.keniu.security.a.a(paramContext).aH());
    while (true)
    {
      return;
      String str = av.a(paramContext);
      String[][] arrayOfString; = new String[8][];
      arrayOfString;[0] = { "s", "0401000301" };
      String[] arrayOfString1 = new String[2];
      arrayOfString1[0] = "var";
      arrayOfString1[1] = a(paramContext, paramContext.getClass());
      arrayOfString;[1] = arrayOfString1;
      arrayOfString;[2] = { "uuid", str };
      String[] arrayOfString2 = new String[2];
      arrayOfString2[0] = "model";
      arrayOfString2[1] = Build.MODEL;
      arrayOfString;[3] = arrayOfString2;
      String[] arrayOfString3 = new String[2];
      arrayOfString3[0] = "info";
      arrayOfString3[1] = Build.BRAND;
      arrayOfString;[4] = arrayOfString3;
      String[] arrayOfString4 = new String[2];
      arrayOfString4[0] = "channel";
      arrayOfString4[1] = e.c(paramContext);
      arrayOfString;[5] = arrayOfString4;
      arrayOfString;[6] = { "actionname", paramString1 };
      arrayOfString;[7] = { "type", paramString2 };
      com.jxphone.a.a.a.a(paramContext, e.X).a(arrayOfString;);
    }
  }

  public static void b(Context paramContext, boolean paramBoolean)
  {
    if (!com.keniu.security.a.a(paramContext).aH())
      return;
    String str1 = av.a(paramContext);
    String[][] arrayOfString; = new String[8][];
    arrayOfString;[0] = { "s", "0401000301" };
    String[] arrayOfString1 = new String[2];
    arrayOfString1[0] = "var";
    arrayOfString1[1] = a(paramContext, paramContext.getClass());
    arrayOfString;[1] = arrayOfString1;
    arrayOfString;[2] = { "uuid", str1 };
    String[] arrayOfString2 = new String[2];
    arrayOfString2[0] = "model";
    arrayOfString2[1] = Build.MODEL;
    arrayOfString;[3] = arrayOfString2;
    String[] arrayOfString3 = new String[2];
    arrayOfString3[0] = "info";
    arrayOfString3[1] = Build.BRAND;
    arrayOfString;[4] = arrayOfString3;
    String[] arrayOfString4 = new String[2];
    arrayOfString4[0] = "channel";
    arrayOfString4[1] = e.c(paramContext);
    arrayOfString;[5] = arrayOfString4;
    arrayOfString;[6] = { "actionname", "desksmsctx" };
    String[] arrayOfString5 = new String[2];
    arrayOfString5[0] = "type";
    if (paramBoolean);
    for (String str2 = "1"; ; str2 = "0")
    {
      arrayOfString5[1] = str2;
      arrayOfString;[7] = arrayOfString5;
      com.jxphone.a.a.a.a(paramContext, e.X).a(arrayOfString;);
      break;
    }
  }

  private static boolean b(Context paramContext, Class paramClass)
  {
    ComponentName localComponentName = new ComponentName(paramContext, paramClass);
    try
    {
      int i = paramContext.getPackageManager().getPackageInfo(localComponentName.getPackageName(), 0).applicationInfo.flags;
      if ((i & 0x1) != 0);
      for (bool = true; ; bool = false)
        return bool;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
        boolean bool = false;
    }
  }

  private static boolean b(String paramString)
  {
    boolean bool;
    if (TextUtils.isEmpty(paramString))
      bool = false;
    while (true)
    {
      return bool;
      if (paramString.length() < 5)
        bool = false;
      else if (paramString.equals("-1"))
        bool = false;
      else if (paramString.contains("null"))
        bool = false;
      else if (paramString.contains("11111111"))
        bool = false;
      else if (paramString.contains("123456789"))
        bool = false;
      else
        bool = true;
    }
  }

  private static String c(Context paramContext, Class paramClass)
  {
    ComponentName localComponentName = new ComponentName(paramContext, paramClass);
    try
    {
      PackageInfo localPackageInfo = paramContext.getPackageManager().getPackageInfo(localComponentName.getPackageName(), 0);
      String str2 = localPackageInfo.versionName + "(" + localPackageInfo.versionCode + ")";
      str1 = str2;
      return str1;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
        String str1 = null;
    }
  }

  public static void c(Context paramContext, String paramString)
  {
    if (!com.keniu.security.a.a(paramContext).aH());
    while (true)
    {
      return;
      String str = av.a(paramContext);
      String[][] arrayOfString; = new String[8][];
      arrayOfString;[0] = { "s", "0401000301" };
      arrayOfString;[1] = { "uuid", str };
      String[] arrayOfString1 = new String[2];
      arrayOfString1[0] = "var";
      arrayOfString1[1] = a(paramContext, paramContext.getClass());
      arrayOfString;[2] = arrayOfString1;
      String[] arrayOfString2 = new String[2];
      arrayOfString2[0] = "model";
      arrayOfString2[1] = Build.MODEL;
      arrayOfString;[3] = arrayOfString2;
      String[] arrayOfString3 = new String[2];
      arrayOfString3[0] = "info";
      arrayOfString3[1] = Build.BRAND;
      arrayOfString;[4] = arrayOfString3;
      String[] arrayOfString4 = new String[2];
      arrayOfString4[0] = "channel";
      arrayOfString4[1] = e.c(paramContext);
      arrayOfString;[5] = arrayOfString4;
      arrayOfString;[6] = { "actionname", "traffic" };
      arrayOfString;[7] = { "type", paramString };
      com.jxphone.a.a.a.a(paramContext, e.X).a(arrayOfString;);
    }
  }

  public static void c(Context paramContext, boolean paramBoolean)
  {
    if (!com.keniu.security.a.a(paramContext).aH())
      return;
    String str1 = av.a(paramContext);
    String[][] arrayOfString; = new String[8][];
    arrayOfString;[0] = { "s", "0401000301" };
    String[] arrayOfString1 = new String[2];
    arrayOfString1[0] = "var";
    arrayOfString1[1] = a(paramContext, paramContext.getClass());
    arrayOfString;[1] = arrayOfString1;
    arrayOfString;[2] = { "uuid", str1 };
    String[] arrayOfString2 = new String[2];
    arrayOfString2[0] = "model";
    arrayOfString2[1] = Build.MODEL;
    arrayOfString;[3] = arrayOfString2;
    String[] arrayOfString3 = new String[2];
    arrayOfString3[0] = "info";
    arrayOfString3[1] = Build.BRAND;
    arrayOfString;[4] = arrayOfString3;
    String[] arrayOfString4 = new String[2];
    arrayOfString4[0] = "channel";
    arrayOfString4[1] = e.c(paramContext);
    arrayOfString;[5] = arrayOfString4;
    arrayOfString;[6] = { "actionname", "outcwdsck" };
    String[] arrayOfString5 = new String[2];
    arrayOfString5[0] = "type";
    if (paramBoolean);
    for (String str2 = "1"; ; str2 = "0")
    {
      arrayOfString5[1] = str2;
      arrayOfString;[7] = arrayOfString5;
      com.jxphone.a.a.a.a(paramContext, e.X).a(arrayOfString;);
      break;
    }
  }

  private static boolean c(Context paramContext)
  {
    if (e == -1L)
      e = paramContext.getSharedPreferences("report_flag", 0).getLong("report_timer", 0L);
    boolean bool;
    if (e == 0L)
      bool = false;
    while (true)
    {
      return bool;
      Date localDate1 = new Date(System.currentTimeMillis());
      Date localDate2 = new Date(e);
      if (localDate1.getDate() == localDate2.getDate())
        bool = true;
      else
        bool = false;
    }
  }

  public static void d(Context paramContext, String paramString)
  {
    if (!com.keniu.security.a.a(paramContext).aH());
    while (true)
    {
      return;
      String str = av.a(paramContext);
      String[][] arrayOfString; = new String[8][];
      arrayOfString;[0] = { "s", "0401000301" };
      arrayOfString;[1] = { "uuid", str };
      String[] arrayOfString1 = new String[2];
      arrayOfString1[0] = "var";
      arrayOfString1[1] = a(paramContext, paramContext.getClass());
      arrayOfString;[2] = arrayOfString1;
      String[] arrayOfString2 = new String[2];
      arrayOfString2[0] = "model";
      arrayOfString2[1] = Build.MODEL;
      arrayOfString;[3] = arrayOfString2;
      String[] arrayOfString3 = new String[2];
      arrayOfString3[0] = "info";
      arrayOfString3[1] = Build.BRAND;
      arrayOfString;[4] = arrayOfString3;
      String[] arrayOfString4 = new String[2];
      arrayOfString4[0] = "channel";
      arrayOfString4[1] = e.c(paramContext);
      arrayOfString;[5] = arrayOfString4;
      arrayOfString;[6] = { "actionname", "traf_ck" };
      arrayOfString;[7] = { "type", paramString };
      com.jxphone.a.a.a.a(paramContext, e.X).a(arrayOfString;);
    }
  }

  private static void d(Context paramContext, boolean paramBoolean)
  {
    if (!com.keniu.security.a.a(paramContext).aH())
      return;
    String str1 = av.a(paramContext);
    String[][] arrayOfString; = new String[8][];
    arrayOfString;[0] = { "s", "0401000301" };
    String[] arrayOfString1 = new String[2];
    arrayOfString1[0] = "var";
    arrayOfString1[1] = a(paramContext, paramContext.getClass());
    arrayOfString;[1] = arrayOfString1;
    arrayOfString;[2] = { "uuid", str1 };
    String[] arrayOfString2 = new String[2];
    arrayOfString2[0] = "model";
    arrayOfString2[1] = Build.MODEL;
    arrayOfString;[3] = arrayOfString2;
    String[] arrayOfString3 = new String[2];
    arrayOfString3[0] = "info";
    arrayOfString3[1] = Build.BRAND;
    arrayOfString;[4] = arrayOfString3;
    String[] arrayOfString4 = new String[2];
    arrayOfString4[0] = "channel";
    arrayOfString4[1] = e.c(paramContext);
    arrayOfString;[5] = arrayOfString4;
    arrayOfString;[6] = { "actionname", "confirmupdate" };
    String[] arrayOfString5 = new String[2];
    arrayOfString5[0] = "type";
    if (paramBoolean);
    for (String str2 = "1"; ; str2 = "0")
    {
      arrayOfString5[1] = str2;
      arrayOfString;[7] = arrayOfString5;
      com.jxphone.a.a.a.a(paramContext, e.X).a(arrayOfString;);
      break;
    }
  }

  public static void e(Context paramContext, String paramString)
  {
    if (!com.keniu.security.a.a(paramContext).aH());
    while (true)
    {
      return;
      String str = av.a(paramContext);
      String[][] arrayOfString; = new String[8][];
      arrayOfString;[0] = { "s", "0401000301" };
      arrayOfString;[1] = { "uuid", str };
      String[] arrayOfString1 = new String[2];
      arrayOfString1[0] = "var";
      arrayOfString1[1] = a(paramContext, paramContext.getClass());
      arrayOfString;[2] = arrayOfString1;
      String[] arrayOfString2 = new String[2];
      arrayOfString2[0] = "model";
      arrayOfString2[1] = Build.MODEL;
      arrayOfString;[3] = arrayOfString2;
      String[] arrayOfString3 = new String[2];
      arrayOfString3[0] = "info";
      arrayOfString3[1] = Build.BRAND;
      arrayOfString;[4] = arrayOfString3;
      String[] arrayOfString4 = new String[2];
      arrayOfString4[0] = "channel";
      arrayOfString4[1] = e.c(paramContext);
      arrayOfString;[5] = arrayOfString4;
      arrayOfString;[6] = { "actionname", "traf_setting" };
      arrayOfString;[7] = { "type", paramString };
      com.jxphone.a.a.a.a(paramContext, e.X).a(arrayOfString;);
    }
  }

  public static void f(Context paramContext, String paramString)
  {
    if (!com.keniu.security.a.a(paramContext).aH());
    while (true)
    {
      return;
      String str = av.a(paramContext);
      String[][] arrayOfString; = new String[8][];
      arrayOfString;[0] = { "s", "0401000301" };
      arrayOfString;[1] = { "uuid", str };
      String[] arrayOfString1 = new String[2];
      arrayOfString1[0] = "var";
      arrayOfString1[1] = a(paramContext, paramContext.getClass());
      arrayOfString;[2] = arrayOfString1;
      String[] arrayOfString2 = new String[2];
      arrayOfString2[0] = "model";
      arrayOfString2[1] = Build.MODEL;
      arrayOfString;[3] = arrayOfString2;
      String[] arrayOfString3 = new String[2];
      arrayOfString3[0] = "info";
      arrayOfString3[1] = Build.BRAND;
      arrayOfString;[4] = arrayOfString3;
      String[] arrayOfString4 = new String[2];
      arrayOfString4[0] = "channel";
      arrayOfString4[1] = e.c(paramContext);
      arrayOfString;[5] = arrayOfString4;
      arrayOfString;[6] = { "actionname", "rates_ck" };
      arrayOfString;[7] = { "type", paramString };
      com.jxphone.a.a.a.a(paramContext, e.X).a(arrayOfString;);
    }
  }

  public static void g(Context paramContext, String paramString)
  {
    if (!com.keniu.security.a.a(paramContext).aH());
    while (true)
    {
      return;
      String str = av.a(paramContext);
      String[][] arrayOfString; = new String[8][];
      arrayOfString;[0] = { "s", "0401000301" };
      String[] arrayOfString1 = new String[2];
      arrayOfString1[0] = "var";
      arrayOfString1[1] = a(paramContext, paramContext.getClass());
      arrayOfString;[1] = arrayOfString1;
      arrayOfString;[2] = { "uuid", str };
      String[] arrayOfString2 = new String[2];
      arrayOfString2[0] = "model";
      arrayOfString2[1] = Build.MODEL;
      arrayOfString;[3] = arrayOfString2;
      String[] arrayOfString3 = new String[2];
      arrayOfString3[0] = "info";
      arrayOfString3[1] = Build.BRAND;
      arrayOfString;[4] = arrayOfString3;
      String[] arrayOfString4 = new String[2];
      arrayOfString4[0] = "channel";
      arrayOfString4[1] = e.c(paramContext);
      arrayOfString;[5] = arrayOfString4;
      arrayOfString;[6] = { "actionname", "smsscan" };
      arrayOfString;[7] = { "type", paramString };
      com.jxphone.a.a.a.a(paramContext, e.X).a(arrayOfString;);
    }
  }

  public static void h(Context paramContext, String paramString)
  {
    if (!com.keniu.security.a.a(paramContext).aH());
    while (true)
    {
      return;
      String str = av.a(paramContext);
      String[][] arrayOfString; = new String[8][];
      arrayOfString;[0] = { "s", "0401000301" };
      String[] arrayOfString1 = new String[2];
      arrayOfString1[0] = "var";
      arrayOfString1[1] = a(paramContext, paramContext.getClass());
      arrayOfString;[1] = arrayOfString1;
      arrayOfString;[2] = { "uuid", str };
      String[] arrayOfString2 = new String[2];
      arrayOfString2[0] = "model";
      arrayOfString2[1] = Build.MODEL;
      arrayOfString;[3] = arrayOfString2;
      String[] arrayOfString3 = new String[2];
      arrayOfString3[0] = "info";
      arrayOfString3[1] = Build.BRAND;
      arrayOfString;[4] = arrayOfString3;
      String[] arrayOfString4 = new String[2];
      arrayOfString4[0] = "channel";
      arrayOfString4[1] = e.c(paramContext);
      arrayOfString;[5] = arrayOfString4;
      arrayOfString;[6] = { "actionname", "outcwds" };
      arrayOfString;[7] = { "value", paramString };
      com.jxphone.a.a.a.a(paramContext, e.X).a(arrayOfString;);
    }
  }

  public static void i(Context paramContext, String paramString)
  {
    if (!com.keniu.security.a.a(paramContext).aH());
    while (true)
    {
      return;
      String str = av.a(paramContext);
      String[][] arrayOfString; = new String[7][];
      arrayOfString;[0] = { "s", "0401000301" };
      String[] arrayOfString1 = new String[2];
      arrayOfString1[0] = "var";
      arrayOfString1[1] = a(paramContext, paramContext.getClass());
      arrayOfString;[1] = arrayOfString1;
      arrayOfString;[2] = { "uuid", str };
      String[] arrayOfString2 = new String[2];
      arrayOfString2[0] = "model";
      arrayOfString2[1] = Build.MODEL;
      arrayOfString;[3] = arrayOfString2;
      String[] arrayOfString3 = new String[2];
      arrayOfString3[0] = "info";
      arrayOfString3[1] = Build.BRAND;
      arrayOfString;[4] = arrayOfString3;
      String[] arrayOfString4 = new String[2];
      arrayOfString4[0] = "channel";
      arrayOfString4[1] = e.c(paramContext);
      arrayOfString;[5] = arrayOfString4;
      arrayOfString;[6] = { "actionname", paramString };
      com.jxphone.a.a.a.a(paramContext, e.X).a(arrayOfString;);
    }
  }

  private static void j(Context paramContext, String paramString)
  {
    if (!com.keniu.security.a.a(paramContext).aH());
    while (true)
    {
      return;
      String str = av.a(paramContext);
      String[][] arrayOfString; = new String[8][];
      arrayOfString;[0] = { "s", "0401000301" };
      arrayOfString;[1] = { "uuid", str };
      String[] arrayOfString1 = new String[2];
      arrayOfString1[0] = "var";
      arrayOfString1[1] = a(paramContext, paramContext.getClass());
      arrayOfString;[2] = arrayOfString1;
      String[] arrayOfString2 = new String[2];
      arrayOfString2[0] = "model";
      arrayOfString2[1] = Build.MODEL;
      arrayOfString;[3] = arrayOfString2;
      String[] arrayOfString3 = new String[2];
      arrayOfString3[0] = "info";
      arrayOfString3[1] = Build.BRAND;
      arrayOfString;[4] = arrayOfString3;
      String[] arrayOfString4 = new String[2];
      arrayOfString4[0] = "channel";
      arrayOfString4[1] = e.c(paramContext);
      arrayOfString;[5] = arrayOfString4;
      arrayOfString;[6] = { "actionname", "blockerroraddwhite" };
      arrayOfString;[7] = { "type", paramString };
      com.jxphone.a.a.a.a(paramContext, e.X).a(arrayOfString;);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.a.a
 * JD-Core Version:    0.6.2
 */