package com.tencent.tmsecure.common;

public abstract interface MessageHandler
{
  public abstract boolean isMatch(int paramInt);

  public abstract DataEntity onProcessing(DataEntity paramDataEntity);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.tmsecure.common.MessageHandler
 * JD-Core Version:    0.6.2
 */