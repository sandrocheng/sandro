package com.tencent.tmsecure.common;

import android.content.Context;
import ek;

public abstract class BaseManager
{
  private BaseManager a;

  protected static final boolean isExpired()
  {
    return ek.a().d();
  }

  public int getSingletonType()
  {
    if (this.a != null);
    for (int i = this.a.getSingletonType(); ; i = 0)
      return i;
  }

  public abstract void onCreate(Context paramContext);

  protected void setImpl(BaseManager paramBaseManager)
  {
    this.a = paramBaseManager;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.tmsecure.common.BaseManager
 * JD-Core Version:    0.6.2
 */