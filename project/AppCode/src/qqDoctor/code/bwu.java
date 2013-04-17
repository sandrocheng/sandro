import android.os.Binder;
import com.tencent.tmsecure.exception.NetWorkException;
import com.tencent.tmsecure.module.networkload.INetworkLoadTaskDao;
import com.tencent.tmsecure.module.networkload.NetworkLoadTask;
import com.tencent.tmsecure.module.networkload.NetworkLoadTaskListener;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

abstract class bwu<T extends NetworkLoadTask> extends Binder
{
  private List<T> a;
  private List<T> b;
  private List<T> c;
  private List<T> d;
  private List<T> e;
  private byte f = 3;
  private List<WeakReference<NetworkLoadTaskListener<T>>> g = new ArrayList(this.f);
  private INetworkLoadTaskDao<T> h;
  private byte[] i = new byte[0];

  private void a()
  {
    int j = 0;
    while (true)
    {
      NetworkLoadTask localNetworkLoadTask1;
      try
      {
        if (j >= this.a.size())
        {
          if (this.a.size() < this.f)
          {
            int k = this.b.size();
            if (k > 0)
              break label218;
          }
          return;
        }
        localNetworkLoadTask1 = (NetworkLoadTask)this.a.get(j);
        if (localNetworkLoadTask1.mState == 3)
        {
          if (!this.e.contains(localNetworkLoadTask1))
            this.e.add(localNetworkLoadTask1);
          this.a.remove(j);
          continue;
        }
      }
      finally
      {
      }
      if (!localNetworkLoadTask1.isOnChangeRetry)
      {
        if (localNetworkLoadTask1.mState == 2)
        {
          if (!this.d.contains(localNetworkLoadTask1))
            this.d.add(localNetworkLoadTask1);
          this.a.remove(j);
        }
      }
      else if (localNetworkLoadTask1.mState == 0)
      {
        boolean bool = localNetworkLoadTask1.mThread.isAlive();
        if (!bool)
          try
          {
            localNetworkLoadTask1.mThread.start();
          }
          catch (IllegalThreadStateException localIllegalThreadStateException)
          {
          }
        else
          j++;
      }
      else
      {
        j++;
        continue;
        label218: NetworkLoadTask localNetworkLoadTask2 = (NetworkLoadTask)this.b.get(0);
        this.b.remove(0);
        if (!this.a.contains(localNetworkLoadTask2))
        {
          this.a.add(localNetworkLoadTask2);
          if (localNetworkLoadTask2.mThread != null)
          {
            localNetworkLoadTask2.mState = 0;
            ArrayList localArrayList = new ArrayList(1);
            localArrayList.add(localNetworkLoadTask2);
            a(localArrayList);
            localNetworkLoadTask2.mThread.start();
            continue;
            j++;
          }
        }
      }
    }
  }

