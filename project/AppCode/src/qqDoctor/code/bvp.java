import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.database.ContentObserver;
import android.os.Handler;
import android.provider.CallLog;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.aresengine.AbsSysDao;
import com.tencent.tmsecure.module.aresengine.AresEngineFactor;
import com.tencent.tmsecure.module.aresengine.AresEngineManager;
import com.tencent.tmsecure.module.aresengine.CallLogEntity;
import com.tencent.tmsecure.module.aresengine.ContactEntity;
import com.tencent.tmsecure.module.aresengine.DataFilter;
import com.tencent.tmsecure.module.aresengine.DataHandler;
import com.tencent.tmsecure.module.aresengine.DataIntercepterBuilder;
import com.tencent.tmsecure.module.aresengine.DataMonitor;
import com.tencent.tmsecure.module.aresengine.FilterConfig;
import com.tencent.tmsecure.module.aresengine.ICallLogDao;
import com.tencent.tmsecure.module.aresengine.IContactDao;
import com.tencent.tmsecure.module.aresengine.IEntityConverter;
import com.tencent.tmsecure.module.aresengine.ILastCallLogDao;
import com.tencent.tmsecure.module.aresengine.IPhoneDeviceController;
import com.tencent.tmsecure.module.aresengine.IShortCallChecker;
import com.tencent.tmsecure.module.aresengine.SystemCalllogFilter;
import com.tencent.tmsecure.utils.DualSimCallUtil;
import java.util.concurrent.ConcurrentLinkedQueue;

public final class bvp extends DataIntercepterBuilder<CallLogEntity>
{
  private Context a = TMSApplication.getApplicaionContext();

  public final DataFilter<CallLogEntity> getDataFilter()
  {
    return new bvp.b(this.a);
  }

  public final DataHandler getDataHandler()
  {
    return new DataHandler();
  }

  public final DataMonitor<CallLogEntity> getDataMonitor()
  {
    return new bvp.a(this.a);
  }

  protected final String getName()
  {
    return "system_call";
  }

  static final class a extends DataMonitor<CallLogEntity>
  {
    private Context a;
    private ContentObserver b;
    private BroadcastReceiver c;
    private final ConcurrentLinkedQueue<String> d = new ConcurrentLinkedQueue();
    private final ConcurrentLinkedQueue<String> e = new ConcurrentLinkedQueue();

    public a(Context paramContext)
    {
      this.a = paramContext;
      this.c = new bvq(this);
      DualSimCallUtil.registerDaulSimCallStateReceiver(this.a, this.c);
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.setPriority(2147483647);
      localIntentFilter.addCategory("android.intent.category.DEFAULT");
      localIntentFilter.addAction("android.intent.action.NEW_OUTGOING_CALL");
      this.a.registerReceiver(this.c, localIntentFilter);
      Handler localHandler = new Handler();
      this.b = new bvr(this, localHandler, localHandler);
      this.a.getContentResolver().registerContentObserver(CallLog.CONTENT_URI, true, this.b);
    }

    protected final void finalize()
      throws Throwable
    {
      this.a.getContentResolver().unregisterContentObserver(this.b);
      this.b = null;
      this.a.unregisterReceiver(this.c);
      this.c = null;
      super.finalize();
    }
  }

  static final class b extends SystemCalllogFilter
  {
    private IContactDao<? extends ContactEntity> a;
    private IContactDao<? extends ContactEntity> b;
    private IContactDao<? extends ContactEntity> c;
    private ICallLogDao<? extends CallLogEntity> d;
    private ICallLogDao<? extends CallLogEntity> e;
    private ILastCallLogDao f;
    private IShortCallChecker g;
    private AbsSysDao h;
    private IPhoneDeviceController i;
    private IEntityConverter j;
    private Context k;
    private buh l;
    private boolean m;

    public b(Context paramContext)
    {
      this.k = paramContext;
      this.m = b();
      this.l = new buh();
      buh localbuh = this.l;
      localbuh.a = new int[] { 1, 2, 4, 8, 16, 32, 128, 64, 256 };
      localbuh.b = new buh.a[localbuh.a.length];
      this.l.a(1, new bvt(this));
      this.l.a(2, new bvu(this));
      this.l.a(4, new bvv(this));
      this.l.a(8, new bvw(this));
      this.l.a(16, new bvx(this));
      this.l.a(32, new bvy(this));
      this.l.a(64, new bvz(this));
      this.l.a(128, new bwa(this));
      this.l.a(256, new bwb(this));
      AresEngineFactor localAresEngineFactor = ((AresEngineManager)ManagerCreator.getManager(AresEngineManager.class)).getAresEngineFactor();
      this.c = localAresEngineFactor.getPrivateListDao();
      this.a = localAresEngineFactor.getWhiteListDao();
      this.b = localAresEngineFactor.getBlackListDao();
      this.d = localAresEngineFactor.getCallLogDao();
      this.e = localAresEngineFactor.getPrivateCallLogDao();
      this.h = localAresEngineFactor.getSysDao();
      this.f = localAresEngineFactor.getLastCallLogDao();
      this.j = localAresEngineFactor.getEntityConverter();
      this.i = localAresEngineFactor.getPhoneDeviceController();
    }

    private boolean b()
    {
      PackageManager localPackageManager = this.k.getPackageManager();
      try
      {
        ApplicationInfo localApplicationInfo = localPackageManager.getApplicationInfo("com.htc.launcher", 0);
        bool = false;
        if (localApplicationInfo != null)
          bool = true;
        return bool;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        while (true)
          boolean bool = false;
      }
    }

    public final FilterConfig defalutFilterConfig()
    {
      FilterConfig localFilterConfig = new FilterConfig();
      localFilterConfig.set(1, 2);
      localFilterConfig.set(2, 0);
      localFilterConfig.set(4, 1);
      localFilterConfig.set(8, 0);
      localFilterConfig.set(16, 0);
      localFilterConfig.set(32, 3);
      localFilterConfig.set(128, 2);
      localFilterConfig.set(64, 2);
      localFilterConfig.set(256, 2);
      return localFilterConfig;
    }

    public final void setBlacklistDao(IContactDao<? extends ContactEntity> paramIContactDao)
    {
      this.b = paramIContactDao;
    }

    public final void setCalllogDao(ICallLogDao<? extends CallLogEntity> paramICallLogDao)
    {
      this.d = paramICallLogDao;
    }

    public final void setEntityConvertor(IEntityConverter paramIEntityConverter)
    {
      this.j = paramIEntityConverter;
    }

    public final void setLastCallLogDao(ILastCallLogDao paramILastCallLogDao)
    {
      this.f = paramILastCallLogDao;
    }

    public final void setPhoneDeviceController(IPhoneDeviceController paramIPhoneDeviceController)
    {
      this.i = paramIPhoneDeviceController;
    }

    public final void setPrivateCalllogDao(ICallLogDao<? extends CallLogEntity> paramICallLogDao)
    {
      this.e = paramICallLogDao;
    }

    public final void setPrivatelistDao(IContactDao<? extends ContactEntity> paramIContactDao)
    {
      this.c = paramIContactDao;
    }

    public final void setShortCallChecker(IShortCallChecker paramIShortCallChecker)
    {
      this.g = paramIShortCallChecker;
    }

    public final void setSysDao(AbsSysDao paramAbsSysDao)
    {
      this.h = paramAbsSysDao;
    }

    public final void setWhitelistDao(IContactDao<? extends ContactEntity> paramIContactDao)
    {
      this.a = paramIContactDao;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bvp
 * JD-Core Version:    0.6.2
 */