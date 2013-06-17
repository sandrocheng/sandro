package com.a.a.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.provider.Settings.Secure;

public class c
{
  private SharedPreferences a;
  private SharedPreferences.Editor b;
  private d c = null;

  public c(Context paramContext, String paramString, int paramInt, boolean paramBoolean)
  {
    if (paramContext == null)
    {
      com.avg.toolkit.f.a.a("context == null");
      this.a = null;
      this.b = null;
    }
    while (true)
    {
      return;
      this.a = paramContext.getSharedPreferences(paramString, paramInt);
      if (this.a == null)
      {
        com.avg.toolkit.f.a.a("SharedPreferences == null");
        this.b = null;
      }
      else
      {
        this.b = this.a.edit();
        byte[] arrayOfByte = { -46, 65, 33, -118, -103, -57, 74, -62, 56, 88, -95, -55, 77, -113, -36, -123, -111, 22, -94, 29 };
        String str1 = paramContext.getPackageName();
        try
        {
          String str4 = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
          str2 = str4;
          if (str2 == null)
            str2 = "noid";
          str3 = str2 + String.valueOf(65);
          if (paramBoolean)
            this.c = new b(arrayOfByte, str1, str3);
        }
        catch (Exception localException)
        {
          String str3;
          while (true)
          {
            com.avg.toolkit.f.a.a(localException);
            String str2 = null;
          }
          this.c = new a(arrayOfByte, str1, str3);
        }
      }
    }
  }

  public int a(String paramString, int paramInt)
  {
    if (this.a == null)
      com.avg.toolkit.f.a.a("SharedPreferences == null");
    for (int i = -1; ; i = this.a.getInt(paramString, paramInt))
      return i;
  }

  public long a(String paramString, long paramLong)
  {
    if (this.a == null)
      com.avg.toolkit.f.a.a("SharedPreferences == null");
    for (long l = -1L; ; l = this.a.getLong(paramString, paramLong))
      return l;
  }

  public String a(String paramString1, String paramString2)
  {
    if (this.a == null)
    {
      com.avg.toolkit.f.a.a("SharedPreferences == null");
      paramString2 = "Error";
    }
    while (true)
    {
      return paramString2;
      String str1 = this.a.getString(paramString1, null);
      if (str1 != null)
        try
        {
          String str2 = this.c.b(str1);
          paramString2 = str2;
        }
        catch (e locale)
        {
          com.avg.toolkit.f.a.a("Can't unobfuscate from the key: " + paramString1 + " Error: " + locale.getMessage());
        }
    }
  }

  public boolean a()
  {
    try
    {
      if (this.b == null)
        com.avg.toolkit.f.a.a("SharedPreferencesEditor == null");
      boolean bool1;
      for (boolean bool2 = false; ; bool2 = bool1)
      {
        return bool2;
        bool1 = this.b.commit();
      }
    }
    finally
    {
    }
  }

  public boolean a(String paramString)
  {
    try
    {
      if (this.b == null)
        com.avg.toolkit.f.a.a("SharedPreferencesEditor == null");
      for (boolean bool = false; ; bool = true)
      {
        return bool;
        this.b.remove(paramString);
      }
    }
    finally
    {
    }
  }

  public boolean a(String paramString, boolean paramBoolean)
  {
    if (this.a == null)
      com.avg.toolkit.f.a.a("SharedPreferences == null");
    for (boolean bool = false; ; bool = this.a.getBoolean(paramString, paramBoolean))
      return bool;
  }

  public SharedPreferences.Editor b(String paramString, int paramInt)
  {
    if (this.b == null)
      com.avg.toolkit.f.a.a("SharedPreferencesEditor == null");
    for (SharedPreferences.Editor localEditor = null; ; localEditor = this.b.putInt(paramString, paramInt))
      return localEditor;
  }

  public SharedPreferences.Editor b(String paramString, long paramLong)
  {
    if (this.b == null)
      com.avg.toolkit.f.a.a("SharedPreferencesEditor == null");
    for (SharedPreferences.Editor localEditor = null; ; localEditor = this.b.putLong(paramString, paramLong))
      return localEditor;
  }

  public SharedPreferences.Editor b(String paramString1, String paramString2)
  {
    try
    {
      if (this.b == null)
        com.avg.toolkit.f.a.a("SharedPreferencesEditor == null");
      SharedPreferences.Editor localEditor;
      for (Object localObject2 = null; ; localObject2 = localEditor)
      {
        return localObject2;
        String str = this.c.a(paramString2);
        localEditor = this.b.putString(paramString1, str);
      }
    }
    finally
    {
    }
  }

  public SharedPreferences.Editor b(String paramString, boolean paramBoolean)
  {
    if (this.b == null)
      com.avg.toolkit.f.a.a("SharedPreferencesEditor == null");
    for (SharedPreferences.Editor localEditor = null; ; localEditor = this.b.putBoolean(paramString, paramBoolean))
      return localEditor;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.a.a.a.c
 * JD-Core Version:    0.6.2
 */