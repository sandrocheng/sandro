package com.avg.toolkit.f;

import android.content.Context;
import android.util.Log;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class a
{
  public static boolean a = false;
  private static boolean b = false;
  private static int c = 0;
  private static Context d;

  public static void a()
  {
    if (a)
    {
      String str = c() + ": bad argument";
      Log.e("Antivirus", str);
      if (b)
        b(str);
    }
  }

  public static void a(Context paramContext)
  {
    d = paramContext;
  }

  public static void a(Exception paramException)
  {
    StringBuilder localStringBuilder;
    String str2;
    String str3;
    if (a)
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
      String str1 = c() + ": " + localStringBuilder.toString();
      Log.e("Antivirus", str1);
      if (b)
        b(str1);
      return;
      label108: str2 = "null msg";
      break;
      label115: str3 = "null StackTrace";
    }
  }

  public static void a(String paramString)
  {
    if (a)
    {
      String str = c() + ": " + paramString;
      Log.e("Antivirus", str);
      if (b)
        b(str);
    }
  }

  public static void a(Throwable paramThrowable)
  {
    StringBuilder localStringBuilder;
    String str2;
    String str3;
    if (a)
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
      String str1 = c() + ": " + localStringBuilder.toString();
      Log.e("Antivirus", str1);
      if (b)
        b(str1);
      return;
      label108: str2 = "null msg";
      break;
      label115: str3 = "null StackTrace";
    }
  }

  public static void a(boolean paramBoolean)
  {
    b = paramBoolean | b;
    if (b);
    try
    {
      String str = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss", Locale.ENGLISH).format(new Date(System.currentTimeMillis()));
      b("Log started at " + str);
      while (true)
      {
        label62: return;
        b();
      }
    }
    catch (Exception localException)
    {
      break label62;
    }
  }

  private static void b()
  {
    d.deleteFile("av.log");
  }

  private static void b(String paramString)
  {
    if (paramString == null);
    FileOutputStream localFileOutputStream;
    while (true)
    {
      return;
      if (c > 10485760)
      {
        b();
        c = 0;
      }
      localFileOutputStream = null;
      try
      {
        localFileOutputStream = d.openFileOutput("av.log", 32768);
        if (localFileOutputStream != null)
          localFileOutputStream.write((paramString + "\n").getBytes());
        if (localFileOutputStream != null);
        try
        {
          localFileOutputStream.close();
          c += paramString.length();
        }
        catch (IOException localIOException3)
        {
          while (true)
            a(localIOException3);
        }
      }
      catch (Exception localException)
      {
        while (true)
        {
          a(localException);
          if (localFileOutputStream != null)
            try
            {
              localFileOutputStream.close();
            }
            catch (IOException localIOException2)
            {
              a(localIOException2);
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
        a(localIOException1);
    }
  }

  private static String c()
  {
    try
    {
      StackTraceElement localStackTraceElement = java.lang.Thread.currentThread().getStackTrace()[4];
      String str2 = localStackTraceElement.getClassName();
      int i = str2.lastIndexOf('.');
      if (i > -1)
      {
        int j = str2.lastIndexOf('.', i - 1);
        if (j > -1)
        {
          int k = str2.lastIndexOf('.', j - 1);
          if (k > -1)
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
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.toolkit.f.a
 * JD-Core Version:    0.6.2
 */