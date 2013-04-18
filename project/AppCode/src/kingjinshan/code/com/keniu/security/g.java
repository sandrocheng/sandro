package com.keniu.security;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.SystemProperties;
import android.telephony.TelephonyManager;
import com.ijinshan.kinghelper.firewall.dd;
import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;

public final class g
  implements Thread.UncaughtExceptionHandler
{
  private static final int a = 3;
  private static final String b = "/sdcard/mosecurity/";
  private static Thread.UncaughtExceptionHandler c;
  private static boolean d = false;
  private static g e;
  private static String f;
  private static String g;
  private static int h = 0;

  public static g a()
  {
    try
    {
      if (e == null)
        e = new g();
      g localg = e;
      return localg;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void a(Throwable paramThrowable)
  {
    try
    {
      dd.a(MoSecurityApplication.a());
      dd.a(System.currentTimeMillis());
      a(false);
      String str1 = new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date());
      File localFile = new File("/sdcard/mosecurity/");
      if (!localFile.exists())
        localFile.mkdir();
      FileWriter localFileWriter = new FileWriter(new File("/sdcard/mosecurity/crash_" + str1 + ".txt"));
      localFileWriter.write("-----infromation----\n");
      StringBuilder localStringBuilder = new StringBuilder().append("me=").append(g).append("\nappflags=").append(String.valueOf(h)).append("\ndebug=");
      if ((0x2 & h) != 0)
      {
        bool = true;
        localFileWriter.write(String.valueOf(bool) + "\nimei=" + f + "\nboard=" + SystemProperties.get("ro.product.board", "unknown") + "\nbootloader=" + SystemProperties.get("ro.bootloader", "unknown") + "\nbrand=" + SystemProperties.get("ro.product.brand", "unknown") + "\ncpu_abi=" + SystemProperties.get("ro.product.cpu.abi", "unknown") + "\ncpu_abi2=" + SystemProperties.get("ro.product.cpu.abi2", "unknown") + "\ndevice=" + SystemProperties.get("ro.product.device", "unknown") + "\ndisplay=" + SystemProperties.get("ro.build.display.id", "unknown") + "\nfingerprint=" + SystemProperties.get("ro.build.fingerprint", "unknown") + "\nhardware=" + SystemProperties.get("ro.hardware", "unknown") + "\nhost=" + SystemProperties.get("ro.build.host", "unknown") + "\nid=" + SystemProperties.get("ro.build.id", "unknown") + "\nmanufacturer=" + SystemProperties.get("ro.product.manufacturer", "unknown") + "\nmodel=" + SystemProperties.get("ro.product.model", "unknown") + "\nproduct=" + SystemProperties.get("ro.product.name", "unknown") + "\nradio=" + SystemProperties.get("gsm.version.baseband", "unknown") + "\ntags=" + SystemProperties.get("ro.build.tags", "unknown") + "\ntype=" + SystemProperties.get("ro.build.type", "unknown") + "\nuser=" + SystemProperties.get("ro.build.user", "unknown") + "\ncodename=" + SystemProperties.get("ro.build.version.codename", "unknown") + "\nincremental=" + SystemProperties.get("ro.build.version.incremental", "unknown") + "\nrelease=" + SystemProperties.get("ro.build.version.release", "unknown") + "\nsdk=" + SystemProperties.get("ro.build.version.sdk", "unknown"));
        localFileWriter.write("\n\n----exception localized message----\n");
        String str2 = paramThrowable.getLocalizedMessage();
        if (str2 != null)
          localFileWriter.write(str2);
        localFileWriter.write("\n\n----exception stack trace----\n");
        PrintWriter localPrintWriter = new PrintWriter(localFileWriter);
        for (Throwable localThrowable = paramThrowable; localThrowable != null; localThrowable = localThrowable.getCause())
          localThrowable.printStackTrace(localPrintWriter);
        localPrintWriter.close();
        localFileWriter.close();
        return;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        continue;
        boolean bool = false;
      }
    }
  }

  public static boolean b()
  {
    if ((0x2 & h) != 0);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final void a(Context paramContext)
  {
    if (!d)
    {
      d = true;
      f = "";
      g = "";
      h = 0;
    }
    try
    {
      c = Thread.getDefaultUncaughtExceptionHandler();
      Thread.setDefaultUncaughtExceptionHandler(this);
      g = e.a(paramContext);
      f = ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
      ApplicationInfo localApplicationInfo = paramContext.getApplicationInfo();
      if (localApplicationInfo != null)
        h = localApplicationInfo.flags;
      return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        f = "";
        g = "";
      }
    }
  }

  public final void a(boolean paramBoolean)
  {
    int i = 0;
    File[] arrayOfFile = c();
    if (arrayOfFile != null)
    {
      if (paramBoolean)
        for (int k = 0; k < arrayOfFile.length; k++)
          arrayOfFile[k].delete();
      if (arrayOfFile.length > 3)
      {
        int j = arrayOfFile.length - 3;
        while (i < j)
        {
          arrayOfFile[i].delete();
          i++;
        }
      }
    }
  }

  public final File[] c()
  {
    File localFile = new File("/sdcard/mosecurity/");
    File[] arrayOfFile2;
    if (localFile.exists())
    {
      String[] arrayOfString = localFile.list(new h(this));
      if ((arrayOfString != null) && (arrayOfString.length != 0))
      {
        Arrays.sort(arrayOfString, new i(this));
        arrayOfFile2 = new File[arrayOfString.length];
        for (int i = 0; i < arrayOfString.length; i++)
          arrayOfFile2[i] = new File("/sdcard/mosecurity/" + arrayOfString[i]);
      }
    }
    for (File[] arrayOfFile1 = arrayOfFile2; ; arrayOfFile1 = null)
      return arrayOfFile1;
  }

  public final void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    try
    {
      dd.a(MoSecurityApplication.a());
      dd.a(System.currentTimeMillis());
      a(false);
      String str1 = new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date());
      File localFile = new File("/sdcard/mosecurity/");
      if (!localFile.exists())
        localFile.mkdir();
      FileWriter localFileWriter = new FileWriter(new File("/sdcard/mosecurity/crash_" + str1 + ".txt"));
      localFileWriter.write("-----infromation----\n");
      StringBuilder localStringBuilder = new StringBuilder().append("me=").append(g).append("\nappflags=").append(String.valueOf(h)).append("\ndebug=");
      if ((0x2 & h) != 0)
      {
        bool = true;
        localFileWriter.write(String.valueOf(bool) + "\nimei=" + f + "\nboard=" + SystemProperties.get("ro.product.board", "unknown") + "\nbootloader=" + SystemProperties.get("ro.bootloader", "unknown") + "\nbrand=" + SystemProperties.get("ro.product.brand", "unknown") + "\ncpu_abi=" + SystemProperties.get("ro.product.cpu.abi", "unknown") + "\ncpu_abi2=" + SystemProperties.get("ro.product.cpu.abi2", "unknown") + "\ndevice=" + SystemProperties.get("ro.product.device", "unknown") + "\ndisplay=" + SystemProperties.get("ro.build.display.id", "unknown") + "\nfingerprint=" + SystemProperties.get("ro.build.fingerprint", "unknown") + "\nhardware=" + SystemProperties.get("ro.hardware", "unknown") + "\nhost=" + SystemProperties.get("ro.build.host", "unknown") + "\nid=" + SystemProperties.get("ro.build.id", "unknown") + "\nmanufacturer=" + SystemProperties.get("ro.product.manufacturer", "unknown") + "\nmodel=" + SystemProperties.get("ro.product.model", "unknown") + "\nproduct=" + SystemProperties.get("ro.product.name", "unknown") + "\nradio=" + SystemProperties.get("gsm.version.baseband", "unknown") + "\ntags=" + SystemProperties.get("ro.build.tags", "unknown") + "\ntype=" + SystemProperties.get("ro.build.type", "unknown") + "\nuser=" + SystemProperties.get("ro.build.user", "unknown") + "\ncodename=" + SystemProperties.get("ro.build.version.codename", "unknown") + "\nincremental=" + SystemProperties.get("ro.build.version.incremental", "unknown") + "\nrelease=" + SystemProperties.get("ro.build.version.release", "unknown") + "\nsdk=" + SystemProperties.get("ro.build.version.sdk", "unknown"));
        localFileWriter.write("\n\n----exception localized message----\n");
        String str2 = paramThrowable.getLocalizedMessage();
        if (str2 != null)
          localFileWriter.write(str2);
        localFileWriter.write("\n\n----exception stack trace----\n");
        PrintWriter localPrintWriter = new PrintWriter(localFileWriter);
        for (Throwable localThrowable = paramThrowable; localThrowable != null; localThrowable = localThrowable.getCause())
          localThrowable.printStackTrace(localPrintWriter);
        localPrintWriter.close();
        localFileWriter.close();
        if (c != null)
          c.uncaughtException(paramThread, paramThrowable);
        return;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        continue;
        boolean bool = false;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.g
 * JD-Core Version:    0.6.2
 */