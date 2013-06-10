package org.antivirus.core.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.io.StringReader;
import org.a.a.a.b.a;

public final class s
  implements Thread.UncaughtExceptionHandler
{
  private Thread.UncaughtExceptionHandler a = Thread.getDefaultUncaughtExceptionHandler();
  private Context b;

  public s(Context paramContext)
  {
    this.b = paramContext;
  }

  public final void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramThrowable.printStackTrace(new PrintStream(localByteArrayOutputStream));
    String str1 = new String(localByteArrayOutputStream.toByteArray());
    Throwable localThrowable = paramThrowable;
    String str2 = str1;
    while (localThrowable != null)
    {
      if ((localThrowable.getMessage() != null) && (!localThrowable.getMessage().equals("")))
        str2 = str2.replaceFirst(localThrowable.getMessage(), "");
      localThrowable = localThrowable.getCause();
    }
    BufferedReader localBufferedReader = new BufferedReader(new StringReader(str2), 8192);
    StringBuilder localStringBuilder = new StringBuilder(str2.length());
    while (true)
    {
      String str5;
      try
      {
        str5 = localBufferedReader.readLine();
        if (str5 != null)
        {
          if ((!str5.startsWith("\tat ")) || (str5.startsWith("\tat " + this.b.getPackageName())))
            break label317;
          localStringBuilder.append('\n').append(str5.replaceFirst("java:[0-9]*\\)", "java)"));
          continue;
        }
      }
      catch (IOException localIOException)
      {
        String str3 = a.c(localStringBuilder.toString().getBytes());
        String str4 = TextUtils.htmlEncode(str1);
        SharedPreferences localSharedPreferences = this.b.getSharedPreferences("eeexlfnl", 0);
        if (localSharedPreferences.getString(str3, "").equals(""))
        {
          localSharedPreferences.edit().putString(str3, str4).commit();
          this.b.getSharedPreferences("eeexlfn", 0).edit().putString(str3, str4).commit();
        }
        this.a.uncaughtException(paramThread, paramThrowable);
        return;
      }
      label317: if (localStringBuilder.length() == 0)
        localStringBuilder.append(str5);
      else
        localStringBuilder.append('\n').append(str5);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.a.s
 * JD-Core Version:    0.6.2
 */