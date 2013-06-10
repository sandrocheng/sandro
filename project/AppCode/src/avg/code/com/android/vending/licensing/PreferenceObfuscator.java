package com.android.vending.licensing;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.util.Log;

public class PreferenceObfuscator
{
  private static final String TAG = "PreferenceObfuscator";
  private SharedPreferences.Editor mEditor;
  private final Obfuscator mObfuscator;
  private final SharedPreferences mPreferences;

  public PreferenceObfuscator(SharedPreferences paramSharedPreferences, Obfuscator paramObfuscator)
  {
    this.mPreferences = paramSharedPreferences;
    this.mObfuscator = paramObfuscator;
    this.mEditor = null;
  }

  public void commit()
  {
    if (this.mEditor != null)
    {
      this.mEditor.commit();
      this.mEditor = null;
    }
  }

  public String getString(String paramString1, String paramString2)
  {
    String str1 = this.mPreferences.getString(paramString1, null);
    if (str1 != null);
    try
    {
      String str2 = this.mObfuscator.unobfuscate(str1);
      paramString2 = str2;
      return paramString2;
    }
    catch (ValidationException localValidationException)
    {
      while (true)
        Log.w("PreferenceObfuscator", "Validation error while reading preference: " + paramString1);
    }
  }

  public void putString(String paramString1, String paramString2)
  {
    if (this.mEditor == null)
      this.mEditor = this.mPreferences.edit();
    String str = this.mObfuscator.obfuscate(paramString2);
    this.mEditor.putString(paramString1, str);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.android.vending.licensing.PreferenceObfuscator
 * JD-Core Version:    0.6.2
 */