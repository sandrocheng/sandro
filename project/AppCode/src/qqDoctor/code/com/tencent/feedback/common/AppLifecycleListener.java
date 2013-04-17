package com.tencent.feedback.common;

import android.content.Context;

public abstract interface AppLifecycleListener
{
  public abstract void onAppExited(Context paramContext);

  public abstract void onAppLauched(Context paramContext);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.common.AppLifecycleListener
 * JD-Core Version:    0.6.2
 */