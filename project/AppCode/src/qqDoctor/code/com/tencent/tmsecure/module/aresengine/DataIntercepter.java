package com.tencent.tmsecure.module.aresengine;

public abstract interface DataIntercepter<T extends TelephonyEntity>
{
  public abstract DataFilter<T> dataFilter();

  public abstract DataHandler dataHandler();

  public abstract DataMonitor<T> dataMonitor();
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.aresengine.DataIntercepter
 * JD-Core Version:    0.6.2
 */