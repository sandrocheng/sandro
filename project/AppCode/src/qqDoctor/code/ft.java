import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.tmsecure.utils.SDKUtil;
import java.io.File;
import java.lang.reflect.Field;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class ft
{
  private static String a = "tms_";
  private static String b = "[com.android.internal.telephony.ITelephony]";
  private static String c = "[com.android.internal.telephony.ITelephonyRegistry]";
  private static Boolean d = null;

  public static String a()
  {
    return Build.MODEL;
  }

  public static String a(Context paramContext)
  {
    return ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
  }

  public static void a(ft.a parama)
  {
    if (Environment.getExternalStorageState().equals("mounted"))
      a(Environment.getExternalStorageDirectory(), parama);
    while (true)
    {
      return;
      parama.a = 0L;
      parama.b = 0L;
    }
  }

  private static void a(File paramFile, ft.a parama)
  {
    StatFs localStatFs = new StatFs(paramFile.getPath());
    long l = localStatFs.getBlockSize();
    parama.a = (l * localStatFs.getAvailableBlocks());
    parama.b = (l * localStatFs.getBlockCount());
  }

  public static void a(String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.DIAL", Uri.parse("tel:" + paramString));
    localIntent.setFlags(268435456);
    QQPimApplication.a().startActivity(localIntent);
  }

  public static String b()
  {
    if (SDKUtil.getSDKVersion() > 8);
    while (true)
    {
      try
      {
        str = (String)((Build)Class.forName("android.os.Build").newInstance()).getClass().getField("HARDWARE").get("UNKNOW");
        return str;
      }
      catch (SecurityException localSecurityException)
      {
        localSecurityException.printStackTrace();
        str = "UNKNOW";
        continue;
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        localClassNotFoundException.printStackTrace();
        str = "UNKNOW";
        continue;
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        localIllegalAccessException.printStackTrace();
        str = "UNKNOW";
        continue;
      }
      catch (InstantiationException localInstantiationException)
      {
        localInstantiationException.printStackTrace();
        str = "UNKNOW";
        continue;
      }
      catch (NoSuchFieldException localNoSuchFieldException)
      {
        localNoSuchFieldException.printStackTrace();
      }
      String str = "UNKNOW";
    }
  }

  public static String b(Context paramContext)
  {
    return ((TelephonyManager)paramContext.getSystemService("phone")).getLine1Number();
  }

  public static void b(ft.a parama)
  {
    a(Environment.getDataDirectory(), parama);
  }

  public static boolean b(String paramString)
  {
    boolean bool1 = false;
    if (paramString == null);
    while (true)
    {
      return bool1;
      boolean bool2 = paramString.startsWith("10086");
      bool1 = false;
      if (!bool2)
      {
        boolean bool3 = paramString.startsWith("1000");
        bool1 = false;
        if (!bool3)
        {
          boolean bool4 = paramString.startsWith("1001");
          bool1 = false;
          if (!bool4)
          {
            boolean bool5 = paramString.startsWith("106");
            bool1 = false;
            if (!bool5)
              bool1 = Pattern.compile("^1[0-9][0-9]\\d{8}$", 2).matcher(paramString).find();
          }
        }
      }
    }
  }

  public static String c()
  {
    String str = Build.MANUFACTURER;
    if (str == null)
      str = "UNKNOWN";
    return str;
  }

  public static String c(Context paramContext)
  {
    return ((TelephonyManager)paramContext.getSystemService("phone")).getSubscriberId();
  }

  public static int d()
  {
    Context localContext = QQPimApplication.a();
    TelephonyManager localTelephonyManager = (TelephonyManager)localContext.getSystemService("phone");
    int i;
    String str;
    int j;
    if (((TelephonyManager)localContext.getSystemService("phone")).getSimState() != 1)
    {
      i = 1;
      if (i == 0)
        break label132;
      str = localTelephonyManager.getSimOperator();
      if ((!str.equals("46000")) && (!str.equals("46002")) && (!str.equals("46007")))
        break label81;
      j = 0;
    }
    label132: 
    while (true)
    {
      return j;
      i = 0;
      break;
      label81: if (str.equals("46001"))
      {
        j = 1;
      }
      else if (str.equals("46003"))
      {
        j = 2;
      }
      else if (!str.equals(""))
      {
        j = -1;
      }
      else
      {
        j = -2;
        continue;
        j = -2;
      }
    }
  }

  public static int d(Context paramContext)
  {
    return paramContext.getResources().getDisplayMetrics().widthPixels;
  }

  public static int e(Context paramContext)
  {
    return paramContext.getResources().getDisplayMetrics().heightPixels;
  }

  public static boolean e()
  {
    if (d == null);
    try
    {
      String[] arrayOfString = a.a(new String[] { "service", "list" });
      if ((arrayOfString != null) && (arrayOfString.length > 0))
      {
        int i = arrayOfString.length;
        j = 0;
        k = 0;
        m = 0;
        if (j >= i)
          break label165;
        String str = arrayOfString[j];
        if (str.contains(a))
          break label159;
        if (str.contains(b))
        {
          m++;
          break label159;
        }
        if (!str.contains(c))
          break label159;
        k++;
        break label159;
        for (d = Boolean.valueOf(true); ; d = Boolean.valueOf(false))
        {
          if (d == null)
            d = Boolean.valueOf(false);
          return d.booleanValue();
        }
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        int j;
        int k;
        int m;
        d = Boolean.valueOf(false);
        continue;
        d = Boolean.valueOf(false);
        continue;
        label159: j++;
        continue;
        label165: if (m <= 1)
          if (k <= 1);
      }
    }
  }

  public static boolean f(Context paramContext)
  {
    if (((TelephonyManager)paramContext.getSystemService("phone")).getSimState() != 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static final class a
  {
    public long a;
    public long b;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ft
 * JD-Core Version:    0.6.2
 */