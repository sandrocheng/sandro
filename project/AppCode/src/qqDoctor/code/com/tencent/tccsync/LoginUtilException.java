package com.tencent.tccsync;

public class LoginUtilException extends RuntimeException
{
  private static final long serialVersionUID = 100001L;
  private int error;

  public LoginUtilException(int paramInt)
  {
    super("LoginUtil error" + Integer.toString(paramInt));
    this.error = paramInt;
  }

  public int getError()
  {
    return this.error;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tccsync.LoginUtilException
 * JD-Core Version:    0.6.2
 */