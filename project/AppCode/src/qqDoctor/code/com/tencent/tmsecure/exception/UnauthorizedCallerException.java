package com.tencent.tmsecure.exception;

public class UnauthorizedCallerException extends SecurityException
{
  public UnauthorizedCallerException()
  {
    this("The caller is not permitted");
  }

  public UnauthorizedCallerException(String paramString)
  {
    super(paramString);
  }

  public UnauthorizedCallerException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.exception.UnauthorizedCallerException
 * JD-Core Version:    0.6.2
 */