package com.tencent.qqpimsecure.uilib.ui.activity;

import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import pc;

public abstract class BaseActivityGroup extends Activity
  implements IBaseActivity
{
  public boolean isNeedActivityWrapper()
  {
    return false;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    if (isNeedActivityWrapper())
      pc.b().a(this);
  }

  protected void onDestroy()
  {
    if (isNeedActivityWrapper())
      pc.b().b(this);
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public void onPause()
  {
    super.onPause();
  }

  public void onResume()
  {
    super.onResume();
  }

  public void onUserInteraction()
  {
    super.onUserInteraction();
    if (isNeedActivityWrapper())
      pc.b().c();
  }

  public void onUserLeaveHint()
  {
    super.onUserLeaveHint();
    if (isNeedActivityWrapper())
      pc.b().d();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.ui.activity.BaseActivityGroup
 * JD-Core Version:    0.6.2
 */