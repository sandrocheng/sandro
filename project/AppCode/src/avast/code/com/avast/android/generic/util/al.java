package com.avast.android.generic.util;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.style.StyleSpan;
import android.view.ContextThemeWrapper;
import com.avast.android.generic.aa;

public class al
{
  private static StyleSpan a = new StyleSpan(1);

  // ERROR //
  public static java.lang.StringBuilder a(Resources paramResources, int paramInt)
  {
    // Byte code:
    //   0: new 21	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 23	java/lang/StringBuilder:<init>	()V
    //   7: astore_2
    //   8: new 25	java/io/BufferedReader
    //   11: dup
    //   12: new 27	java/io/InputStreamReader
    //   15: dup
    //   16: aload_0
    //   17: iload_1
    //   18: invokevirtual 33	android/content/res/Resources:openRawResource	(I)Ljava/io/InputStream;
    //   21: invokespecial 36	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   24: invokespecial 39	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   27: astore_3
    //   28: aload_3
    //   29: invokevirtual 43	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   32: astore 7
    //   34: aload 7
    //   36: ifnull +32 -> 68
    //   39: aload_2
    //   40: aload 7
    //   42: invokevirtual 47	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   45: pop
    //   46: goto -18 -> 28
    //   49: astore 4
    //   51: aload_3
    //   52: invokevirtual 50	java/io/BufferedReader:close	()V
    //   55: aload 4
    //   57: athrow
    //   58: astore 5
    //   60: ldc 52
    //   62: invokestatic 58	com/avast/android/generic/util/m:f	(Ljava/lang/String;)I
    //   65: pop
    //   66: aload_2
    //   67: areturn
    //   68: aload_3
    //   69: invokevirtual 50	java/io/BufferedReader:close	()V
    //   72: goto -6 -> 66
    //
    // Exception table:
    //   from	to	target	type
    //   28	46	49	finally
    //   8	28	58	java/io/IOException
    //   51	58	58	java/io/IOException
    //   68	72	58	java/io/IOException
  }

  public static boolean a()
  {
    if (Build.VERSION.SDK_INT >= 11);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static boolean a(Context paramContext)
  {
    if ((0xF & paramContext.getResources().getConfiguration().screenLayout) >= 3);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static boolean b()
  {
    if (("LGE".equalsIgnoreCase(Build.BRAND)) || ("LG-".equalsIgnoreCase(Build.MODEL)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static boolean b(Context paramContext)
  {
    if ((a()) && (a(paramContext)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static boolean c(Context paramContext)
  {
    if (paramContext.getResources().getConfiguration().orientation == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static Context d(Context paramContext)
  {
    return new ContextThemeWrapper(paramContext, aa.d);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.util.al
 * JD-Core Version:    0.6.2
 */