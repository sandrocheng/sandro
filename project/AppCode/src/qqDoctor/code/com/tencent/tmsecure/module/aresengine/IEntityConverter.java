package com.tencent.tmsecure.module.aresengine;

public abstract interface IEntityConverter
{
  public abstract <T extends CallLogEntity> T convert(CallLogEntity paramCallLogEntity);

  public abstract <T extends SmsEntity> T convert(SmsEntity paramSmsEntity);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.aresengine.IEntityConverter
 * JD-Core Version:    0.6.2
 */