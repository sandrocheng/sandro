import com.tencent.tmsecure.module.network.INetworkChangeCallBack;
import com.tencent.tmsecure.module.network.INetworkInfoDao;
import com.tencent.tmsecure.module.network.INetworkMonitor;
import com.tencent.tmsecure.module.network.NetDataEntity;
import com.tencent.tmsecure.module.network.NetDataEntityFactory;
import com.tencent.tmsecure.module.network.NetworkInfoEntity;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;

class bwl
  implements INetworkChangeCallBack, INetworkMonitor
{
  private NetDataEntityFactory a;
  private INetworkInfoDao b;
  private Date c;
  private long d = 0L;
  private long e = 0L;
  private long f = 0L;
  private NetDataEntity g;
  private int h = -1;
  private byte[] i = new byte[0];
  private List<INetworkChangeCallBack> j = new ArrayList();
  private boolean k = false;
  private boolean l = true;

  public bwl(NetDataEntityFactory paramNetDataEntityFactory, INetworkInfoDao paramINetworkInfoDao)
  {
    this.a = paramNetDataEntityFactory;
    this.b = paramINetworkInfoDao;
    NetworkInfoEntity localNetworkInfoEntity = this.b.getTodayNetworkInfoEntity();
    this.c = localNetworkInfoEntity.mStartDate;
    this.d = localNetworkInfoEntity.mTotalForMonth;
    this.e = localNetworkInfoEntity.mUsedForDay;
    this.f = localNetworkInfoEntity.mUsedForMonth;
    this.h = this.b.getClosingDayForMonth();
  }

  private NetworkInfoEntity c()
  {
    NetworkInfoEntity localNetworkInfoEntity = new NetworkInfoEntity();
    localNetworkInfoEntity.mTotalForMonth = this.d;
    localNetworkInfoEntity.mUsedForMonth = this.f;
    localNetworkInfoEntity.mRetialForMonth = (this.d - this.f);
    localNetworkInfoEntity.mUsedForDay = this.e;
    localNetworkInfoEntity.mStartDate = this.c;
    this.b.setTodayNetworkInfoEntity(localNetworkInfoEntity);
    return localNetworkInfoEntity;
  }

  public final void a()
  {
    NetDataEntity localNetDataEntity;
    long l1;
    long l3;
    if (this.k)
    {
      GregorianCalendar localGregorianCalendar1 = new GregorianCalendar();
      GregorianCalendar localGregorianCalendar2 = new GregorianCalendar();
      localGregorianCalendar2.setTime(this.c);
      GregorianCalendar localGregorianCalendar3 = k.a(localGregorianCalendar1, this.h);
      GregorianCalendar localGregorianCalendar4 = k.a(localGregorianCalendar2, this.h);
      if ((localGregorianCalendar1.get(5) == this.h) && (localGregorianCalendar3.get(2) != localGregorianCalendar4.get(2)))
      {
        this.f = 0L;
        onClosingDateReached();
      }
      if (localGregorianCalendar2.get(5) != localGregorianCalendar1.get(5))
      {
        NetworkInfoEntity localNetworkInfoEntity = new NetworkInfoEntity();
        localNetworkInfoEntity.mStartDate = this.c;
        localNetworkInfoEntity.mUsedForDay = this.e;
        this.b.insert(localNetworkInfoEntity);
        this.b.resetToDayNetworkInfoEntity();
        this.e = 0L;
        this.c = new Date();
        onDayChanged();
      }
      localNetDataEntity = this.a.getNetDataEntity();
      if (localNetDataEntity.mReceiver > 0L)
      {
        if (this.g == null)
          throw new NullPointerException("An unexpected exception had happen. The monitor's enable is " + this.k);
        l1 = localNetDataEntity.mReceiver + localNetDataEntity.mTranslate;
        long l2 = this.g.mReceiver + this.g.mTranslate;
        if ((l2 == -1L) || (l2 == 0L))
        {
          this.g = localNetDataEntity;
          l2 = l1;
        }
        l3 = l1 - l2;
        if (l3 >= 0L)
          break label340;
      }
    }
    while (true)
    {
      this.e = (l1 + this.e);
      this.f = (l1 + this.f);
      this.g = localNetDataEntity;
      this.b.setLastNetDataEntity(this.g);
      onNormalChanged(c());
      return;
      label340: l1 = l3;
    }
  }

  public final void a(boolean paramBoolean)
  {
    this.k = paramBoolean;
    if (this.k)
    {
      this.g = this.b.getLastNetDataEntity();
      if ((this.g == null) || (this.g.mReceiver < 0L))
      {
        this.g = this.a.getNetDataEntity();
        this.b.setLastNetDataEntity(this.g);
      }
    }
    while (true)
    {
      return;
      c();
    }
  }

  public int addCallback(INetworkChangeCallBack paramINetworkChangeCallBack)
  {
    byte[] arrayOfByte = this.i;
    if (paramINetworkChangeCallBack != null);
    try
    {
      this.j.add(paramINetworkChangeCallBack);
      if (paramINetworkChangeCallBack != null)
      {
        m = paramINetworkChangeCallBack.hashCode();
        return m;
      }
      int m = -1;
    }
    finally
    {
    }
  }

  public final void b()
  {
    NetworkInfoEntity localNetworkInfoEntity = this.b.getSystemTimeChange(this.c);
    if (localNetworkInfoEntity != null)
    {
      this.d = localNetworkInfoEntity.mTotalForMonth;
      this.f = localNetworkInfoEntity.mUsedForMonth;
      this.e = localNetworkInfoEntity.mUsedForDay;
    }
    this.c = new Date();
    c();
  }

  public void clearAllLogs()
  {
    this.e = 0L;
    this.f = 0L;
    c();
    this.c = new Date();
    this.g = this.a.getNetDataEntity();
    this.b.setLastNetDataEntity(this.g);
    this.b.resetToDayNetworkInfoEntity();
    this.b.clearAll();
  }

  public ArrayList<NetworkInfoEntity> getAllLogs()
  {
    ArrayList localArrayList = this.b.getAll();
    if ((localArrayList != null) && (localArrayList.size() > 0))
      Collections.sort(localArrayList);
    return localArrayList;
  }

  public boolean getRefreshState()
  {
    return this.l;
  }

  public void notifyConfigChange()
  {
    if (this.k)
    {
      this.h = this.b.getClosingDayForMonth();
      this.d = this.b.getTotalForMonth();
      this.f = this.b.getUsedForMonth();
      this.e = this.b.getTodayNetworkInfoEntity().mUsedForDay;
    }
  }

  public void onClosingDateReached()
  {
    synchronized (this.i)
    {
      try
      {
        Iterator localIterator;
        if (this.l)
          localIterator = this.j.iterator();
        while (true)
        {
          boolean bool = localIterator.hasNext();
          if (!bool)
            return;
          ((INetworkMonitor)localIterator.next()).onClosingDateReached();
        }
      }
      catch (Exception localException)
      {
        while (true)
          localException.printStackTrace();
      }
    }
  }

  public void onDayChanged()
  {
    synchronized (this.i)
    {
      try
      {
        Iterator localIterator;
        if (this.l)
          localIterator = this.j.iterator();
        while (true)
        {
          boolean bool = localIterator.hasNext();
          if (!bool)
            return;
          ((INetworkMonitor)localIterator.next()).onDayChanged();
        }
      }
      catch (Exception localException)
      {
        while (true)
          localException.printStackTrace();
      }
    }
  }

  public void onNormalChanged(NetworkInfoEntity paramNetworkInfoEntity)
  {
    synchronized (this.i)
    {
      try
      {
        Iterator localIterator;
        if (this.l)
          localIterator = this.j.iterator();
        while (true)
        {
          boolean bool = localIterator.hasNext();
          if (!bool)
            return;
          ((INetworkMonitor)localIterator.next()).onNormalChanged(paramNetworkInfoEntity);
        }
      }
      catch (Exception localException)
      {
        while (true)
          localException.printStackTrace();
      }
    }
  }

  public boolean removeCallback(int paramInt)
  {
    while (true)
    {
      int n;
      synchronized (this.i)
      {
        int m = this.j.size();
        n = m - 1;
        if (n < 0)
        {
          bool = false;
          return bool;
        }
        if (((INetworkMonitor)this.j.get(n)).hashCode() != paramInt)
          break label91;
        if (this.j.remove(n) != null)
          bool = true;
      }
      boolean bool = false;
      continue;
      label91: n--;
    }
  }

  public boolean removeCallback(INetworkChangeCallBack paramINetworkChangeCallBack)
  {
    byte[] arrayOfByte = this.i;
    if (paramINetworkChangeCallBack != null);
    try
    {
      boolean bool = this.j.remove(paramINetworkChangeCallBack);
      return bool;
      bool = false;
    }
    finally
    {
    }
  }

  public void setRefreshState(boolean paramBoolean)
  {
    this.l = paramBoolean;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bwl
 * JD-Core Version:    0.6.2
 */