  private void a(List<T> paramList)
  {
    int j;
    if (paramList.size() > 1)
    {
      j = 1;
      if ((this.g != null) && (this.g.size() != 0))
        break label37;
    }
    while (true)
    {
      return;
      j = 0;
      break;
      label37: ArrayList localArrayList = new ArrayList(this.g);
      switch (((NetworkLoadTask)paramList.get(0)).mState)
      {
      default:
        break;
      case -1:
        Iterator localIterator6 = localArrayList.iterator();
        while (localIterator6.hasNext())
        {
          NetworkLoadTaskListener localNetworkLoadTaskListener6 = (NetworkLoadTaskListener)((WeakReference)localIterator6.next()).get();
          if (localNetworkLoadTaskListener6 != null)
            if (j != 0)
              localNetworkLoadTaskListener6.onWaiting(paramList);
            else
              localNetworkLoadTaskListener6.onWaiting((NetworkLoadTask)paramList.get(0));
        }
      case 0:
        this.h.update((NetworkLoadTask)paramList.get(0));
        Iterator localIterator5 = localArrayList.iterator();
        while (localIterator5.hasNext())
        {
          NetworkLoadTaskListener localNetworkLoadTaskListener5 = (NetworkLoadTaskListener)((WeakReference)localIterator5.next()).get();
          if (localNetworkLoadTaskListener5 != null)
            localNetworkLoadTaskListener5.onRunning((NetworkLoadTask)paramList.get(0));
        }
      case 1:
        Iterator localIterator4;
        if (j != 0)
        {
          this.h.update(paramList, 1);
          localIterator4 = localArrayList.iterator();
        }
        while (localIterator4.hasNext())
        {
          NetworkLoadTaskListener localNetworkLoadTaskListener4 = (NetworkLoadTaskListener)((WeakReference)localIterator4.next()).get();
          if (localNetworkLoadTaskListener4 != null)
          {
            if (j != 0)
            {
              localNetworkLoadTaskListener4.onPaused(paramList);
              continue;
              this.h.update((NetworkLoadTask)paramList.get(0));
              break label270;
            }
            localNetworkLoadTaskListener4.onPaused((NetworkLoadTask)paramList.get(0));
          }
        }
      case 3:
        this.h.update((NetworkLoadTask)paramList.get(0));
        doFinish((NetworkLoadTask)paramList.get(0));
        Iterator localIterator3 = localArrayList.iterator();
        while (true)
        {
          if (!localIterator3.hasNext())
          {
            a();
            break;
          }
          NetworkLoadTaskListener localNetworkLoadTaskListener3 = (NetworkLoadTaskListener)((WeakReference)localIterator3.next()).get();
          if (localNetworkLoadTaskListener3 != null)
            localNetworkLoadTaskListener3.onFinished((NetworkLoadTask)paramList.get(0));
        }
      case 2:
        this.h.update((NetworkLoadTask)paramList.get(0));
        Iterator localIterator2 = localArrayList.iterator();
        while (true)
        {
          if (!localIterator2.hasNext())
          {
            a();
            break;
          }
          NetworkLoadTaskListener localNetworkLoadTaskListener2 = (NetworkLoadTaskListener)((WeakReference)localIterator2.next()).get();
          if (localNetworkLoadTaskListener2 != null)
            localNetworkLoadTaskListener2.onFailed((NetworkLoadTask)paramList.get(0));
        }
      case 4:
        label270: Iterator localIterator1 = localArrayList.iterator();
        while (localIterator1.hasNext())
        {
          NetworkLoadTaskListener localNetworkLoadTaskListener1 = (NetworkLoadTaskListener)((WeakReference)localIterator1.next()).get();
          if (localNetworkLoadTaskListener1 != null)
            if (j != 0)
              localNetworkLoadTaskListener1.onDeleted(paramList);
            else
              localNetworkLoadTaskListener1.onDeleted((NetworkLoadTask)paramList.get(0));
        }
      }
    }
  }

  final void a(T paramT)
  {
    ArrayList localArrayList = new ArrayList(1);
    localArrayList.add(paramT);
    a(localArrayList);
  }

  final void b(T paramT)
    throws NetWorkException
  {
    try
    {
      this.h.update(paramT);
      if ((this.g == null) || (this.g.size() == 0))
        return;
    }
    catch (Exception localException)
    {
      throw new NetWorkException(-7056, "breakable download IOException: " + localException.getMessage() + " update db exception");
    }
    Iterator localIterator = new ArrayList(this.g).iterator();
    while (localIterator.hasNext())
    {
      NetworkLoadTaskListener localNetworkLoadTaskListener = (NetworkLoadTaskListener)((WeakReference)localIterator.next()).get();
      if (localNetworkLoadTaskListener != null)
        localNetworkLoadTaskListener.onProgressChanged(paramT);
    }
  }

  public final void clearData()
  {
    if (this.b != null)
      this.b.clear();
    if (this.a != null)
      this.a.clear();
    if (this.c != null)
      this.c.clear();
    if (this.e != null)
      this.e.clear();
    if (this.d != null)
      this.d.clear();
  }

  public final void continueTask(T paramT)
  {
    synchronized (this.i)
    {
      ArrayList localArrayList = new ArrayList(1);
      localArrayList.add(paramT);
      continueTask(localArrayList);
      return;
    }
  }

