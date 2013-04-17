package com.tencent.tmsecure.module.permission;

import android.os.RemoteException;
import bxg;

public abstract class AbsDummyServiceCallback extends IDummyServiceCallback.Stub
{
  public abstract void onHandleAslynRequest(PermissionRequestInfo paramPermissionRequestInfo)
    throws Exception;

  protected abstract int onHandleSyncRequest(PermissionRequestInfo paramPermissionRequestInfo)
    throws Exception;

  public final int onRequest(PermissionRequestInfo paramPermissionRequestInfo)
    throws RemoteException
  {
    int i = 0;
    if ((paramPermissionRequestInfo.mValue == 1) || (paramPermissionRequestInfo.mValue == 0))
      new bxg(this, paramPermissionRequestInfo).start();
    while (true)
    {
      return i;
      int j = paramPermissionRequestInfo.mValue;
      i = 0;
      if (j == 2)
        try
        {
          int k = onHandleSyncRequest(paramPermissionRequestInfo);
          i = k;
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
          i = 0;
        }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.permission.AbsDummyServiceCallback
 * JD-Core Version:    0.6.2
 */