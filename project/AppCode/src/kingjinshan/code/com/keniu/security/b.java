package com.keniu.security;

import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;

final class b
  implements SharedPreferences.OnSharedPreferenceChangeListener
{
  b(a parama)
  {
  }

  public final void onSharedPreferenceChanged(SharedPreferences paramSharedPreferences, String paramString)
  {
    a.g(System.currentTimeMillis());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.b
 * JD-Core Version:    0.6.2
 */