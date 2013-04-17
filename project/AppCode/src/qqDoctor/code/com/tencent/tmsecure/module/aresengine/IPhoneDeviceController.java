package com.tencent.tmsecure.module.aresengine;

public abstract interface IPhoneDeviceController
{
  public abstract void blockSms(Object[] paramArrayOfObject);

  public abstract void cancelMissCall();

  public abstract void disableRingVibration(int paramInt);

  public abstract void hangup();

  public abstract void unBlockSms(SmsEntity paramSmsEntity, Object[] paramArrayOfObject);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.aresengine.IPhoneDeviceController
 * JD-Core Version:    0.6.2
 */