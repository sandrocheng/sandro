package com.google.a.a.a;

import android.os.Build.VERSION;
import java.io.File;

class o
{
  public static int a()
  {
    try
    {
      int j = Integer.parseInt(Build.VERSION.SDK);
      i = j;
      return i;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      while (true)
      {
        aq.c("Invalid version number: " + Build.VERSION.SDK);
        int i = 0;
      }
    }
  }

  static boolean a(String paramString)
  {
    int i = a();
    boolean bool = false;
    if (i < 9);
    while (true)
    {
      return bool;
      File localFile = new File(paramString);
      localFile.setReadable(false, false);
      localFile.setWritable(false, false);
      localFile.setReadable(true, true);
      localFile.setWritable(true, true);
      bool = true;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.a.o
 * JD-Core Version:    0.6.2
 */