import android.app.Notification;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.os.Build;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import com.tencent.powermanager.service.BatteryEventReceiver;
import java.lang.reflect.Method;
import java.security.interfaces.RSAPublicKey;
import javax.crypto.Cipher;
import javax.security.cert.CertificateException;
import javax.security.cert.X509Certificate;

public final class a
{
  public Notification a;
  public int b = BatteryEventReceiver.a;
  public Context c;

  public a(Context paramContext)
  {
    new StringBuilder("^^ show ").append(this.b).toString();
    this.c = paramContext;
  }

  public static long a()
  {
    long l1 = s.a.d().n();
    if (l1 == 0L)
    {
      int m = BatteryEventReceiver.a;
      int n = BatteryEventReceiver.b;
      l1 = b(n)[(m / 3)];
      if (l1 == 0L)
        l1 = a(m, n);
    }
    long l3;
    int i;
    int k;
    long l4;
    if (BatteryEventReceiver.a < 90)
    {
      l3 = l1 * (90 - BatteryEventReceiver.a);
      i = BatteryEventReceiver.b;
      long[] arrayOfLong = b(i);
      int j = 30;
      k = 0;
      l4 = 0L;
      while (j <= 33)
      {
        if (arrayOfLong[j] != 0L)
        {
          l4 += arrayOfLong[j];
          k++;
        }
        j++;
      }
      if (k == 0)
        break label192;
    }
    label192: for (long l5 = l4 / k; ; l5 = l4)
    {
      if (l5 == 0L)
        l5 = a(100, i);
      long l2 = l3 + l5 * 10L;
      while (true)
      {
        return l2;
        if (BatteryEventReceiver.a <= 100)
          l2 = l1 * (100 - BatteryEventReceiver.a);
        else
          l2 = 0L;
      }
    }
  }

  private static long a(int paramInt1, int paramInt2)
  {
    long l = 80000L;
    switch (paramInt2)
    {
    default:
    case 2:
    case 1:
    }
    while (true)
    {
      return l;
      if (paramInt1 >= 90)
      {
        l = 180000L;
        continue;
        if (paramInt1 < 90)
          l = 148000L;
        else
          l = 240000L;
      }
    }
  }

  public static Object a(Object paramObject, String paramString, Class[] paramArrayOfClass, Object[] paramArrayOfObject)
    throws Exception
  {
    Class localClass = paramObject.getClass();
    int i = 0;
    int j = paramArrayOfObject.length;
    if (i < j)
    {
      if (paramArrayOfClass[i] == Integer.class)
        paramArrayOfClass[i] = Integer.TYPE;
      while (true)
      {
        i++;
        break;
        if (paramArrayOfClass[i] == Boolean.class)
          paramArrayOfClass[i] = Boolean.TYPE;
      }
    }
    return localClass.getMethod(paramString, paramArrayOfClass).invoke(paramObject, paramArrayOfObject);
  }

  public static String a(Context paramContext, double paramDouble)
  {
    int i = (int)paramDouble;
    int j = (int)(60.0D * paramDouble) % 60;
    String str2;
    if (i > 0)
      str2 = i + paramContext.getString(2131099659);
    for (String str1 = str2 + j + paramContext.getString(2131099661); ; str1 = j + paramContext.getString(2131099661))
      return str1;
  }

  public static String a(Context paramContext, long paramLong)
  {
    int i = (int)paramLong / 3600000;
    int j = (int)(paramLong % 3600000L) / 60000;
    String str1;
    if (i > 0)
    {
      String str2 = i + paramContext.getString(2131099659);
      str1 = str2 + j + paramContext.getString(2131099661);
    }
    while (true)
    {
      return str1;
      if (j > 0)
        str1 = j + paramContext.getString(2131099661);
      else if (paramLong > 0L)
        str1 = paramLong / 1000L + paramContext.getString(2131099660);
      else
        str1 = null;
    }
  }

  public static RSAPublicKey a(byte[] paramArrayOfByte)
  {
    try
    {
      localRSAPublicKey = (RSAPublicKey)X509Certificate.getInstance(paramArrayOfByte).getPublicKey();
      return localRSAPublicKey;
    }
    catch (CertificateException localCertificateException)
    {
      while (true)
      {
        localCertificateException.printStackTrace();
        RSAPublicKey localRSAPublicKey = null;
      }
    }
  }

