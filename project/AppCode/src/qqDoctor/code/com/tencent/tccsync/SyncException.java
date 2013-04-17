package com.tencent.tccsync;

public class SyncException extends RuntimeException
{
  private static final long serialVersionUID = 1000002L;
  private int error;

  public SyncException(int paramInt)
  {
    super("同步引擎出错，错误码：" + Integer.toString(paramInt));
    this.error = paramInt;
  }

  public int getError()
  {
    return this.error;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tccsync.SyncException
 * JD-Core Version:    0.6.2
 */