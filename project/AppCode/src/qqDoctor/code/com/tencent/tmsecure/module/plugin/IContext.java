package com.tencent.tmsecure.module.plugin;

import android.app.Activity;
import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;

public abstract interface IContext
{
  public abstract AssetManager getAssertManager();

  public abstract Context getContext();

  public abstract ILayoutInflater getLayoutInflater();

  public abstract Resources getResources();

  public static abstract interface ILayoutInflater
  {
    public abstract View inflate(Activity paramActivity, int paramInt, ViewGroup paramViewGroup);

    public abstract View inflate(Activity paramActivity, int paramInt, ViewGroup paramViewGroup, boolean paramBoolean);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.plugin.IContext
 * JD-Core Version:    0.6.2
 */