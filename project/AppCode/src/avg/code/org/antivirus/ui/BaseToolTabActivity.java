package org.antivirus.ui;

import android.app.TabActivity;
import android.view.KeyEvent;

public abstract class BaseToolTabActivity extends TabActivity
{
  protected final void a()
  {
    finish();
  }

  protected final void b()
  {
    finish();
  }

  protected final void c()
  {
    openOptionsMenu();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
      finish();
    for (boolean bool = true; ; bool = super.onKeyDown(paramInt, paramKeyEvent))
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.BaseToolTabActivity
 * JD-Core Version:    0.6.2
 */