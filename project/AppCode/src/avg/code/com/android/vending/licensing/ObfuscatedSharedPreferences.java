package com.android.vending.licensing;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.provider.Settings.Secure;
import org.antivirus.core.Logger;

public class ObfuscatedSharedPreferences
{
  private Obfuscator mObfuscator = null;
  private SharedPreferences mSp;
  private SharedPreferences.Editor mSpEditor;

  public ObfuscatedSharedPreferences(Context paramContext, String paramString, int paramInt, boolean paramBoolean)
  {
    if (paramContext == null)
    {
      Logger.error("context == null");
      this.mSp = null;
      this.mSpEditor = null;
    }
    while (true)
    {
      return;
      this.mSp = paramContext.getSharedPreferences(paramString, paramInt);
      if (this.mSp == null)
      {
        Logger.error("SharedPreferences == null");
        this.mSpEditor = null;
      }
      else
      {
        this.mSpEditor = this.mSp.edit();
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
            this.mObfuscator = new AESObfuscatorLite(arrayOfByte, str1, str3);
        }
        catch (Exception localException)
        {
          String str3;
          while (true)
          {
            Logger.log(localException);
            String str2 = null;
          }
          this.mObfuscator = new AESObfuscator(arrayOfByte, str1, str3);
        }
      }
    }
  }

  public boolean commit()
  {
    try
    {
      if (this.mSpEditor == null)
        Logger.error("SharedPreferencesEditor == null");
      boolean bool1;
      for (boolean bool2 = false; ; bool2 = bool1)
      {
        return bool2;
        bool1 = this.mSpEditor.commit();
      }
    }
    finally
    {
    }
  }

  public String getString(String paramString1, String paramString2)
  {
    if (this.mSp == null)
    {
      Logger.error("SharedPreferences == null");
      paramString2 = "Error";
    }
    while (true)
    {
      return paramString2;
      String str1 = this.mSp.getString(paramString1, null);
      if (str1 != null)
        try
        {
          String str2 = this.mObfuscator.unobfuscate(str1);
          paramString2 = str2;
        }
        catch (ValidationException localValidationException)
        {
          Logger.error("Can't unobfuscate from the key: " + paramString1 + " Error: " + localValidationException.getMessage());
        }
    }
  }

  public boolean getUnObfuscatedBoolean(String paramString, boolean paramBoolean)
  {
    if (this.mSp == null)
      Logger.error("SharedPreferences == null");
    for (boolean bool = false; ; bool = this.mSp.getBoolean(paramString, paramBoolean))
      return bool;
  }

  public float getUnObfuscatedFloat(String paramString, float paramFloat)
  {
    if (this.mSp == null)
      Logger.error("SharedPreferences == null");
    for (float f = -1.0F; ; f = this.mSp.getFloat(paramString, paramFloat))
      return f;
  }

  public int getUnObfuscatedInt(String paramString, int paramInt)
  {
    if (this.mSp == null)
      Logger.error("SharedPreferences == null");
    for (int i = -1; ; i = this.mSp.getInt(paramString, paramInt))
      return i;
  }

  public long getUnObfuscatedLong(String paramString, long paramLong)
  {
    if (this.mSp == null)
      Logger.error("SharedPreferences == null");
    for (long l = -1L; ; l = this.mSp.getLong(paramString, paramLong))
      return l;
  }

  public SharedPreferences.Editor putString(String paramString1, String paramString2)
  {
    try
    {
      if (this.mSpEditor == null)
        Logger.error("SharedPreferencesEditor == null");
      SharedPreferences.Editor localEditor;
      for (Object localObject2 = null; ; localObject2 = localEditor)
      {
        return localObject2;
        String str = this.mObfuscator.obfuscate(paramString2);
        localEditor = this.mSpEditor.putString(paramString1, str);
      }
    }
    finally
    {
    }
  }

  public SharedPreferences.Editor putUnObfuscatedBoolean(String paramString, boolean paramBoolean)
  {
    if (this.mSpEditor == null)
      Logger.error("SharedPreferencesEditor == null");
    for (SharedPreferences.Editor localEditor = null; ; localEditor = this.mSpEditor.putBoolean(paramString, paramBoolean))
      return localEditor;
  }

  public SharedPreferences.Editor putUnObfuscatedFloat(String paramString, float paramFloat)
  {
    if (this.mSpEditor == null)
      Logger.error("SharedPreferencesEditor == null");
    for (SharedPreferences.Editor localEditor = null; ; localEditor = this.mSpEditor.putFloat(paramString, paramFloat))
      return localEditor;
  }

  public SharedPreferences.Editor putUnObfuscatedInt(String paramString, int paramInt)
  {
    if (this.mSpEditor == null)
      Logger.error("SharedPreferencesEditor == null");
    for (SharedPreferences.Editor localEditor = null; ; localEditor = this.mSpEditor.putInt(paramString, paramInt))
      return localEditor;
  }

  public SharedPreferences.Editor putUnObfuscatedLong(String paramString, long paramLong)
  {
    if (this.mSpEditor == null)
      Logger.error("SharedPreferencesEditor == null");
    for (SharedPreferences.Editor localEditor = null; ; localEditor = this.mSpEditor.putLong(paramString, paramLong))
      return localEditor;
  }

  public boolean remove(String paramString)
  {
    try
    {
      if (this.mSpEditor == null)
        Logger.error("SharedPreferencesEditor == null");
      for (boolean bool = false; ; bool = true)
      {
        return bool;
        this.mSpEditor.remove(paramString);
      }
    }
    finally
    {
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.android.vending.licensing.ObfuscatedSharedPreferences
 * JD-Core Version:    0.6.2
 */