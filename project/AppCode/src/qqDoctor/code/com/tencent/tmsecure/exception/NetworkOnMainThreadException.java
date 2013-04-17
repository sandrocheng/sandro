package com.tencent.tmsecure.exception;

public class NetworkOnMainThreadException extends RuntimeException
{
  public NetworkOnMainThreadException()
  {
    super("Network cannot run on main thread if the targetSDKVersion is over 9 please make sure not to invoke network relevant methods on the main thread or change the manifest targetSDKVersion to be under 10");
  }

  public NetworkOnMainThreadException(String paramString)
  {
    super(paramString);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.exception.NetworkOnMainThreadException
 * JD-Core Version:    0.6.2
 */