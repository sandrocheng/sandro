package com.tencent.tmsecure.module.market;

import java.util.ArrayList;

public abstract interface IMarketManagerListener<K, T>
{
  public abstract void onReceive(K paramK, ArrayList<T> paramArrayList);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.market.IMarketManagerListener
 * JD-Core Version:    0.6.2
 */