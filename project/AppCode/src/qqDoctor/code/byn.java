import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Environment;
import com.tencent.tmsecure.utils.SDKUtil;
import com.tencent.tmsecure.utils.ScriptHelper;
import java.lang.reflect.Method;

public final class byn
{
  private static int a = -1;
  private static int b = -1;
  private static int c = -1;

  static
  {
    try
    {
      di.a("android.content.pm.IPackageManager$Stub");
      b = di.a("TRANSACTION_getInstallLocation", -1);
      di.a("TRANSACTION_setInstallLocation", -1);
      a = di.a("TRANSACTION_movePackage", -1);
      return;
    }
    catch (ExceptionInInitializerError localExceptionInInitializerError)
    {
      while (true)
        localExceptionInInitializerError.getMessage();
    }
  }

  private static int a()
  {
    try
    {
      int i;
      if (c != -1)
        i = c;
      while (true)
      {
        return i;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(b);
        String str = ScriptHelper.runScript(new String[] { String.format("service call package %d", arrayOfObject) });
        String[] arrayOfString;
        if (str != null)
        {
          arrayOfString = str.split("[ ]+");
          int j = arrayOfString.length;
          if (j <= 3);
        }
        try
        {
          c = Integer.valueOf(arrayOfString[2]).intValue();
          i = c;
        }
        catch (NumberFormatException localNumberFormatException)
        {
          while (true)
            c = 0;
        }
      }
    }
    finally
    {
    }
  }

  public static boolean a(ApplicationInfo paramApplicationInfo)
  {
    if ((0x40000 & paramApplicationInfo.flags) != 0);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static boolean a(PackageInfo paramPackageInfo)
  {
    boolean bool1;
    if (SDKUtil.getSDKVersion() >= 14)
    {
      boolean bool2 = b();
      bool1 = false;
      if (!bool2);
    }
    while (true)
    {
      return bool1;
      int i = 0x40000 & paramPackageInfo.applicationInfo.flags;
      bool1 = false;
      if (i != 0)
        bool1 = true;
    }
  }

  public static boolean a(PackageInfo paramPackageInfo, boolean paramBoolean)
  {
    boolean bool1;
    if (SDKUtil.getSDKVersion() >= 14)
    {
      boolean bool2 = b();
      bool1 = false;
      if (!bool2);
    }
    while (true)
    {
      return bool1;
      int i;
      label37: int j;
      if ((0x40000 & paramPackageInfo.applicationInfo.flags) != 0)
      {
        i = 1;
        bool1 = false;
        if (i == 0)
          if ((0x1 & paramPackageInfo.applicationInfo.flags) != 0)
          {
            j = 1;
            label58: bool1 = false;
            if (j != 0)
              continue;
            if ((0x20000000 & paramPackageInfo.applicationInfo.flags) == 0)
              break label123;
          }
      }
      else
      {
        int m;
        label123: for (int k = 1; ; k = 0)
        {
          bool1 = false;
          if (k != 0)
            break;
          m = di.a(paramPackageInfo, "installLocation");
          if ((m != 2) && (m != 0))
            break label129;
          bool1 = true;
          break;
          i = 0;
          break label37;
          j = 0;
          break label58;
        }
        label129: if (((m != -1) || (a() != 2)) && (!ScriptHelper.providerSupportPmRelative()) && (!ScriptHelper.isSystemUid()))
        {
          bool1 = false;
          if (paramBoolean)
          {
            int n = ScriptHelper.canRunAtRoot();
            bool1 = false;
            if (n != 0);
          }
        }
        else
        {
          bool1 = true;
        }
      }
    }
  }

  public static boolean a(String paramString)
    throws PackageManager.NameNotFoundException
  {
    boolean bool = true;
    if (ScriptHelper.providerSupportPmRelative())
      bool = ScriptHelper.provider$24edfebd().i();
    while (true)
    {
      return bool;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(a);
      arrayOfObject[bool] = paramString;
      String str = String.format("service call package %d s16 %s i32 1", arrayOfObject);
      String[] arrayOfString = new String[bool];
      arrayOfString[0] = str;
      if (ScriptHelper.runScriptIfSystemUidOrAsRoot(arrayOfString) != 0)
        bool = false;
    }
  }

  private static boolean b()
  {
    try
    {
      boolean bool2 = ((Boolean)Environment.class.getMethod("isExternalStorageEmulated", new Class[0]).invoke(null, new Object[0])).booleanValue();
      bool1 = bool2;
      return bool1;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        boolean bool1 = true;
      }
    }
  }

  public static boolean b(String paramString)
    throws PackageManager.NameNotFoundException
  {
    boolean bool = true;
    if (ScriptHelper.providerSupportPmRelative())
      bool = ScriptHelper.provider$24edfebd().j();
    while (true)
    {
      return bool;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(a);
      arrayOfObject[bool] = paramString;
      String str = String.format("service call package %d s16 %s i32 2", arrayOfObject);
      String[] arrayOfString = new String[bool];
      arrayOfString[0] = str;
      if (ScriptHelper.runScriptIfSystemUidOrAsRoot(arrayOfString) != 0)
        bool = false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     byn
 * JD-Core Version:    0.6.2
 */