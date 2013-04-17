package com.tencent.qqpimsecure.ui.activity.virus;

import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import brp;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;

public final class VirusScanActivity extends BaseUIActivity
{
  private brp a;

  public final BaseView getView()
  {
    if (this.a == null)
      this.a = new brp(this);
    return this.a;
  }

  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramIntent != null)
      setIntent(paramIntent);
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  public final boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((this.a.a()) && (paramInt == 4))
      this.a.b();
    for (boolean bool = false; ; bool = super.onKeyDown(paramInt, paramKeyEvent))
      return bool;
  }

  protected final void onNewIntent(Intent paramIntent)
  {
    setIntent(paramIntent);
    super.onNewIntent(paramIntent);
  }

  public final void onResume()
  {
    super.onResume();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.virus.VirusScanActivity
 * JD-Core Version:    0.6.2
 */