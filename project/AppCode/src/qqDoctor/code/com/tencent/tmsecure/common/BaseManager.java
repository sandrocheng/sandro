package com.tencent.tmsecure.common;

import android.content.Context;
import bsv;

public abstract class BaseManager
{
  public static final int TYPE_AUTO = 0;
  public static final int TYPE_FOREVER = 1;
  public static final int TYPE_ONCE = 2;
  private BaseManager a;

  protected static final boolean isExpired()
  {
    return bsv.a().e();
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

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.common.BaseManager
 * JD-Core Version:    0.6.2
 */