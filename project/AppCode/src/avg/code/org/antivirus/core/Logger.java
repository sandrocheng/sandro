package org.antivirus.core;

import android.content.Context;
import android.util.Log;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Logger
{
  private static boolean a = false;
  private static int b = 0;
  private static Context c;
  public static final String c_logFile = "av.log";
  public static final String c_tag = "Antivirus";
  public static boolean mLogExceptions = false;

  private static void a()
  {
    c.deleteFile("av.log");
  }

  private static void a(String paramString)
  {
    if (paramString == null);
    FileOutputStream localFileOutputStream;
    while (true)
    {
      return;
      if (b > 10485760)
      {
        a();
        b = 0;
      }
      localFileOutputStream = null;
      try
      {
        localFileOutputStream = c.openFileOutput("av.log", 32768);
        if (localFileOutputStream != null)
          localFileOutputStream.write((paramString + "\n").getBytes());
        if (localFileOutputStream != null);
        try
        {
          localFileOutputStream.close();
          b += paramString.length();
        }
        catch (IOException localIOException3)
        {
          while (true)
            log(localIOException3);
        }
      }
      catch (Exception localException)
      {
        while (true)
        {
          log(localException);
          if (localFileOutputStream != null)
            try
            {
              localFileOutputStream.close();
            }
            catch (IOException localIOException2)
            {
              log(localIOException2);
            }
        }
      }
      finally
      {
        if (localFileOutputStream == null);
      }
    }
    try
    {
      localFileOutputStream.close();
      throw localObject;
    }
    catch (IOException localIOException1)
    {
      while (true)
        log(localIOException1);
    }
  }

  private static String b()
  {
    try
    {
      StackTraceElement localStackTraceElement = java.lang.Thread.currentThread().getStackTrace()[4];
      String str2 = localStackTraceElement.getClassName();
      int i = str2.lastIndexOf('.');
      if (i >= 0)
      {
        int j = str2.lastIndexOf('.', i - 1);
        if (j >= 0)
        {
          int k = str2.lastIndexOf('.', j - 1);
          if (k >= 0)
            str2 = str2.substring(k + 1);
        }
      }
      String str3 = localStackTraceElement.getMethodName();
      String str4 = str2 + "." + str3;
      str1 = str4;
      return str1;
    }
    catch (Exception localException)
    {
      while (true)
        String str1 = "unknown";
    }
  }

  public static void debug(String paramString)
  {
  }

  public static void debug(String paramString1, String paramString2)
  {
  }

  public static void error(String paramString)
  {
    if (mLogExceptions)
    {
      String str = b() + ": " + paramString;
      Log.e("Antivirus", str);
      if (a)
        a(str);
    }
  }

  public static void errorBadAgrument()
  {
    if (mLogExceptions)
    {
      String str = b() + ": bad argument";
      Log.e("Antivirus", str);
      if (a)
        a(str);
    }
  }

  public static String getCallerClassAndMethodName()
  {
    try
    {
      StackTraceElement localStackTraceElement = java.lang.Thread.currentThread().getStackTrace()[4];
      String str2 = localStackTraceElement.getClassName();
      String str3 = localStackTraceElement.getMethodName();
      String str4 = str2 + "." + str3;
      str1 = str4;
      return str1;
    }
    catch (Exception localException)
    {
      while (true)
        String str1 = "unknown";
    }
  }

  public static void log(Exception paramException)
  {
    StringBuilder localStringBuilder;
    String str2;
    String str3;
    if (mLogExceptions)
    {
      localStringBuilder = new StringBuilder();
      if (paramException != null)
      {
        str2 = paramException.getMessage();
        if (str2 == null)
          break label108;
        localStringBuilder.append(str2);
        localStringBuilder.append('\n');
        str3 = Log.getStackTraceString(paramException);
        if (str3 == null)
          break label115;
      }
    }
    while (true)
    {
      localStringBuilder.append(str3);
      String str1 = b() + ": " + localStringBuilder.toString();
      Log.e("Antivirus", str1);
      if (a)
        a(str1);
      return;
      label108: str2 = "null msg";
      break;
      label115: str3 = "null StackTrace";
    }
  }

  public static void log(Throwable paramThrowable)
  {
    StringBuilder localStringBuilder;
    String str2;
    String str3;
    if (mLogExceptions)
    {
      localStringBuilder = new StringBuilder();
      if (paramThrowable != null)
      {
        str2 = paramThrowable.getMessage();
        if (str2 == null)
          break label108;
        localStringBuilder.append(str2);
        localStringBuilder.append('\n');
        str3 = Log.getStackTraceString(paramThrowable);
        if (str3 == null)
          break label115;
      }
    }
    while (true)
    {
      localStringBuilder.append(str3);
      String str1 = b() + ": " + localStringBuilder.toString();
      Log.e("Antivirus", str1);
      if (a)
        a(str1);
      return;
      label108: str2 = "null msg";
      break;
      label115: str3 = "null StackTrace";
    }
  }

  public static void logFuncBegin()
  {
  }

  public static void logFuncEnd()
  {
  }

  public static void logWarning(Exception paramException)
  {
  }

  public static void setContext(Context paramContext)
  {
    c = paramContext;
  }

  public static void setSaveToFile(boolean paramBoolean)
  {
    boolean bool = paramBoolean | a;
    a = bool;
    if (bool);
    try
    {
      String str = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss").format(new Date(System.currentTimeMillis()));
      a("Log started at " + str);
      while (true)
      {
        label56: return;
        a();
      }
    }
    catch (Exception localException)
    {
      break label56;
    }
  }

  public static void warning(String paramString)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.Logger
 * JD-Core Version:    0.6.2
 */