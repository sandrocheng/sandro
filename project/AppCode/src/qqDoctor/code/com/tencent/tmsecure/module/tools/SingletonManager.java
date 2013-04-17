package com.tencent.tmsecure.module.tools;

import android.content.Context;
import bzb;
import com.tencent.tmsecure.common.BaseManager;

public final class SingletonManager extends BaseManager
{
  private bzb a;

  public final <T extends ISingleton> T getSingleton(Class<T> paramClass)
  {
    return this.a.a(paramClass);
  }

  public final void onCreate(Context paramContext)
  {
    this.a = new bzb();
    this.a.onCreate(paramContext);
    setImpl(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.tools.SingletonManager
 * JD-Core Version:    0.6.2
 */