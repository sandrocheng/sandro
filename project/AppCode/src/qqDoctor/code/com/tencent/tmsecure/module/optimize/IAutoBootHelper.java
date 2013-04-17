package com.tencent.tmsecure.module.optimize;

import java.util.ArrayList;

public abstract interface IAutoBootHelper
{
  public abstract ArrayList<Pair<String, Boolean>> getAllAutoBootApps();

  public abstract boolean setAutoBootEnable(String paramString, boolean paramBoolean);

  public static final class Pair<T1, T2>
  {
    public T1 first;
    public T2 second;

    public Pair(T1 paramT1, T2 paramT2)
    {
      this.first = paramT1;
      this.second = paramT2;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.optimize.IAutoBootHelper
 * JD-Core Version:    0.6.2
 */