  public final void continueTask(List<T> paramList)
  {
    byte[] arrayOfByte = this.i;
    if (paramList != null);
    while (true)
    {
      Iterator localIterator1;
      ArrayList localArrayList;
      Iterator localIterator2;
      try
      {
        if (paramList.size() == 0)
          break;
        localIterator1 = paramList.iterator();
        if (!localIterator1.hasNext())
        {
          a();
          localArrayList = new ArrayList();
          localIterator2 = paramList.iterator();
          if (localIterator2.hasNext())
            break label211;
          if (localArrayList.size() > 0)
            a(localArrayList);
        }
      }
      finally
      {
      }
      NetworkLoadTask localNetworkLoadTask1 = (NetworkLoadTask)localIterator1.next();
      doBeforeContinue(localNetworkLoadTask1);
      if (!this.c.remove(localNetworkLoadTask1))
        this.d.remove(localNetworkLoadTask1);
      if (this.b.contains(localNetworkLoadTask1))
      {
        localNetworkLoadTask1.mState = -1;
      }
      else if (this.a.contains(localNetworkLoadTask1))
      {
        localNetworkLoadTask1.mState = 0;
      }
      else
      {
        this.b.add(localNetworkLoadTask1);
        localNetworkLoadTask1.mState = -1;
        continue;
        label211: NetworkLoadTask localNetworkLoadTask2 = (NetworkLoadTask)localIterator2.next();
        if ((localNetworkLoadTask2.mState == -1) && (!this.a.contains(localNetworkLoadTask2)))
          localArrayList.add(localNetworkLoadTask2);
      }
    }
  }

  public final void deleteTask(T paramT, boolean paramBoolean)
  {
    synchronized (this.i)
    {
      this.h.delete(paramT);
      if ((!this.b.remove(paramT)) && (!this.a.remove(paramT)) && (!this.c.remove(paramT)) && (!this.e.remove(paramT)))
        this.d.remove(paramT);
      paramT.mState = 4;
      paramT.mProgress = 0.0F;
      paramT.mCurrentSize = 0L;
      ArrayList localArrayList = new ArrayList(1);
      localArrayList.add(paramT);
      a(localArrayList);
      a();
      if (paramBoolean)
        doDeleteFile(paramT);
      return;
    }
  }

  public final void deleteTask(List<T> paramList, boolean paramBoolean)
  {
    synchronized (this.i)
    {
      this.h.delete(paramList);
      Iterator localIterator = paramList.iterator();
      if (!localIterator.hasNext())
      {
        a(paramList);
        a();
        if (paramBoolean)
          doDeleteFile(paramList);
        return;
      }
      NetworkLoadTask localNetworkLoadTask = (NetworkLoadTask)localIterator.next();
      if ((!this.a.remove(localNetworkLoadTask)) && (!this.b.remove(localNetworkLoadTask)) && (!this.c.remove(localNetworkLoadTask)) && (!this.e.remove(localNetworkLoadTask)))
        this.d.remove(localNetworkLoadTask);
      localNetworkLoadTask.mProgress = 0.0F;
      localNetworkLoadTask.mCurrentSize = 0L;
      localNetworkLoadTask.mState = 4;
    }
  }

  protected abstract void doBeforeContinue(T paramT);

  protected abstract void doBeforeStart(T paramT);

  protected void doDeleteFile(T paramT)
  {
  }

  protected void doDeleteFile(List<T> paramList)
  {
  }

  protected void doFinish(T paramT)
  {
  }

  protected abstract void doPause(T paramT);

  public List<T> getAllTasks()
  {
    ArrayList localArrayList = new ArrayList(this.a);
    localArrayList.addAll(this.b);
    localArrayList.addAll(this.c);
    localArrayList.addAll(this.e);
    localArrayList.addAll(this.d);
    return localArrayList;
  }

  public List<T> getFailedTasks()
  {
    return this.d;
  }

  public List<T> getFinishedTasks()
  {
    return this.e;
  }

  public List<T> getPausedTasks()
  {
    return this.c;
  }

  public List<T> getRunningTasks()
  {
    return this.a;
  }

  public List<T> getWaitingTasks()
  {
    return this.b;
  }

  public final void pauseTask(T paramT)
  {
    synchronized (this.i)
    {
      ArrayList localArrayList = new ArrayList(1);
      localArrayList.add(paramT);
      pauseTask(localArrayList);
      return;
    }
  }

  public final void pauseTask(List<T> paramList)
  {
    byte[] arrayOfByte = this.i;
    if (paramList != null);
    Iterator localIterator;
    try
    {
      if (paramList.size() == 0)
        return;
      localIterator = paramList.iterator();
      if (!localIterator.hasNext())
      {
        a(paramList);
        a();
      }
    }
    finally
    {
    }
    NetworkLoadTask localNetworkLoadTask = (NetworkLoadTask)localIterator.next();
    doPause(localNetworkLoadTask);
    if (!this.a.remove(localNetworkLoadTask))
      this.b.remove(localNetworkLoadTask);
    for (localNetworkLoadTask.isWaitingToPaused = true; ; localNetworkLoadTask.isWaitingToPaused = false)
    {
      if (!this.c.contains(localNetworkLoadTask))
        this.c.add(localNetworkLoadTask);
      localNetworkLoadTask.mState = 1;
      break;
    }
  }

