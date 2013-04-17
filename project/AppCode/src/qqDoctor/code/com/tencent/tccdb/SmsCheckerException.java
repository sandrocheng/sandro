package com.tencent.tccdb;

public class SmsCheckerException extends RuntimeException
{
  private static final long serialVersionUID = 3853152434724309734L;
  private int error;

  public SmsCheckerException(int paramInt)
  {
    super("SmsChecker error" + Integer.toString(paramInt));
    this.error = paramInt;
  }

  public int getError()
  {
    return this.error;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tccdb.SmsCheckerException
 * JD-Core Version:    0.6.2
 */