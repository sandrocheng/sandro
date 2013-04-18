package com.jxphone.mosecurity.d;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.ijinshan.kpref.t;
import com.jxphone.mosecurity.c.b;
import com.jxphone.mosecurity.c.c;
import com.jxphone.mosecurity.logic.a.d;
import com.jxphone.mosecurity.logic.h;
import com.keniu.security.a;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class k
{
  public static final int a = 0;
  public static final int b = 1;
  public static final int c = 2;
  public static final String d = "safe_password";
  public static final String e = "dummy_password";
  private static final String f = "password";
  private final Context g;

  private k(Context paramContext)
  {
    this.g = paramContext;
  }

  private int a(String paramString, boolean paramBoolean)
  {
    SharedPreferences localSharedPreferences = t.b(this.g);
    String str = d(paramString);
    int i;
    if (paramBoolean)
    {
      if (!paramString.equals(localSharedPreferences.getString("dummy_password", d(""))))
        break label68;
      i = 2;
    }
    while (true)
    {
      return i;
      if (str.equals(localSharedPreferences.getString("safe_password", "")))
        i = 1;
      else
        label68: i = 0;
    }
  }

  public static k a(Context paramContext)
  {
    SharedPreferences localSharedPreferences = t.b(paramContext);
    String str = localSharedPreferences.getString("password", null);
    if (str != null)
    {
      SharedPreferences.Editor localEditor = localSharedPreferences.edit();
      localEditor.remove("password");
      if (localSharedPreferences.getString("safe_password", null) == null)
        localEditor.putString("safe_password", d(str));
      localEditor.commit();
    }
    return new k(paramContext);
  }

  private static void b(Context paramContext)
  {
    SharedPreferences localSharedPreferences = t.b(paramContext);
    String str = localSharedPreferences.getString("password", null);
    if (str == null);
    while (true)
    {
      return;
      SharedPreferences.Editor localEditor = localSharedPreferences.edit();
      localEditor.remove("password");
      if (localSharedPreferences.getString("safe_password", null) == null)
        localEditor.putString("safe_password", d(str));
      localEditor.commit();
    }
  }

  public static String d(String paramString)
  {
    try
    {
      String str = URLEncoder.encode(new String(MessageDigest.getInstance("sha-1").digest(paramString.getBytes())));
      return str;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      throw new RuntimeException(localNoSuchAlgorithmException);
    }
  }

  public final int a(String paramString)
  {
    SharedPreferences localSharedPreferences = t.b(this.g);
    int i;
    if (d(paramString).equals(localSharedPreferences.getString("safe_password", d(""))))
      i = 1;
    while (true)
    {
      return i;
      if ((a.a(this.g).av()) && (paramString.equals(localSharedPreferences.getString("dummy_password", ""))))
        i = 2;
      else
        i = 0;
    }
  }

  public final boolean a()
  {
    if ((t.b(this.g).getString("safe_password", null) != null) || (a.a(this.g).av()));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean a(String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    boolean bool;
    if (!paramString2.equals(paramString3))
      bool = false;
    String str1;
    label45: label116: SharedPreferences.Editor localEditor;
    while (true)
    {
      return bool;
      if (TextUtils.isEmpty(paramString2))
      {
        bool = false;
      }
      else
      {
        SharedPreferences localSharedPreferences1 = t.b(this.g);
        SharedPreferences localSharedPreferences2;
        String str3;
        int i;
        if (paramBoolean)
        {
          str1 = "dummy_password";
          if (!a(paramBoolean))
            break label147;
          localSharedPreferences2 = t.b(this.g);
          str3 = d(paramString1);
          if (!paramBoolean)
            break label116;
          if (!paramString1.equals(localSharedPreferences2.getString("dummy_password", d(""))))
            break label141;
          i = 2;
        }
        while (true)
        {
          if (i != 0)
            break label147;
          bool = false;
          break;
          str1 = "safe_password";
          break label45;
          if (str3.equals(localSharedPreferences2.getString("safe_password", "")))
            i = 1;
          else
            label141: i = 0;
        }
        label147: localEditor = localSharedPreferences1.edit();
        if (paramString2.length() != 0)
          break;
        localEditor.remove(str1);
        localEditor.commit();
        bool = true;
      }
    }
    if (paramBoolean);
    for (String str2 = paramString2; ; str2 = d(paramString2))
    {
      localEditor.putString(str1, str2);
      break;
    }
  }

  public final boolean a(boolean paramBoolean)
  {
    SharedPreferences localSharedPreferences = t.b(this.g);
    String str;
    if (paramBoolean)
    {
      str = "dummy_password";
      if (localSharedPreferences.getString(str, null) == null)
        break label38;
    }
    label38: for (boolean bool = true; ; bool = false)
    {
      return bool;
      str = "safe_password";
      break;
    }
  }

  public final boolean b(String paramString)
  {
    b[] arrayOfb = h.c(this.g).b(c.b);
    int i = arrayOfb.length;
    int j = 0;
    if (j < i)
      if (!arrayOfb[j].c().equals(paramString));
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      j++;
      break;
    }
  }

  public final boolean c(String paramString)
  {
    SharedPreferences.Editor localEditor = t.b(this.g).edit();
    if (paramString.length() == 0)
      localEditor.remove("dummy_password");
    while (true)
    {
      return localEditor.commit();
      localEditor.putString("dummy_password", paramString);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.d.k
 * JD-Core Version:    0.6.2
 */