  public void registListener(NetworkLoadTaskListener<T> paramNetworkLoadTaskListener)
  {
    this.g.add(0, new WeakReference(paramNetworkLoadTaskListener));
  }

  public void setNetworkLoadTaskDao(INetworkLoadTaskDao<T> paramINetworkLoadTaskDao)
  {
    this.h = paramINetworkLoadTaskDao;
    this.a = new ArrayList();
    this.b = new ArrayList();
    this.c = new ArrayList();
    this.e = new ArrayList();
    this.d = new ArrayList();
    List localList;
    if (this.h != null)
    {
      localList = this.h.getAll();
      if ((localList != null) && (localList.size() != 0))
        break label91;
    }
    while (true)
    {
      return;
      label91: Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
      {
        NetworkLoadTask localNetworkLoadTask = (NetworkLoadTask)localIterator.next();
        switch (localNetworkLoadTask.mState)
        {
        default:
          localNetworkLoadTask.mState = 1;
          if (!this.c.contains(localNetworkLoadTask))
            this.c.add(localNetworkLoadTask);
          break;
        case 3:
          if (!this.e.contains(localNetworkLoadTask))
            this.e.add(localNetworkLoadTask);
          break;
        case 1:
          if (!this.c.contains(localNetworkLoadTask))
            this.c.add(localNetworkLoadTask);
          break;
        case 2:
          if (!this.d.contains(localNetworkLoadTask))
            this.d.add(localNetworkLoadTask);
          break;
        }
      }
    }
  }

  public void setRunningTaskCountLimit(byte paramByte)
  {
    try
    {
      this.f = paramByte;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void startTask(T paramT)
  {
    synchronized (this.i)
    {
      ArrayList localArrayList = new ArrayList(1);
      localArrayList.add(paramT);
      startTask(localArrayList);
      return;
    }
  }

  public final void startTask(List<T> paramList)
  {
    byte[] arrayOfByte = this.i;
    if (paramList != null);
    while (true)
    {
      Iterator localIterator1;
      ArrayList localArrayList;
      Iterator localIterator2;
      try
      {
        if (paramList.size() == 0)
          break;
        this.h.delete(paramList);
        localIterator1 = paramList.iterator();
        if (!localIterator1.hasNext())
        {
          a();
          localArrayList = new ArrayList();
          localIterator2 = paramList.iterator();
          if (localIterator2.hasNext())
            break label215;
          if (localArrayList.size() > 0)
            a(localArrayList);
          this.h.insert(paramList);
        }
      }
      finally
      {
      }
      NetworkLoadTask localNetworkLoadTask1 = (NetworkLoadTask)localIterator1.next();
      doBeforeStart(localNetworkLoadTask1);
      if (!this.c.remove(localNetworkLoadTask1))
        this.d.remove(localNetworkLoadTask1);
      if ((!this.b.contains(localNetworkLoadTask1)) && (!this.a.contains(localNetworkLoadTask1)))
      {
        this.b.add(localNetworkLoadTask1);
        localNetworkLoadTask1.mState = -1;
        continue;
        label215: NetworkLoadTask localNetworkLoadTask2 = (NetworkLoadTask)localIterator2.next();
        if ((localNetworkLoadTask2.mState == -1) && (!this.a.contains(localNetworkLoadTask2)))
          localArrayList.add(localNetworkLoadTask2);
      }
    }
  }

  public void unregistListener(NetworkLoadTaskListener<T> paramNetworkLoadTaskListener)
  {
    if (paramNetworkLoadTaskListener == null);
    label60: 
    while (true)
    {
      return;
      for (int j = 0; ; j++)
      {
        if (j >= this.g.size())
          break label60;
        WeakReference localWeakReference = (WeakReference)this.g.get(j);
        if (localWeakReference.get() == paramNetworkLoadTaskListener)
        {
          this.g.remove(localWeakReference);
          break;
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bwu
 * JD-Core Version:    0.6.2
 */