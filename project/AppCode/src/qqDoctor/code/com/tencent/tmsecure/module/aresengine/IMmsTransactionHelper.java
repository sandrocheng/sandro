package com.tencent.tmsecure.module.aresengine;

public abstract interface IMmsTransactionHelper
{
  public static final int APN_ALREADY_ACTIVE = 0;
  public static final int APN_REQUEST_STARTED = 1;
  public static final String DEFAULT_NETWORK_FEATURE = "enableMMS";

  public abstract int beginMmsConnectivity(String paramString);

  public abstract int retrieveMmsContent(SmsEntity paramSmsEntity);

  public abstract int sendAcknowledgeInd(SmsEntity paramSmsEntity);

  public abstract int sendNotifyRespInd(int paramInt, SmsEntity paramSmsEntity);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.aresengine.IMmsTransactionHelper
 * JD-Core Version:    0.6.2
 */