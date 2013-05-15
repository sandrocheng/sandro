package com.avast.android.mobilesecurity.app.fileshield;

import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import java.util.concurrent.BlockingQueue;

class h
  implements SharedPreferences.OnSharedPreferenceChangeListener
{
  h(FileShieldService paramFileShieldService)
  {
  }

  public void onSharedPreferenceChanged(SharedPreferences paramSharedPreferences, String paramString)
  {
    if ((paramString != null) && ((paramString.equals("gSettingsFileShieldReadEnabled")) || (paramString.equals("gSettingsFileShieldWriteEnabled"))) && (FileShieldService.b(this.a) != null))
      FileShieldService.b(this.a).offer(new r(this.a));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.fileshield.h
 * JD-Core Version:    0.6.2
 */