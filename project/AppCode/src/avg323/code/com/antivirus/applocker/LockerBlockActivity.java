package com.antivirus.applocker;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.antivirus.m;
import com.antivirus.ui.a;

public class LockerBlockActivity extends a
{
  private Fragment n = null;

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903080);
    a(true, 2130837604, 2130837603, m.a(this, 2131296528), false, 2131230769);
    this.n = new n();
    a(this.n, 2131230929, "LockerBlockFragment");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.applocker.LockerBlockActivity
 * JD-Core Version:    0.6.2
 */