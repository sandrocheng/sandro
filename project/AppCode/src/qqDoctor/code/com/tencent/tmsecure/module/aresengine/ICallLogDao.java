package com.tencent.tmsecure.module.aresengine;

public abstract interface ICallLogDao<T extends CallLogEntity>
{
  public abstract long insert(T paramT, FilterResult paramFilterResult);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.aresengine.ICallLogDao
 * JD-Core Version:    0.6.2
 */