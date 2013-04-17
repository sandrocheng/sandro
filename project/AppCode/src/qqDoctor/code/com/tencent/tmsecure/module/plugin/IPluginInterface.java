package com.tencent.tmsecure.module.plugin;

import android.app.Activity;

public abstract interface IPluginInterface
{
  public abstract Object getProperty(String paramString);

  public abstract AbsPluginViewElement<?> getStartViewElement(Activity paramActivity);

  public abstract AbsPluginViewElement<?> getViewElement(int paramInt, Activity paramActivity);

  public abstract void onCreate(IContext paramIContext1, IContext paramIContext2, AbsPluginControler paramAbsPluginControler);

  public abstract void setProperty(String paramString, Object paramObject);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.plugin.IPluginInterface
 * JD-Core Version:    0.6.2
 */