package com.tencent.tmsecure.module.aresengine;

public abstract interface ISpecialSmsChecker
{
  public abstract boolean isBlocked(SmsEntity paramSmsEntity);

  public abstract boolean isMatch(SmsEntity paramSmsEntity);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.aresengine.ISpecialSmsChecker
 * JD-Core Version:    0.6.2
 */