  public static void a(long paramLong, int paramInt1, int paramInt2)
  {
    if ((paramInt1 < 0) || (paramInt1 >= 99));
    while (true)
    {
      return;
      r localr = s.a.d();
      long[] arrayOfLong;
      int i;
      if (paramLong <= 30000L)
      {
        paramLong = 30000L;
        if ((paramInt1 % 3 == 0) || (paramInt1 >= 97))
          localr.b(paramLong);
        if (paramLong != 0L)
        {
          arrayOfLong = b(paramInt2);
          i = paramInt1 / 3;
          if (arrayOfLong[i] == 0L)
            arrayOfLong[i] = paramLong;
        }
      }
      else
      {
        String str1;
        while (true)
        {
          int j = arrayOfLong.length;
          str1 = "";
          for (int k = 0; k < j; k++)
          {
            long l = arrayOfLong[k];
            String str2 = str1 + l;
            str1 = str2 + ";";
          }
          if (paramInt1 < 90)
          {
            if (paramLong <= 360000L)
              break;
            paramLong = 360000L;
            break;
          }
          if (paramLong <= 600000L)
            break;
          paramLong = 600000L;
          break;
          arrayOfLong[i] = ((paramLong + arrayOfLong[i]) / 2L);
        }
        str1.substring(0, -1 + str1.length());
        s.a.d().a(str1, paramInt2);
      }
    }
  }

  public static void a(Class<?>[] paramArrayOfClass)
    throws es
  {
    StackTraceElement[] arrayOfStackTraceElement = Thread.currentThread().getStackTrace();
    int i = arrayOfStackTraceElement.length;
    int j = 0;
    int k = 0;
    if (j >= i)
    {
      if (k == 0)
        throw new es();
    }
    else
    {
      StackTraceElement localStackTraceElement = arrayOfStackTraceElement[j];
      int m = paramArrayOfClass.length;
      label86: for (int n = 0; ; n++)
      {
        if (n >= m);
        while (true)
        {
          j++;
          break;
          Class<?> localClass = paramArrayOfClass[n];
          if (!localStackTraceElement.getClassName().equals(localClass.getName()))
            break label86;
          k = 1;
        }
      }
    }
  }

