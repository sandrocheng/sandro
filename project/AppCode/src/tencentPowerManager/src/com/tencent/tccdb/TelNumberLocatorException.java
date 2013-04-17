package com.tencent.tccdb;

public class TelNumberLocatorException extends RuntimeException
{
  private static final long serialVersionUID = 2079841061966430845L;
  private int error;

  public TelNumberLocatorException(int paramInt)
  {
    super("TelNumberLocator error" + Integer.toString(paramInt));
    this.error = paramInt;
  }

  public int getError()
  {
    return this.error;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.tccdb.TelNumberLocatorException
 * JD-Core Version:    0.6.2
 */