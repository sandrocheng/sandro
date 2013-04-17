package com.tencent.tmsecure.module.aresengine;

public class CallLogEntity extends TelephonyEntity
{
  public long date;
  public long duration;
  public int type;

  public CallLogEntity()
  {
  }

  public CallLogEntity(CallLogEntity paramCallLogEntity)
  {
    super(paramCallLogEntity);
    this.date = paramCallLogEntity.date;
    this.type = paramCallLogEntity.type;
    this.duration = paramCallLogEntity.duration;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.aresengine.CallLogEntity
 * JD-Core Version:    0.6.2
 */