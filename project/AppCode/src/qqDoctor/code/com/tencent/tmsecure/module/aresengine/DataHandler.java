package com.tencent.tmsecure.module.aresengine;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.tencent.tmsecure.common.ManagerCreator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;

public class DataHandler extends Handler
{
  private static final Looper a = localHandlerThread.getLooper();
  private ConcurrentLinkedQueue<DataHandlerCallback> b = new ConcurrentLinkedQueue();

  static
  {
    HandlerThread localHandlerThread = new HandlerThread(DataHandler.class.getName());
    localHandlerThread.start();
  }

  public DataHandler()
  {
    super(a);
  }

  public final void addCallback(DataHandlerCallback paramDataHandlerCallback)
  {
    this.b.add(paramDataHandlerCallback);
  }

  public void handleMessage(Message paramMessage)
  {
    Iterator localIterator1;
    TelephonyEntity localTelephonyEntity;
    int i;
    int j;
    Object[] arrayOfObject;
    if (paramMessage.what == 3456)
    {
      FilterResult localFilterResult = (FilterResult)paramMessage.obj;
      localIterator1 = localFilterResult.mDotos.iterator();
      if (localIterator1.hasNext())
        break label108;
      localTelephonyEntity = localFilterResult.mData;
      i = localFilterResult.mFilterfiled;
      j = localFilterResult.mState;
      arrayOfObject = localFilterResult.mParams;
      if (!(localTelephonyEntity instanceof SmsEntity))
        break label148;
      AresEngineFactor localAresEngineFactor = ((AresEngineManager)ManagerCreator.getManager(AresEngineManager.class)).getAresEngineFactor();
      if (((i != 1) && (i != 1)) || (localFilterResult.isBlocked) || (!localAresEngineFactor.isDualSimDevice()))
        break label148;
    }
    while (true)
    {
      return;
      label108: Runnable localRunnable = (Runnable)localIterator1.next();
      if ((localRunnable instanceof Thread))
      {
        ((Thread)localRunnable).start();
        break;
      }
      localRunnable.run();
      break;
      label148: Iterator localIterator2 = this.b.iterator();
      while (localIterator2.hasNext())
        ((DataHandlerCallback)localIterator2.next()).onCallback(localTelephonyEntity, i, j, arrayOfObject);
    }
  }

  public final void removeCallback(DataHandlerCallback paramDataHandlerCallback)
  {
    this.b.remove(paramDataHandlerCallback);
  }

  public void sendMessage(FilterResult paramFilterResult)
  {
    if (paramFilterResult != null);
    try
    {
      Message localMessage = obtainMessage(3456);
      localMessage.obj = paramFilterResult;
      localMessage.sendToTarget();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static abstract interface DataHandlerCallback
  {
    public abstract void onCallback(TelephonyEntity paramTelephonyEntity, int paramInt1, int paramInt2, Object[] paramArrayOfObject);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.aresengine.DataHandler
 * JD-Core Version:    0.6.2
 */