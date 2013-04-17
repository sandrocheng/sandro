package com.tencent.tmsecure.common;

import android.os.IBinder;
import android.os.RemoteException;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;

public final class SDKClient extends ISDKClient.Stub
{
  private static ConcurrentLinkedQueue<MessageHandler> a = new ConcurrentLinkedQueue();
  private static volatile SDKClient b = null;

  public static SDKClient getInstance()
  {
    if (b == null);
    try
    {
      if (b == null)
        b = new SDKClient();
      return b;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final IBinder asBinder()
  {
    return this;
  }

  public final DataEntity sendMessage(DataEntity paramDataEntity)
    throws RemoteException
  {
    int i = paramDataEntity.what();
    Iterator localIterator = a.iterator();
    if (!localIterator.hasNext());
    MessageHandler localMessageHandler;
    for (DataEntity localDataEntity = null; ; localDataEntity = localMessageHandler.onProcessing(paramDataEntity))
    {
      return localDataEntity;
      localMessageHandler = (MessageHandler)localIterator.next();
      if (!localMessageHandler.isMatch(i))
        break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.tmsecure.common.SDKClient
 * JD-Core Version:    0.6.2
 */