  // ERROR //
  public static boolean a(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: ldc 198
    //   2: invokestatic 204	com/tencent/tmsecure/common/TMSApplication:getStrFromEnvMap	(Ljava/lang/String;)Ljava/lang/String;
    //   5: astore_2
    //   6: aload_2
    //   7: ifnonnull +84 -> 91
    //   10: aload_0
    //   11: invokevirtual 208	android/content/Context:getCacheDir	()Ljava/io/File;
    //   14: invokevirtual 211	java/io/File:toString	()Ljava/lang/String;
    //   17: astore 14
    //   19: aload 14
    //   21: ldc 213
    //   23: invokevirtual 217	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   26: ifeq +19 -> 45
    //   29: aload 14
    //   31: iconst_0
    //   32: bipush 254
    //   34: aload 14
    //   36: invokevirtual 160	java/lang/String:length	()I
    //   39: iadd
    //   40: invokevirtual 164	java/lang/String:substring	(II)Ljava/lang/String;
    //   43: astore 14
    //   45: aload 14
    //   47: bipush 47
    //   49: invokevirtual 221	java/lang/String:lastIndexOf	(I)I
    //   52: istore 15
    //   54: iload 15
    //   56: iconst_m1
    //   57: if_icmpeq +294 -> 351
    //   60: new 22	java/lang/StringBuilder
    //   63: dup
    //   64: aload 14
    //   66: iconst_0
    //   67: iload 15
    //   69: invokevirtual 164	java/lang/String:substring	(II)Ljava/lang/String;
    //   72: invokestatic 225	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   75: invokespecial 27	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   78: ldc 227
    //   80: invokevirtual 108	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   83: invokevirtual 35	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   86: astore 16
    //   88: aload 16
    //   90: astore_2
    //   91: aload_2
    //   92: invokevirtual 160	java/lang/String:length	()I
    //   95: ifeq +317 -> 412
    //   98: new 210	java/io/File
    //   101: dup
    //   102: new 22	java/lang/StringBuilder
    //   105: dup
    //   106: aload_2
    //   107: invokestatic 225	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   110: invokespecial 27	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   113: aload_1
    //   114: invokevirtual 108	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: invokevirtual 35	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   120: invokespecial 228	java/io/File:<init>	(Ljava/lang/String;)V
    //   123: invokevirtual 232	java/io/File:exists	()Z
    //   126: ifeq +263 -> 389
    //   129: new 22	java/lang/StringBuilder
    //   132: dup
    //   133: aload_2
    //   134: invokestatic 225	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   137: invokespecial 27	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   140: aload_1
    //   141: invokevirtual 108	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   144: invokevirtual 35	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   147: invokestatic 237	java/lang/System:load	(Ljava/lang/String;)V
    //   150: iconst_1
    //   151: istore 5
    //   153: iload 5
    //   155: ifne +276 -> 431
    //   158: aload_1
    //   159: ldc 239
    //   161: invokevirtual 217	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   164: ifne +267 -> 431
    //   167: new 22	java/lang/StringBuilder
    //   170: dup
    //   171: aload_1
    //   172: invokestatic 225	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   175: invokespecial 27	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   178: ldc 239
    //   180: invokevirtual 108	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   183: invokevirtual 35	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   186: astore 6
    //   188: new 210	java/io/File
    //   191: dup
    //   192: new 22	java/lang/StringBuilder
    //   195: dup
    //   196: aload_2
    //   197: invokestatic 225	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   200: invokespecial 27	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   203: aload 6
    //   205: invokevirtual 108	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   208: invokevirtual 35	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   211: invokespecial 228	java/io/File:<init>	(Ljava/lang/String;)V
    //   214: invokevirtual 232	java/io/File:exists	()Z
    //   217: ifeq +28 -> 245
    //   220: new 22	java/lang/StringBuilder
    //   223: dup
    //   224: aload_2
    //   225: invokestatic 225	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   228: invokespecial 27	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   231: aload 6
    //   233: invokevirtual 108	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   236: invokevirtual 35	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   239: invokestatic 237	java/lang/System:load	(Ljava/lang/String;)V
    //   242: iconst_1
    //   243: istore 5
    //   245: iload 5
    //   247: ifne +150 -> 397
    //   250: aload 6
    //   252: ldc 241
    //   254: invokevirtual 244	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   257: ifne +140 -> 397
    //   260: new 22	java/lang/StringBuilder
    //   263: dup
    //   264: ldc 241
    //   266: invokespecial 27	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   269: aload 6
    //   271: invokevirtual 108	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   274: invokevirtual 35	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   277: astore 9
    //   279: new 210	java/io/File
    //   282: dup
    //   283: new 22	java/lang/StringBuilder
    //   286: dup
    //   287: aload_2
    //   288: invokestatic 225	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   291: invokespecial 27	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   294: aload 9
    //   296: invokevirtual 108	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   299: invokevirtual 35	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   302: invokespecial 228	java/io/File:<init>	(Ljava/lang/String;)V
    //   305: invokevirtual 232	java/io/File:exists	()Z
    //   308: ifeq +89 -> 397
    //   311: new 22	java/lang/StringBuilder
    //   314: dup
    //   315: aload_2
    //   316: invokestatic 225	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   319: invokespecial 27	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   322: aload 9
    //   324: invokevirtual 108	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   327: invokevirtual 35	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   330: invokestatic 237	java/lang/System:load	(Ljava/lang/String;)V
    //   333: iconst_1
    //   334: istore 7
    //   336: iload 7
    //   338: ifne +7 -> 345
    //   341: aload_1
    //   342: invokestatic 247	java/lang/System:loadLibrary	(Ljava/lang/String;)V
    //   345: iconst_1
    //   346: istore 4
    //   348: iload 4
    //   350: ireturn
    //   351: ldc 146
    //   353: astore_2
    //   354: goto -263 -> 91
    //   357: astore 13
    //   359: new 22	java/lang/StringBuilder
    //   362: dup
    //   363: ldc 249
    //   365: invokespecial 27	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   368: aload_0
    //   369: invokevirtual 252	android/content/Context:getPackageName	()Ljava/lang/String;
    //   372: invokevirtual 108	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   375: ldc 227
    //   377: invokevirtual 108	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   380: invokevirtual 35	java/lang/StringBuilder:toString	()Ljava/lang/String;
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
    //   413: invokestatic 247	java/lang/System:loadLibrary	(Ljava/lang/String;)V
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

  public static byte[] a(int paramInt)
  {
    byte[] arrayOfByte = new byte[4];
    arrayOfByte[0] = ((byte)paramInt);
    arrayOfByte[1] = ((byte)(paramInt >> 8));
    arrayOfByte[2] = ((byte)(paramInt >> 16));
    arrayOfByte[3] = ((byte)(paramInt >> 24));
    return arrayOfByte;
  }

  public static byte[] a(byte[] paramArrayOfByte, RSAPublicKey paramRSAPublicKey)
  {
    Object localObject = null;
    if (paramRSAPublicKey != null);
    try
    {
      Cipher localCipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
      localCipher.init(2, paramRSAPublicKey);
      byte[] arrayOfByte = localCipher.doFinal(paramArrayOfByte);
      localObject = arrayOfByte;
      return localObject;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        localObject = null;
      }
    }
  }

