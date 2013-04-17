import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.telephony.TelephonyManager;
import com.qq.jce.wup.UniPacket;
import com.tencent.tccsync.ITccSyncDbAdapter.DbAdapterType;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicInteger;

public final class de
{
  public static String a;
  public static Context b;
  public static boolean c;
  private static de.a d = de.a.d;

  static
  {
    c = false;
    String str1 = new File(Environment.getExternalStorageDirectory().getPath()).toString();
    if (str1 == null);
    for (String str2 = null; ; str2 = str1 + "/.qqpim/")
    {
      a = str2;
      return;
    }
  }

  public static UniPacket a(InputStream paramInputStream)
  {
    byte[] arrayOfByte = b(paramInputStream);
    if (arrayOfByte == null);
    for (UniPacket localUniPacket = null; ; localUniPacket = b(arrayOfByte))
      return localUniPacket;
  }

  public static String a()
  {
    return bl.f().g();
  }

  public static String a(long paramLong)
  {
    while (true)
    {
      int i;
      String str1;
      int m;
      try
      {
        SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        localSimpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT-0"));
        String str2 = localSimpleDateFormat.format(new Date(paramLong));
        char[] arrayOfChar = new char[16];
        i = 0;
        j = 0;
        if (i >= str2.length())
        {
          arrayOfChar[j] = 'Z';
          str1 = String.valueOf(arrayOfChar);
        }
        else
        {
          int k = str2.charAt(i);
          if (k == 32)
          {
            m = j + 1;
            arrayOfChar[j] = 'T';
          }
          else if ((k != 45) && (k != 58))
          {
            m = j + 1;
            arrayOfChar[j] = k;
          }
        }
      }
      catch (Throwable localThrowable)
      {
        dk.c("QQPimUtils", "getUTCStringFromTime()," + localThrowable.getMessage());
        str1 = null;
        break label172;
        m = j;
      }
      label172: return str1;
      i++;
      int j = m;
    }
  }

  public static String a(Context paramContext)
  {
    String str = ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
    if (str == null)
      str = "000000000000000";
    return str;
  }

  public static String a(ITccSyncDbAdapter.DbAdapterType paramDbAdapterType, boolean paramBoolean, String paramString)
  {
    String str1 = null;
    if (paramDbAdapterType == null);
    int i;
    do
    {
      do
      {
        return str1;
        str1 = null;
      }
      while (paramString == null);
      i = paramString.length();
      str1 = null;
    }
    while (i <= 0);
    String str2;
    if (ITccSyncDbAdapter.DbAdapterType.CONTACT.isEqual(paramDbAdapterType))
      str2 = "_contact_db.map";
    while (true)
    {
      str1 = i(paramBoolean) + paramString + str2;
      break;
      if (ITccSyncDbAdapter.DbAdapterType.SMS.isEqual(paramDbAdapterType))
      {
        str2 = "_sms_db.map";
      }
      else if (ITccSyncDbAdapter.DbAdapterType.CALLLOG.isEqual(paramDbAdapterType))
      {
        str2 = "_calllog_db.map";
      }
      else if (ITccSyncDbAdapter.DbAdapterType.BOOKMARK.isEqual(paramDbAdapterType))
      {
        str2 = "_bookmark_db.map";
      }
      else if (ITccSyncDbAdapter.DbAdapterType.QQBROWSER_BOOKMARK.isEqual(paramDbAdapterType))
      {
        str2 = "_qqbrowser_bookmarkt_db.map";
      }
      else
      {
        boolean bool = ITccSyncDbAdapter.DbAdapterType.BWLIST.isEqual(paramDbAdapterType);
        str2 = null;
        if (bool)
          str2 = "_bwlist_db.map";
      }
    }
  }

  public static String a(String paramString, boolean paramBoolean)
  {
    if (paramString == null);
    for (String str = null; ; str = i(paramBoolean) + paramString + "_contact_db.map")
      return str;
  }

