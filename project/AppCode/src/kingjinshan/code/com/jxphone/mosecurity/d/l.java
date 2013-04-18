package com.jxphone.mosecurity.d;

import android.os.Build;

public final class l
{
  public static String a = Build.MODEL;
  public static boolean b = a();
  public static boolean c;

  static
  {
    String str1 = Build.MODEL;
    if (str1 != null)
    {
      String str2 = str1.toUpperCase();
      if ((!str2.equals("XT800")) && (!str2.equals("XT800+")) && (!str2.equals("XT806")) && (!str2.equals("XT882")));
    }
    for (boolean bool = true; ; bool = false)
    {
      c = bool;
      return;
    }
  }

  public static boolean a()
  {
    String str1 = Build.DISPLAY;
    boolean bool;
    if ((str1 != null) && (str1.toUpperCase().contains("MIUI")))
      bool = true;
    while (true)
    {
      return bool;
      String str2 = Build.MODEL;
      if ((str2 != null) && (str2.contains("MI-ONE")))
      {
        bool = true;
      }
      else
      {
        String str3 = Build.DEVICE;
        if ((str3 != null) && (str3.contains("mione")))
        {
          bool = true;
        }
        else
        {
          String str4 = Build.MANUFACTURER;
          if ((str4 != null) && (str4.equalsIgnoreCase("Xiaomi")))
          {
            bool = true;
          }
          else
          {
            String str5 = Build.PRODUCT;
            if ((str5 != null) && (str5.contains("mione")))
              bool = true;
            else
              bool = false;
          }
        }
      }
    }
  }

  public static boolean b()
  {
    String str = Build.MODEL;
    if ((str != null) && ((str.compareToIgnoreCase("XT800") == 0) || (str.compareToIgnoreCase("XT800+") == 0) || (str.compareToIgnoreCase("XT806") == 0) || (str.compareToIgnoreCase("XT882") == 0)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static boolean c()
  {
    boolean bool;
    if (c)
      bool = true;
    while (true)
    {
      return bool;
      String str1 = Build.MODEL;
      if (str1 != null)
      {
        String str2 = str1.toLowerCase();
        if ((str2.contains("c8500")) || (str2.contains("c8650")))
          bool = true;
      }
      else
      {
        bool = false;
      }
    }
  }

  public static boolean d()
  {
    String str1 = Build.MODEL;
    boolean bool1 = false;
    if (str1 != null)
    {
      String str2 = str1.toUpperCase();
      if ((!str2.equals("C8650")) && (!str2.equals("C8800")))
      {
        boolean bool2 = a();
        bool1 = false;
        if (!bool2);
      }
      else
      {
        bool1 = true;
      }
    }
    return bool1;
  }

  private static boolean e()
  {
    if ((a != null) && (a.compareToIgnoreCase("GT-I9000") == 0));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private static boolean f()
  {
    String str1 = Build.MODEL;
    if (str1 != null)
    {
      String str2 = str1.toUpperCase();
      if ((!str2.equals("XT800")) && (!str2.equals("XT800+")) && (!str2.equals("XT806")) && (!str2.equals("XT882")));
    }
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private static boolean g()
  {
    String str = Build.MODEL;
    boolean bool1 = false;
    if (str != null)
    {
      boolean bool2 = str.toUpperCase().equals("ZTE-T U880");
      bool1 = false;
      if (bool2)
        bool1 = true;
    }
    return bool1;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.d.l
 * JD-Core Version:    0.6.2
 */