  public static String[] a(Context paramContext)
  {
    String[] arrayOfString = new String[4];
    arrayOfString[0] = Build.MODEL;
    arrayOfString[1] = Build.VERSION.RELEASE;
    String str = "";
    try
    {
      str = eu.b("/proc/cpuinfo").split("\\n")[0];
      arrayOfString[2] = str;
      arrayOfString[3] = (Integer.toString(paramContext.getResources().getDisplayMetrics().widthPixels) + "*" + Integer.toString(paramContext.getResources().getDisplayMetrics().heightPixels));
      return arrayOfString;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public static String b(Context paramContext, long paramLong)
  {
    boolean bool = paramLong < 0L;
    String str1 = null;
    if (!bool);
    while (true)
    {
      return str1;
      String str2 = paramContext.getString(2131099713);
      int i = (int)paramLong / 60000;
      int j = (int)(paramLong / 1000L) % 60;
      if (i > 0)
      {
        str1 = str2 + i + paramContext.getString(2131099661);
      }
      else
      {
        str1 = null;
        if (j > 0)
          str1 = str2 + j + paramContext.getString(2131099660);
      }
    }
  }

  public static boolean b(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    try
    {
      ApplicationInfo localApplicationInfo = localPackageManager.getApplicationInfo(paramContext.getPackageName(), 8192);
      bool = false;
      if (localApplicationInfo != null)
      {
        int i = localApplicationInfo.flags;
        int j = i & 0x1;
        bool = false;
        if (j != 0)
          bool = true;
      }
      return bool;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
      {
        localNameNotFoundException.printStackTrace();
        bool = false;
      }
    }
    catch (Exception localException)
    {
      while (true)
        boolean bool = false;
    }
  }

  private static long[] b(int paramInt)
  {
    String str = s.a.d().g(paramInt);
    long[] arrayOfLong = new long[34];
    if (str != null)
    {
      String[] arrayOfString = str.split(";");
      for (int i = 0; i < arrayOfString.length; i++)
        arrayOfLong[i] = Long.parseLong(arrayOfString[i]);
    }
    return arrayOfLong;
  }

  public static final class a
  {
    public static final int[] BatteryLevelScreenView = { 2130771984 };
    public static final int BatteryLevelScreenView_Level_gravity = 0;
    public static final int[] BatteryScreenView = { 2130771983 };
    public static final int BatteryScreenView_view_gravity = 0;
    public static final int[] ButtonView = { 2130771978, 2130771979, 2130771980 };
    public static final int ButtonView_buttontext = 1;
    public static final int ButtonView_buttontype = 0;
    public static final int ButtonView_textsize = 2;
    public static final int[] CheckBoxView = { 2130771968, 2130771969 };
    public static final int CheckBoxView_checked = 1;
    public static final int CheckBoxView_type = 0;
    public static final int[] CpuStatusView = { 2130771981, 2130771982 };
    public static final int CpuStatusView_cpuactive = 1;
    public static final int CpuStatusView_cputext = 0;
    public static final int[] SwitchButtonView = { 2130771974, 2130771975, 2130771976, 2130771977 };
    public static final int SwitchButtonView_iconnormal = 1;
    public static final int SwitchButtonView_iconpressed = 2;
    public static final int SwitchButtonView_name = 3;
    public static final int SwitchButtonView_postion = 0;
    public static final int[] TabButtonView = { 2130771970, 2130771971, 2130771972, 2130771973 };
    public static final int TabButtonView_active = 1;
    public static final int TabButtonView_activeicon = 2;
    public static final int TabButtonView_defaulticon = 3;
    public static final int TabButtonView_text;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     a
 * JD-Core Version:    0.6.2
 */