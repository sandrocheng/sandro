package com.tencent.tmsecure.module.aresengine;

import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;

public abstract class DataMonitor<T extends TelephonyEntity>
{
  private Object a = new Object();
  private ConcurrentLinkedQueue<MonitorCallback<T>> b = new ConcurrentLinkedQueue();
  private DataFilter<T> c;

  public final void addCallback(MonitorCallback<T> paramMonitorCallback)
  {
    this.b.add(paramMonitorCallback);
  }

  public void bind(DataFilter<T> paramDataFilter)
  {
    synchronized (this.a)
    {
      this.c = paramDataFilter;
      return;
    }
  }

  public final void notifyDataReached(T paramT, Object[] paramArrayOfObject)
  {
    boolean bool;
    Iterator localIterator;
    if (paramT != null)
    {
      int i = this.b.size();
      bool = false;
      if (i > 0)
        localIterator = this.b.iterator();
    }
    while (true)
    {
      if (!localIterator.hasNext())
      {
        label38: onPostDataToFilter(bool, paramT, paramArrayOfObject);
        if (bool);
      }
      synchronized (this.a)
      {
        if (this.c != null)
          this.c.filter(paramT, paramArrayOfObject);
        return;
        MonitorCallback localMonitorCallback = (MonitorCallback)localIterator.next();
        localMonitorCallback.onCallback(paramT);
        bool = MonitorCallback.a(localMonitorCallback);
        if (bool)
          break label38;
      }
    }
  }

  public void onPostDataToFilter(boolean paramBoolean, T paramT, Object[] paramArrayOfObject)
  {
  }

  public final void removeCallback(MonitorCallback<T> paramMonitorCallback)
  {
    this.b.remove(paramMonitorCallback);
  }

  public void setRegisterState(boolean paramBoolean)
  {
  }

  public void unbind()
  {
    synchronized (this.a)
    {
      this.c = null;
      return;
    }
  }

  public static abstract class MonitorCallback<T extends TelephonyEntity>
  {
    private boolean a = false;

    public void abortMonitor()
    {
      this.a = true;
    }

    public abstract void onCallback(T paramT);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.aresengine.DataMonitor
 * JD-Core Version:    0.6.2
 */