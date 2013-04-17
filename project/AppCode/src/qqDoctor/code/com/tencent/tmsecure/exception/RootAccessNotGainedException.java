package com.tencent.tmsecure.exception;

public class RootAccessNotGainedException extends RuntimeException
{
  public String getMessage()
  {
    return "Root permission is not granted!";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.exception.RootAccessNotGainedException
 * JD-Core Version:    0.6.2
 */