  public static String a(String paramString, char[] paramArrayOfChar)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramString != null);
    char c1;
    int j;
    for (int i = 0; ; i++)
    {
      if (i >= paramString.length())
        return localStringBuilder.toString();
      c1 = paramString.charAt(i);
      j = 0;
      if ((paramArrayOfChar != null) && (j < paramArrayOfChar.length))
        break;
      if ((c1 != '\r') && (c1 != '\n'))
        localStringBuilder.append(c1);
    }
    if (c1 == paramArrayOfChar[j])
    {
      if (c1 != '\r')
        break label109;
      localStringBuilder.append('\\').append('r');
    }
    while (true)
    {
      j++;
      break;
      label109: if (c1 == '\n')
        localStringBuilder.append('\\').append('n');
      else
        localStringBuilder.append('\\');
    }
  }

  public static String a(boolean paramBoolean)
  {
    String str1;
    if (paramBoolean)
    {
      String str2 = ((TelephonyManager)b.getSystemService("phone")).getDeviceId();
      if ((str2 == null) || (str2.equals("000000000000000")))
        str2 = "123456789012345";
      str1 = "COMN:" + str2;
    }
    while (true)
    {
      return str1;
      str1 = bl.f().a(ca.a.h);
      dk.b("QQPimUtils", "getUniqueMachineAppID() imei = " + str1);
    }
  }

  public static String a(byte[] paramArrayOfByte)
  {
    Object localObject = null;
    if (paramArrayOfByte == null);
    while (true)
    {
      return localObject;
      try
      {
        byte[] arrayOfByte = cn.a(paramArrayOfByte);
        if (arrayOfByte != null)
        {
          str = new String(arrayOfByte, "UTF-8");
          localObject = str;
        }
      }
      catch (Throwable localThrowable)
      {
        while (true)
        {
          dk.c("QQPimUtils", "getBase64Code(), " + localThrowable.getMessage());
          String str = null;
        }
      }
    }
  }

  public static byte[] a(String paramString)
  {
    byte[] arrayOfByte = null;
    if (paramString != null)
    {
      boolean bool = "".equals(paramString);
      arrayOfByte = null;
      if (!bool)
        break label21;
    }
    while (true)
    {
      return arrayOfByte;
      try
      {
        label21: MessageDigest localMessageDigest2 = MessageDigest.getInstance("MD5");
        localMessageDigest1 = localMessageDigest2;
      }
      catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
      {
        try
        {
          while (true)
          {
            localMessageDigest1.update(paramString.getBytes("UTF-8"));
            arrayOfByte = localMessageDigest1.digest();
            break;
            localNoSuchAlgorithmException = localNoSuchAlgorithmException;
            dk.c("QQPimUtils", "getMD5(), " + localNoSuchAlgorithmException.toString());
            MessageDigest localMessageDigest1 = null;
          }
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException)
        {
          while (true)
            dk.c("QQPimUtils", "getMD5(), " + localUnsupportedEncodingException.toString());
        }
      }
    }
  }

  public static byte[] a(byte[] paramArrayOfByte, String paramString, AtomicInteger paramAtomicInteger)
  {
    return b(paramArrayOfByte, paramString, paramAtomicInteger);
  }

  public static long b(String paramString)
  {
    try
    {
      char[] arrayOfChar = new char[5];
      paramString.getChars(0, 4, arrayOfChar, 0);
      int i = Integer.valueOf(String.valueOf(arrayOfChar, 0, 4)).intValue();
      paramString.getChars(4, 6, arrayOfChar, 0);
      int j = Integer.valueOf(String.valueOf(arrayOfChar, 0, 2)).intValue();
      paramString.getChars(6, 8, arrayOfChar, 0);
      int k = Integer.valueOf(String.valueOf(arrayOfChar, 0, 2)).intValue();
      paramString.getChars(9, 11, arrayOfChar, 0);
      int m = Integer.valueOf(String.valueOf(arrayOfChar, 0, 2)).intValue();
      paramString.getChars(11, 13, arrayOfChar, 0);
      int n = Integer.valueOf(String.valueOf(arrayOfChar, 0, 2)).intValue();
      paramString.getChars(13, 15, arrayOfChar, 0);
      int i1 = Integer.valueOf(String.valueOf(arrayOfChar, 0, 2)).intValue();
      GregorianCalendar localGregorianCalendar = new GregorianCalendar(i, j - 1, k, m, n, i1);
      localGregorianCalendar.setTimeZone(TimeZone.getTimeZone("GMT-0"));
      long l2 = localGregorianCalendar.getTimeInMillis();
      l1 = l2;
      return l1;
    }
    catch (NullPointerException localNullPointerException)
    {
      while (true)
      {
        dk.c("QQPimUtils", "getUTCTimeFromString(), " + localNullPointerException.toString());
        l1 = 0L;
      }
    }
    catch (IndexOutOfBoundsException localIndexOutOfBoundsException)
    {
      while (true)
      {
        dk.c("QQPimUtils", "getUTCTimeFromString(), " + localIndexOutOfBoundsException.toString());
        long l1 = 0L;
      }
    }
  }

  public static UniPacket b(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = a.c(paramArrayOfByte, "DFG#$%^#%$RGHR(&*M<><".getBytes());
    UniPacket localUniPacket = new UniPacket();
    localUniPacket.setEncodeName("UTF-8");
    try
    {
      localUniPacket.decode(arrayOfByte);
      return localUniPacket;
    }
    catch (Exception localException)
    {
      while (true)
      {
        dk.c("QQPimUtils", "getUniPacketFromDataBytes(), " + localException.toString());
        localUniPacket = null;
      }
    }
  }

  public static String b()
  {
    String str = bl.f().a(ca.a.f);
    dk.b("QQPimUtils", "getServerURL(), url = " + str);
    return str;
  }

  public static List<String> b(String paramString, char[] paramArrayOfChar)
  {
    if (paramString == null);
    int i;
    ArrayList localArrayList;
    StringBuilder localStringBuilder;
    int j;
    for (Object localObject = null; ; localObject = localArrayList)
    {
      return localObject;
      i = paramString.length();
      localArrayList = new ArrayList();
      localStringBuilder = new StringBuilder();
      j = 0;
      if (j < i)
        break;
      localArrayList.add(localStringBuilder.toString());
    }
    char c1 = paramString.charAt(j);
    char c2;
    int k;
    if (c1 == '\\')
      if (j + 1 < i)
      {
        c2 = paramString.charAt(j + 1);
        k = 0;
        label93: if ((paramArrayOfChar != null) && (k < paramArrayOfChar.length));
      }
    while (true)
    {
      j++;
      break;
      if (c2 == paramArrayOfChar[k])
      {
        if (c2 == 'r')
          localStringBuilder.append('\r');
        while (true)
        {
          j++;
          break;
          if (c2 == 'n')
            localStringBuilder.append('\n');
          else
            localStringBuilder.append(c2);
        }
      }
      k++;
      break label93;
      localStringBuilder.append(c1);
      continue;
      if (c1 == ';')
      {
        localArrayList.add(localStringBuilder.toString());
        localStringBuilder = new StringBuilder();
      }
      else
      {
        localStringBuilder = localStringBuilder.append(c1);
      }
    }
  }

  public static boolean b(boolean paramBoolean)
  {
    try
    {
      File localFile = new File(i(paramBoolean));
      if (!localFile.exists())
        localFile.mkdir();
      bool = true;
      return bool;
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        dk.c("QQPimUtils", "createFilesDir(), err: " + localThrowable.toString());
        boolean bool = false;
      }
    }
  }

  private static byte[] b(InputStream paramInputStream)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    byte[] arrayOfByte;
    try
    {
      while (true)
      {
        int i = paramInputStream.read();
        if (i == -1)
        {
          arrayOfByte = localByteArrayOutputStream.toByteArray();
          localByteArrayOutputStream.close();
          paramInputStream.close();
          break;
        }
        localByteArrayOutputStream.write(i);
      }
    }
    catch (IOException localIOException)
    {
      dk.c("QQPimUtils", "InputStreamToBytes(), " + localIOException.toString());
      arrayOfByte = null;
    }
    return arrayOfByte;
  }

  // ERROR //
  private static byte[] b(byte[] paramArrayOfByte, String paramString, AtomicInteger paramAtomicInteger)
  {
    // Byte code:
    //   0: invokestatic 369	cj:a	()Lcj;
    //   3: aload_1
    //   4: invokevirtual 372	cj:a	(Ljava/lang/String;)Ldd;
    //   7: astore 8
    //   9: aload 8
    //   11: astore 4
    //   13: aload 4
    //   15: ifnonnull +27 -> 42
    //   18: aconst_null
    //   19: astore 7
    //   21: aload 4
    //   23: ifnull +16 -> 39
    //   26: aload 4
    //   28: invokevirtual 376	dd:d	()V
    //   31: invokestatic 369	cj:a	()Lcj;
    //   34: aload 4
    //   36: invokevirtual 379	cj:a	(Ldd;)V
    //   39: aload 7
    //   41: areturn
    //   42: aload 4
    //   44: iconst_0
    //   45: invokevirtual 381	dd:a	(I)V
    //   48: aload 4
    //   50: aload_0
    //   51: invokevirtual 384	dd:a	([B)I
    //   54: pop
    //   55: aload 4
    //   57: invokevirtual 386	dd:a	()I
    //   60: istore 10
    //   62: aload_2
    //   63: ifnull +9 -> 72
    //   66: aload_2
    //   67: iload 10
    //   69: invokevirtual 391	java/util/concurrent/atomic/AtomicInteger:set	(I)V
    //   72: aconst_null
    //   73: astore 7
    //   75: sipush 200
    //   78: iload 10
    //   80: if_icmpne +14 -> 94
    //   83: aload 4
    //   85: invokevirtual 393	dd:c	()[B
    //   88: astore 11
    //   90: aload 11
    //   92: astore 7
    //   94: aload 4
    //   96: ifnull -57 -> 39
    //   99: aload 4
    //   101: invokevirtual 376	dd:d	()V
    //   104: invokestatic 369	cj:a	()Lcj;
    //   107: aload 4
    //   109: invokevirtual 379	cj:a	(Ldd;)V
    //   112: goto -73 -> 39
    //   115: astore 6
    //   117: aconst_null
    //   118: astore 4
    //   120: ldc 118
    //   122: new 44	java/lang/StringBuilder
    //   125: dup
    //   126: ldc_w 395
    //   129: invokespecial 51	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   132: aload 6
    //   134: invokevirtual 318	java/lang/Exception:toString	()Ljava/lang/String;
    //   137: invokevirtual 57	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   140: invokevirtual 58	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   143: invokestatic 128	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   146: aconst_null
    //   147: astore 7
    //   149: aload 4
    //   151: ifnull -112 -> 39
    //   154: aload 4
    //   156: invokevirtual 376	dd:d	()V
    //   159: invokestatic 369	cj:a	()Lcj;
    //   162: aload 4
    //   164: invokevirtual 379	cj:a	(Ldd;)V
    //   167: aconst_null
    //   168: astore 7
    //   170: goto -131 -> 39
    //   173: astore_3
    //   174: aconst_null
    //   175: astore 4
    //   177: aload_3
    //   178: astore 5
    //   180: aload 4
    //   182: ifnull +16 -> 198
    //   185: aload 4
    //   187: invokevirtual 376	dd:d	()V
    //   190: invokestatic 369	cj:a	()Lcj;
    //   193: aload 4
    //   195: invokevirtual 379	cj:a	(Ldd;)V
    //   198: aload 5
    //   200: athrow
    //   201: astore 5
    //   203: goto -23 -> 180
    //   206: astore 6
    //   208: goto -88 -> 120
    //
    // Exception table:
    //   from	to	target	type
    //   0	9	115	java/lang/Exception
    //   0	9	173	finally
    //   42	90	201	finally
    //   120	146	201	finally
    //   42	90	206	java/lang/Exception
  }

  public static String c()
  {
    return bl.a();
  }

  public static String c(String paramString)
  {
    Object localObject = null;
    if (paramString == null)
      return localObject;
    while (true)
    {
      try
      {
        byte[] arrayOfByte = cn.a(paramString.getBytes("UTF-8"));
        if (arrayOfByte == null)
          break label71;
        str = new String(arrayOfByte, "UTF-8");
        localObject = str;
      }
      catch (Throwable localThrowable)
      {
        dk.c("QQPimUtils", "getBase64CodeFromString(), " + localThrowable.getMessage());
        localObject = null;
      }
      break;
      label71: String str = null;
    }
  }

  public static String c(boolean paramBoolean)
  {
    String str1 = cw.d().f();
    if (str1 == null);
    for (String str2 = null; ; str2 = i(paramBoolean) + str1 + "_contact_db.map")
      return str2;
  }

  public static String d(boolean paramBoolean)
  {
    String str1 = cw.d().f();
    String str2 = null;
    if (str1 == null);
    while (true)
    {
      return str2;
      str2 = null;
      if (str1 != null)
        str2 = i(paramBoolean) + str1 + "_sms_db.map";
    }
  }

  public static void d()
  {
    String str1 = i(true);
    String str2 = i(false);
    a.a(str1, ".map");
    a.a(str2, ".map");
  }

  public static byte[] d(String paramString)
  {
    Object localObject = null;
    if (paramString == null);
    while (true)
    {
      return localObject;
      try
      {
        byte[] arrayOfByte = cn.b(paramString.getBytes("UTF-8"));
        localObject = arrayOfByte;
      }
      catch (Throwable localThrowable)
      {
        dk.c("QQPimUtils", "getStringFromBase64Code(), " + localThrowable.getMessage());
        localObject = null;
      }
    }
  }

  public static de.a e()
  {
    if (d == de.a.d)
    {
      if (!Build.MODEL.toLowerCase().startsWith("oms"))
        break label34;
      d = de.a.a;
    }
    while (true)
    {
      return d;
      label34: if ((Build.BRAND.toLowerCase().startsWith("huawei")) && (Build.MODEL.toLowerCase().startsWith("u8500")))
        d = de.a.c;
      else
        d = de.a.b;
    }
  }

  public static String e(String paramString)
  {
    String str;
    if (paramString == null)
      str = null;
    while (true)
    {
      return str;
      try
      {
        str = new String(cn.b(paramString.getBytes("UTF-8")), "UTF-8");
      }
      catch (Throwable localThrowable)
      {
        dk.c("QQPimUtils", "getStringFromBase64Code(), " + localThrowable.getMessage());
        str = "";
      }
    }
  }

  public static String e(boolean paramBoolean)
  {
    String str1 = cw.d().f();
    String str2 = null;
    if (str1 == null);
    while (true)
    {
      return str2;
      str2 = null;
      if (str1 != null)
        str2 = i(paramBoolean) + str1 + "_calllog_db.map";
    }
  }

  public static int f()
  {
    return Integer.valueOf(Build.VERSION.SDK).intValue();
  }

  public static String f(String paramString)
  {
    if (paramString == null);
    while (true)
    {
      return paramString;
      try
      {
        if (paramString.indexOf("-") != -1)
        {
          SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
          paramString = localSimpleDateFormat.format(localSimpleDateFormat.parse(paramString));
        }
        else if ((paramString.indexOf("年") != -1) && (paramString.indexOf("月") != -1) && (paramString.indexOf("日") != -1))
        {
          Date localDate2 = new SimpleDateFormat("yyyy年MM月dd日").parse(paramString);
          paramString = new SimpleDateFormat("yyyy-MM-dd").format(localDate2);
        }
        else if (ci.f)
        {
          Date localDate1 = new Date(Long.parseLong(paramString) - TimeZone.getDefault().getRawOffset());
          String str = new SimpleDateFormat("yyyy-MM-dd").format(localDate1);
          paramString = str;
        }
      }
      catch (Throwable localThrowable)
      {
        dk.c("QQPimUtils", "timeStrTrans(), " + localThrowable.toString());
      }
    }
  }

  public static String f(boolean paramBoolean)
  {
    String str1 = cw.d().f();
    String str2 = null;
    if (str1 == null);
    while (true)
    {
      return str2;
      str2 = null;
      if (str1 != null)
        str2 = i(paramBoolean) + str1 + "_bookmark_db.map";
    }
  }

  public static String g(boolean paramBoolean)
  {
    String str1 = cw.d().f();
    if (str1 == null);
    for (String str2 = null; ; str2 = i(paramBoolean) + str1 + "_bwlist_db.map")
      return str2;
  }

  public static boolean g()
  {
    if (Integer.valueOf(Build.VERSION.SDK).intValue() < 5);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static String h(boolean paramBoolean)
  {
    String str1 = cw.d().f();
    if (str1 == null);
    for (String str2 = null; ; str2 = i(paramBoolean) + str1 + "_qqbrowser_bookmarkt_db.map")
      return str2;
  }

  public static boolean h()
  {
    if (Integer.valueOf(Build.VERSION.SDK).intValue() >= 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static String i()
  {
    if (Integer.valueOf(Build.VERSION.SDK).intValue() > 4);
    while (true)
    {
      try
      {
        if ((db)Class.forName("db").newInstance() != null)
        {
          dk.b("QQPimUtils", "isSDKVersionLargerOrEquals4_0(), property != null");
          String str2 = db.a();
          str1 = str2;
          dk.b("QQPimUtils", "isSDKVersionLargerOrEquals4_0(), manufaturer:" + str1);
          return str1;
        }
      }
      catch (Exception localException)
      {
        dk.c("QQPimUtils", "isSDKVersionLargerOrEquals4_0(), " + localException.toString());
      }
      String str1 = "UNKNOW";
    }
  }

  private static String i(boolean paramBoolean)
  {
    String str;
    if (paramBoolean)
      str = a;
    while (true)
    {
      return str;
      str = bl.f().a(ca.a.g);
      dk.b("QQPimUtils", "getMapDir() Dir = " + str);
    }
  }

  public static String j()
  {
    return Build.MODEL;
  }

  public static enum a
  {
    static
    {
      a[] arrayOfa = new a[4];
      arrayOfa[0] = a;
      arrayOfa[1] = b;
      arrayOfa[2] = c;
      arrayOfa[3] = d;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     de
 * JD-Core Version:    0.6.2
 */