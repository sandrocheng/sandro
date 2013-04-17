package com.tencent.tmsecure.exception;

public class NetWorkException extends Exception
{
  private int a;

  public NetWorkException(int paramInt, String paramString)
  {
    super(paramString);
    this.a = paramInt;
  }

  public NetWorkException(int paramInt, String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
    this.a = paramInt;
  }

  public NetWorkException(int paramInt, Throwable paramThrowable)
  {
    super(paramThrowable.getMessage(), paramThrowable);
    this.a = paramInt;
  }

  public int getErrCode()
  {
    return this.a;
  }

  public String getErrMsg()
  {
    String str = getMessage();
    if (str == null)
    {
      Throwable localThrowable = getCause();
      if (localThrowable != null)
        str = localThrowable.getMessage();
    }
    if (str != null);
    while (true)
    {
      return str;
      str = "";
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.exception.NetWorkException
 * JD-Core Version:    0.6.2
 */