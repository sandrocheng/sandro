package com.antivirus.ui.settings;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.antivirus.m;

public class LanguageSelector extends com.antivirus.ui.a
{
  private Fragment n = null;

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903080);
    a(true, 2130837544, 2130837545, m.a(this, 2131296503), false);
    this.n = new a();
    a(this.n, 2131230929, "LanguageFragment");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.settings.LanguageSelector
 * JD-Core Version:    0.6.2
 */