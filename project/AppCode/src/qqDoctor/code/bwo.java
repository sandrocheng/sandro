import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.common.BaseService;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSService;
import com.tencent.tmsecure.module.netsetting.NetSettingManager;
import com.tencent.tmsecure.module.network.INetworkInfoDao;
import com.tencent.tmsecure.module.network.INetworkMonitor;
import com.tencent.tmsecure.module.network.NetDataEntityFactory;
import com.tencent.tmsecure.module.network.TrafficEntity;
import com.tencent.tmsecure.module.networkload.NetworkloadProperties;
import com.tencent.tmsecure.module.update.IUpdateObserver;
import com.tencent.tmsecure.module.update.UpdateManager;
import java.io.File;
import java.util.Collection;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public final class bwo extends BaseManager
{
  private String a = null;
  private BaseService b = new bwo.a((byte)0);
  private boolean c;
  private long d;
  private int e;
  private Context f;
  private bwn g;
  private final Map<String, bwl> h = new ConcurrentHashMap();
  private IUpdateObserver i = new bwp(this);
  private bwh j = new bwh();

  public static String a()
  {
    String str;
    if (!new File("/proc/self/net/dev").exists())
      if (!new File("/proc/net/dev").exists())
        str = "error";
    while (true)
    {
      return str;
      str = "/proc/net/dev";
      continue;
      str = "/proc/self/net/dev";
    }
  }

  public static void b(long paramLong)
  {
    NetworkloadProperties.updateSelfMobileDownloadBytes(paramLong);
  }

  public static void c(long paramLong)
  {
    NetworkloadProperties.updateSelfMobileUploadBytes(paramLong);
  }

  public static long g()
  {
    return NetworkloadProperties.getSelfMobileDownloadBytes();
  }

  public static long h()
  {
    return NetworkloadProperties.getSelfMobileUploadBytes();
  }

  private int i()
  {
    int k;
    try
    {
      if (btd.a(this.f, null, null) == null)
      {
        k = -1;
      }
      else
      {
        this.g.a();
        k = 0;
      }
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
    return k;
  }

  public final void a(int paramInt)
  {
    this.e = paramInt;
    switch (paramInt)
    {
    default:
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      return;
      this.d = 300000L;
      continue;
      this.d = 30000L;
      continue;
      this.d = 3000L;
    }
  }

  public final void a(long paramLong)
  {
    this.d = paramLong;
    this.e = 3;
  }

  public final void a(boolean paramBoolean)
  {
    Iterator localIterator;
    if (paramBoolean != this.c)
    {
      this.c = paramBoolean;
      localIterator = this.h.values().iterator();
      if (localIterator.hasNext())
        break label53;
      if (!this.c)
        break label72;
      TMSService.startService(this.b);
    }
    while (true)
    {
      return;
      label53: ((bwl)localIterator.next()).a(this.c);
      break;
      label72: TMSService.stopService(this.b);
    }
  }

  public final void a(String[] paramArrayOfString)
  {
    this.j.a(paramArrayOfString);
    NetworkloadProperties.updateSelfMobileDownloadBytes(0L);
    NetworkloadProperties.updateSelfMobileUploadBytes(0L);
  }

  public final void a(String[] paramArrayOfString, boolean paramBoolean)
  {
    bwh localbwh = this.j;
    String str1;
    String str2;
    if (((NetSettingManager)ManagerCreator.getManager(NetSettingManager.class)).isWifiActive())
    {
      str1 = "wifi";
      str2 = localbwh.a.getString("last_connection_type", null);
      if (str2 != null)
        break label88;
      str2 = str1;
    }
    label46: int k;
    while (true)
    {
      k = 0;
      if (k < paramArrayOfString.length)
        break label105;
      localbwh.b.putString("last_connection_type", str1);
      localbwh.b.commit();
      label88: 
      do
      {
        return;
        str1 = "mobile";
        break;
        if (!str1.equals(str2))
          break label46;
      }
      while (!paramBoolean);
    }
    label105: String str3 = paramArrayOfString[k];
    TrafficEntity localTrafficEntity1 = localbwh.b(str3);
    int m = localbwh.a(str3);
    int n;
    TrafficEntity localTrafficEntity2;
    if ((localTrafficEntity1 == null) && (m != -1))
    {
      TrafficEntity localTrafficEntity3 = new TrafficEntity();
      localTrafficEntity3.mPkg = str3;
      n = 1;
      localTrafficEntity2 = localTrafficEntity3;
    }
    while (true)
    {
      String str4;
      label185: long l1;
      long l2;
      long l3;
      long l4;
      if (localTrafficEntity2 != null)
      {
        if (str2 != null)
          break label411;
        str4 = localbwh.a.getString("last_connection_type", null);
        l1 = localbwh.c.b(m);
        l2 = localbwh.c.a(m);
        if (n != 0)
        {
          localTrafficEntity2.mLastDownValue = l2;
          localTrafficEntity2.mLastUpValue = l1;
        }
        if ((l1 == -1L) && ((localTrafficEntity2.mMobileUpValue > 0L) || (localTrafficEntity2.mWIFIUpValue > 0L)))
          l1 = 0L;
        if ((l2 == -1L) && ((localTrafficEntity2.mMobileDownValue > 0L) || (localTrafficEntity2.mWIFIDownValue > 0L)))
          l2 = 0L;
        l3 = l1 - localTrafficEntity2.mLastUpValue;
        l4 = l2 - localTrafficEntity2.mLastDownValue;
        if (l3 < 0L)
          l3 = l1;
        if (l4 < 0L)
          l4 = l1;
        if ((l1 != -1L) && (l2 != -1L))
          break label418;
        localTrafficEntity2.mMobileDownValue = 0L;
        localTrafficEntity2.mMobileUpValue = 0L;
        localTrafficEntity2.mWIFIDownValue = 0L;
        localTrafficEntity2.mWIFIUpValue = 0L;
      }
      while (true)
      {
        localTrafficEntity2.mLastUpValue = l1;
        localTrafficEntity2.mLastDownValue = l2;
        localbwh.b.putString(str3, TrafficEntity.toString(localTrafficEntity2));
        k++;
        break;
        label411: str4 = str2;
        break label185;
        label418: if (str4.equals("mobile"))
        {
          localTrafficEntity2.mMobileDownValue = (l4 + localTrafficEntity2.mMobileDownValue);
          localTrafficEntity2.mMobileUpValue = (l3 + localTrafficEntity2.mMobileUpValue);
        }
        else if (str4.equals("wifi"))
        {
          localTrafficEntity2.mWIFIDownValue = (l4 + localTrafficEntity2.mWIFIDownValue);
          localTrafficEntity2.mWIFIUpValue = (l3 + localTrafficEntity2.mWIFIUpValue);
        }
      }
      localTrafficEntity2 = localTrafficEntity1;
      n = 0;
    }
  }

  public final boolean a(String paramString)
  {
    boolean bool1 = this.h.containsKey(paramString);
    boolean bool2 = false;
    if (bool1)
    {
      Object localObject = this.h.remove(paramString);
      bool2 = false;
      if (localObject != null)
        bool2 = true;
    }
    return bool2;
  }

  public final boolean a(String paramString, INetworkInfoDao paramINetworkInfoDao)
  {
    if ((paramString != null) && (paramINetworkInfoDao != null) && (!this.h.containsKey(paramString)))
    {
      bwk localbwk = new bwk(paramINetworkInfoDao, this.g);
      localbwk.a(this.c);
      this.h.put(paramString, localbwk);
    }
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean a(String paramString, NetDataEntityFactory paramNetDataEntityFactory, INetworkInfoDao paramINetworkInfoDao)
  {
    boolean bool = false;
    if (paramString != null)
    {
      bool = false;
      if (paramNetDataEntityFactory != null)
      {
        bool = false;
        if (paramINetworkInfoDao != null)
        {
          bwl localbwl = new bwl(paramNetDataEntityFactory, paramINetworkInfoDao);
          localbwl.a(this.c);
          Object localObject = this.h.put(paramString, localbwl);
          bool = false;
          if (localObject != null)
            bool = true;
        }
      }
    }
    return bool;
  }

  public final int b()
  {
    return this.e;
  }

  public final INetworkMonitor b(String paramString)
  {
    if (this.h.containsKey(paramString));
    for (INetworkMonitor localINetworkMonitor = (INetworkMonitor)this.h.get(paramString); ; localINetworkMonitor = null)
      return localINetworkMonitor;
  }

  public final boolean b(String paramString, INetworkInfoDao paramINetworkInfoDao)
  {
    if ((paramString != null) && (paramINetworkInfoDao != null) && (!this.h.containsKey(paramString)))
    {
      bwm localbwm = new bwm(paramINetworkInfoDao, this.g);
      localbwm.a(this.c);
      this.h.put(paramString, localbwm);
    }
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long c()
  {
    return this.d;
  }

  public final TrafficEntity c(String paramString)
  {
    return this.j.b(paramString);
  }

  public final long d(String paramString)
  {
    TrafficEntity localTrafficEntity = this.j.b(paramString);
    if (localTrafficEntity != null);
    for (long l = localTrafficEntity.mMobileDownValue; ; l = -1L)
      return l;
  }

  public final boolean d()
  {
    return this.c;
  }

  public final long e(String paramString)
  {
    TrafficEntity localTrafficEntity = this.j.b(paramString);
    if (localTrafficEntity != null);
    for (long l = localTrafficEntity.mMobileUpValue; ; l = -1L)
      return l;
  }

  public final void e()
  {
    try
    {
      Iterator localIterator;
      if (this.c)
        localIterator = this.h.values().iterator();
      while (true)
      {
        if (!localIterator.hasNext())
        {
          if (this.b != null)
            TMSService.startService(this.b);
          return;
        }
        ((bwl)localIterator.next()).notifyConfigChange();
      }
    }
    finally
    {
    }
  }

  public final long f(String paramString)
  {
    TrafficEntity localTrafficEntity = this.j.b(paramString);
    if (localTrafficEntity != null);
    for (long l = localTrafficEntity.mWIFIDownValue; ; l = -1L)
      return l;
  }

  public final boolean f()
  {
    bwt localbwt = this.j.c;
    if ((!localbwt.b) && (!localbwt.a));
    for (boolean bool = false; ; bool = true)
      return bool;
  }

  protected final void finalize()
    throws Throwable
  {
    ((UpdateManager)ManagerCreator.getManager(UpdateManager.class)).removeObserver(32);
    super.finalize();
  }

  public final long g(String paramString)
  {
    TrafficEntity localTrafficEntity = this.j.b(paramString);
    if (localTrafficEntity != null);
    for (long l = localTrafficEntity.mWIFIUpValue; ; l = -1L)
      return l;
  }

  public final int getSingletonType()
  {
    return 1;
  }

  public final void onCreate(Context paramContext)
  {
    this.f = paramContext;
    btd.a(this.f, "net_interface_type_traffic_stat.dat", null);
    this.a = a();
    this.g = new bwn();
    this.g.a();
    a(0);
    ((UpdateManager)ManagerCreator.getManager(UpdateManager.class)).addObserver(32, this.i);
  }

  final class a extends BaseService
  {
    private HandlerThread a;
    private Looper b;
    private Handler c;
    private Runnable d = new bwo.a.a((byte)0);
    private bwo.b e = new bwo.b(bwo.this, (byte)0);

    private a()
    {
    }

    public final IBinder onBind()
    {
      return null;
    }

    public final void onCreate(Context paramContext)
    {
      super.onCreate(paramContext);
      this.a = new HandlerThread(getClass().getName());
      this.a.start();
      this.b = this.a.getLooper();
      this.c = new Handler(this.b);
      this.e.a(bwo.e(bwo.this));
    }

    public final void onDestory()
    {
      super.onDestory();
      this.c.removeCallbacks(this.d);
      this.b.quit();
      this.e.b(bwo.e(bwo.this));
    }

    public final void onStart(Intent paramIntent)
    {
      super.onStart(paramIntent);
      this.c.removeCallbacks(this.d);
      this.c.post(this.d);
    }

    final class a
      implements Runnable
    {
      private a()
      {
      }

      public final void run()
      {
        Iterator localIterator = bwo.b(bwo.this).values().iterator();
        Handler localHandler;
        Runnable localRunnable;
        long l1;
        long l2;
        if (!localIterator.hasNext())
          if (bwo.c(bwo.this))
          {
            localHandler = bwo.a.a(bwo.a.this);
            localRunnable = bwo.a.b(bwo.a.this);
            l1 = bwo.d(bwo.this);
            Date localDate = new Date();
            GregorianCalendar localGregorianCalendar = new GregorianCalendar();
            localGregorianCalendar.add(5, 1);
            localGregorianCalendar.set(11, 0);
            localGregorianCalendar.set(12, 0);
            localGregorianCalendar.set(13, 1);
            localGregorianCalendar.set(14, 0);
            l2 = localGregorianCalendar.getTimeInMillis() - localDate.getTime();
            if (l2 <= l1)
              break label173;
          }
        while (true)
        {
          localHandler.postDelayed(localRunnable, l1);
          return;
          ((bwl)localIterator.next()).a();
          break;
          label173: l1 = l2;
        }
      }
    }
  }

  final class b extends BroadcastReceiver
  {
    private boolean a;

    private b()
    {
    }

    public final void a(Context paramContext)
    {
      if (!this.a)
      {
        paramContext.registerReceiver(this, new IntentFilter("android.intent.action.TIME_SET"));
        this.a = true;
      }
    }

    public final void b(Context paramContext)
    {
      if (this.a)
      {
        paramContext.unregisterReceiver(this);
        this.a = false;
      }
    }

    public final void onReceive(Context paramContext, Intent paramIntent)
    {
      Iterator localIterator;
      if (paramIntent.getAction().equals("android.intent.action.TIME_SET"))
        localIterator = bwo.b(bwo.this).values().iterator();
      while (true)
      {
        if (!localIterator.hasNext())
          return;
        ((bwl)localIterator.next()).b();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bwo
 * JD-Core Version:    0.6.2
 */