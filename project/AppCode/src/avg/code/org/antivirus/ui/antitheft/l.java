package org.antivirus.ui.antitheft;

import android.content.DialogInterface.OnClickListener;
import com.android.vending.licensing.ObfuscatedSharedPreferences;

abstract class l
  implements DialogInterface.OnClickListener
{
  protected ObfuscatedSharedPreferences c;

  public l(AntiTheftActivity paramAntiTheftActivity, ObfuscatedSharedPreferences paramObfuscatedSharedPreferences)
  {
    this.c = paramObfuscatedSharedPreferences;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.antitheft.l
 * JD-Core Version:    0.6.2
 */