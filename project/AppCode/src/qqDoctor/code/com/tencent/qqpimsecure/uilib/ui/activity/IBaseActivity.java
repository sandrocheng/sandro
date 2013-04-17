package com.tencent.qqpimsecure.uilib.ui.activity;

import android.os.Bundle;
import android.view.KeyEvent;

public abstract interface IBaseActivity
{
  public abstract void onCreate(Bundle paramBundle);

  public abstract boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent);

  public abstract void onPause();

  public abstract void onResume();

  public abstract void onUserInteraction();

  public abstract void onUserLeaveHint();
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.ui.activity.IBaseActivity
 * JD-Core Version:    0.6.2
 */