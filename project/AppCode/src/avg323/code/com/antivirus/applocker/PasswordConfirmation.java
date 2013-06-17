package com.antivirus.applocker;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.KeyEvent;
import com.antivirus.m;
import com.antivirus.ui.a;

public class PasswordConfirmation extends a
{
  private Fragment n = null;

  protected void g()
  {
    setResult(1);
    super.g();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903080);
    a(true, 2130837604, 2130837603, m.a(this, 2131296533), false, 2131230769);
    this.n = new q();
    a(this.n, 2131230929, "PasswordConfirmationFragment");
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (4 == paramInt)
      g();
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.applocker.PasswordConfirmation
 * JD-Core Version:    0.6.2
 */