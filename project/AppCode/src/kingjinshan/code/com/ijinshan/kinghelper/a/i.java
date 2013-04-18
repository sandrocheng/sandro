package com.ijinshan.kinghelper.a;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build.VERSION;
import android.provider.Contacts.Phones;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.util.Log;
import com.ijinshan.kinghelper.firewall.core.g;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class i
{
  private static final String a = "12520";
  private static final String b = "17951";
  private static final String c = "17911";
  private static final String d = "17909";
  private static final String e = "12593";
  private static final String f = "11808";
  private static final String g = "10";
  private static final String h = "12";
  private static final String i = "9";
  private static final String j = "4";

  public static String a(String paramString)
  {
    String str2;
    if (TextUtils.isEmpty(paramString))
      str2 = "";
    while (true)
    {
      return str2;
      String str1 = paramString.replaceAll("[^0-9]", "");
      if (TextUtils.isEmpty(str1.trim()))
      {
        str2 = "";
      }
      else
      {
        str2 = str1.trim();
        int k = str2.length();
        if (k == 19)
        {
          if ((str2.indexOf("12520") != 0) || (str2.charAt(8) != '1'))
            break label199;
          str2 = str2.substring(8);
        }
        while (true)
          switch (str2.length())
          {
          case 6:
          case 8:
          case 9:
          case 10:
          case 11:
          case 14:
          default:
            break;
          case 5:
          case 7:
          case 13:
            if (!str2.startsWith("86"))
              break;
            str2 = str2.substring(2);
            break;
            if ((k == 16) && (str2.indexOf("12520") == 0) && (str2.charAt(5) == '1'))
              str2 = str2.substring(5);
            else
              label199: if ((k > 15) && ((str2.indexOf("17951") == 0) || (str2.indexOf("17911") == 0) || (str2.indexOf("17909") == 0) || (str2.indexOf("11808") == 0) || (str2.indexOf("12593") == 0)))
                str2 = str2.substring(5, k);
            break;
          case 15:
          case 12:
          }
        if (str2.startsWith("0086"))
        {
          str2 = str2.substring(4);
          continue;
          if (str2.startsWith("01"))
            str2 = str2.substring(1);
          else if (str2.startsWith("86"))
            str2 = str2.substring(2);
        }
      }
    }
  }

  private static boolean a(Context paramContext, String paramString)
  {
    boolean bool1;
    if (TextUtils.isEmpty(paramString))
      bool1 = false;
    while (true)
    {
      return bool1;
      if ((!TextUtils.isEmpty(paramString)) && (!PhoneNumberUtils.isGlobalPhoneNumber(paramString)))
      {
        bool1 = false;
      }
      else if (Integer.parseInt(Build.VERSION.SDK) > 4)
      {
        Uri localUri2 = Uri.withAppendedPath(e.c, Uri.encode(paramString));
        if (e.a(paramContext.getContentResolver(), localUri2) != null)
          bool1 = true;
        else
          bool1 = false;
      }
      else
      {
        Uri localUri1 = Uri.withAppendedPath(Contacts.Phones.CONTENT_FILTER_URL, Uri.encode(paramString));
        Cursor localCursor = paramContext.getContentResolver().query(localUri1, null, null, null, null);
        if (localCursor != null)
        {
          if (localCursor.getCount() > 0);
          for (boolean bool2 = true; ; bool2 = false)
          {
            localCursor.close();
            bool1 = bool2;
            break;
          }
        }
        bool1 = false;
      }
    }
  }

  public static boolean a(String paramString1, String paramString2)
  {
    String str1 = a(paramString1);
    String str2 = a(paramString2);
    if ((TextUtils.isEmpty(str1)) || (TextUtils.isEmpty(str2)));
    for (boolean bool = false; ; bool = str1.equals(str2))
      return bool;
  }

  private static boolean a(String paramString1, String paramString2, String paramString3)
  {
    boolean bool;
    if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2)))
      bool = false;
    while (true)
    {
      return bool;
      if (paramString1.indexOf(paramString3) < 0)
      {
        if (paramString2.indexOf(paramString1) >= 0)
          bool = true;
        else
          bool = false;
      }
      else
      {
        String[] arrayOfString = paramString1.split("\\" + paramString3);
        int k = arrayOfString.length;
        for (int m = 0; ; m++)
        {
          if (m >= k)
            break label119;
          String str = arrayOfString[m];
          if ((!TextUtils.isEmpty(str)) && (paramString2.indexOf(str) < 0))
          {
            bool = false;
            break;
          }
        }
        label119: bool = true;
      }
    }
  }

  public static String b(String paramString)
  {
    String str;
    if (paramString == null)
      str = "";
    while (true)
    {
      return str;
      int k = paramString.length();
      int m = k - 11;
      if (m > 0)
        str = paramString.substring(m, k);
      else
        str = paramString;
    }
  }

  public static boolean b(String paramString1, String paramString2)
  {
    boolean bool1;
    if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2)))
      bool1 = false;
    while (true)
    {
      return bool1;
      try
      {
        boolean bool2 = Pattern.compile(paramString1).matcher(paramString2).find();
        bool1 = bool2;
      }
      catch (Exception localException)
      {
        Log.e("zhangyong>>PhoneUtils>>matchRegular", "" + localException.getMessage(), localException);
        bool1 = false;
      }
    }
  }

  private static boolean b(String paramString1, String paramString2, String paramString3)
  {
    boolean bool;
    if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2)))
      bool = false;
    while (true)
    {
      return bool;
      label135: label140: label162: if (paramString1.indexOf(paramString3) < 0)
      {
        if (paramString2.indexOf(paramString1) >= 0)
          bool = true;
        else
          bool = false;
      }
      else
      {
        String[] arrayOfString = paramString1.split("\\" + paramString3);
        int k = arrayOfString.length;
        int m = 0;
        int n = 0;
        label80: if (m < k)
        {
          String str = arrayOfString[m];
          if (!TextUtils.isEmpty(str))
          {
            if (str.indexOf("^") >= 0)
              break label140;
            if (paramString2.indexOf(str) >= 0)
            {
              if (n != 0)
                break label135;
              n = 1;
            }
          }
          while (true)
          {
            m++;
            break label80;
            bool = true;
            break;
            if (a(str, paramString2, "^"))
            {
              if (n != 0)
                break label162;
              n = 1;
            }
          }
          bool = true;
        }
        else
        {
          bool = false;
        }
      }
    }
  }

  private static boolean c(String paramString)
  {
    if ((paramString == null) || ("".equals(paramString)));
    for (boolean bool = false; ; bool = Pattern.compile("^\\+?\\d+$").matcher(paramString).find())
      return bool;
  }

  public static boolean c(String paramString1, String paramString2)
  {
    String[] arrayOfString1 = d(paramString1, "@");
    String[] arrayOfString3;
    int k;
    if (arrayOfString1 != null)
    {
      arrayOfString3 = d(arrayOfString1[0], "*");
      if (arrayOfString3 == null)
        break label289;
      if ((Integer.valueOf(arrayOfString3[0]).intValue() == 0) && (Integer.valueOf(arrayOfString3[1]).intValue() == 0))
        k = 1;
    }
    while (true)
    {
      String str = arrayOfString1[1];
      label59: boolean bool3;
      if ((str.indexOf("#") < 0) && (!str.contains("&")))
      {
        boolean bool5 = b(arrayOfString1[1], paramString2, "*");
        if ((k == 0) || (!bool5))
          break label271;
        bool3 = false;
        label102: return bool3;
        if ((Integer.valueOf(arrayOfString3[0]).intValue() != 1) || (!com.ijinshan.kinghelper.firewall.core.e.a(paramString2).a))
          break label283;
      }
      label271: label283: for (int m = 1; ; m = 0)
      {
        if ((Integer.valueOf(arrayOfString3[1]).intValue() != 0) && (Integer.valueOf(arrayOfString3[1]).intValue() <= com.ijinshan.kinghelper.firewall.core.e.b(paramString2)))
        {
          k = 1;
          break;
          k = 1;
          str = paramString1;
          break label59;
          if (str.indexOf("&") == 0)
          {
            boolean bool4 = a(arrayOfString1[1].replace("&", ""), paramString2, "*");
            if ((k == 0) || (!bool4))
              break label271;
            bool3 = false;
            break label102;
          }
          String[] arrayOfString2 = d(str, "#");
          boolean bool1 = a(arrayOfString2[0], paramString2, "*");
          boolean bool2 = b(arrayOfString2[1], paramString2, "*");
          if ((k != 0) && (bool1) && (bool2))
          {
            bool3 = false;
            break label102;
          }
          bool3 = true;
          break label102;
        }
        k = m;
        break;
      }
      label289: k = 0;
    }
  }

  private static String d(String paramString)
  {
    int k = paramString.length();
    String str;
    if (k == 19)
    {
      if ((paramString.indexOf("12520") != 0) || (paramString.charAt(8) != '1'))
        break label74;
      str = paramString.substring(8);
    }
    while (true)
    {
      return str;
      if ((k == 16) && (paramString.indexOf("12520") == 0) && (paramString.charAt(5) == '1'))
        str = paramString.substring(5);
      else
        label74: if ((k > 15) && ((paramString.indexOf("17951") == 0) || (paramString.indexOf("17911") == 0) || (paramString.indexOf("17909") == 0) || (paramString.indexOf("11808") == 0) || (paramString.indexOf("12593") == 0)))
          str = paramString.substring(5, k);
        else
          str = paramString;
    }
  }

  private static String[] d(String paramString1, String paramString2)
  {
    String[] arrayOfString;
    if (TextUtils.isEmpty(paramString1))
      arrayOfString = null;
    while (true)
    {
      return arrayOfString;
      arrayOfString = paramString1.split("\\" + paramString2);
      if (arrayOfString.length != 2)
        arrayOfString = null;
    }
  }

  private static boolean e(String paramString)
  {
    boolean bool;
    if (TextUtils.isEmpty(paramString))
      bool = false;
    while (true)
    {
      return bool;
      if ((paramString.startsWith("10")) || (paramString.startsWith("12")) || (paramString.startsWith("9")) || (paramString.startsWith("4")))
        bool = true;
      else
        bool = false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.a.i
 * JD-Core Version:    0.6.2
 */