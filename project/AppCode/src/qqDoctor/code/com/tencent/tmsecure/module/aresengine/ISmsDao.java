package com.tencent.tmsecure.module.aresengine;

public abstract interface ISmsDao<T extends SmsEntity>
{
  public abstract long insert(T paramT, FilterResult paramFilterResult);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.aresengine.ISmsDao
 * JD-Core Version:    0.6.2
 */