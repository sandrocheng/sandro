package com.tencent.tmsecure.module.aresengine;

public abstract interface IContactDao<T extends ContactEntity>
{
  public static final int CALL_FROM_CALLFILTER = 0;
  public static final int CALL_FROM_SMSFILTER = 1;

  public abstract boolean contains(String paramString, int paramInt);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.aresengine.IContactDao
 * JD-Core Version:    0.6.2
 */