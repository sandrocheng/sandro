import android.content.BroadcastReceiver;
import android.content.Context;
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
import com.tencent.tmsecure.module.aresengine.IContactDao;
import com.tencent.tmsecure.module.aresengine.ILastCallLogDao;
import com.tencent.tmsecure.module.aresengine.IPhoneDeviceController;
import com.tencent.tmsecure.module.aresengine.InComingCallFilter;
import com.tencent.tmsecure.utils.DualSimCallUtil;

public final class buj extends DataIntercepterBuilder<CallLogEntity>
{
  private Context a = TMSApplication.getApplicaionContext();

  public final DataFilter<CallLogEntity> getDataFilter()
  {
    return new buj.a();
  }

  public final DataHandler getDataHandler()
  {
    return new DataHandler();
  }

  public final DataMonitor<CallLogEntity> getDataMonitor()
  {
    return new buj.b(this.a);
  }

  protected final String getName()
  {
    return "incoming_call";
  }

  static final class a extends InComingCallFilter
  {
    private IContactDao<? extends ContactEntity> a;
    private IContactDao<? extends ContactEntity> b;
    private IContactDao<? extends ContactEntity> c;
    private AbsSysDao d;
    private ILastCallLogDao e;
    private buh f = new buh();
    private IPhoneDeviceController g;

    a()
    {
      buh localbuh = this.f;
      localbuh.a = new int[] { 1, 2, 4, 8, 16, 32 };
      localbuh.b = new buh.a[localbuh.a.length];
      this.f.a(1, new buk(this, 1));
      this.f.a(2, new buk(this, 2));
      this.f.a(4, new buk(this, 4));
      this.f.a(8, new buk(this, 8));
      this.f.a(16, new buk(this, 16));
      this.f.a(32, new buk(this, 32));
      AresEngineFactor localAresEngineFactor = ((AresEngineManager)ManagerCreator.getManager(AresEngineManager.class)).getAresEngineFactor();
      this.g = localAresEngineFactor.getPhoneDeviceController();
      this.a = localAresEngineFactor.getWhiteListDao();
      this.b = localAresEngineFactor.getBlackListDao();
      this.c = localAresEngineFactor.getPrivateListDao();
      this.e = localAresEngineFactor.getLastCallLogDao();
      this.d = localAresEngineFactor.getSysDao();
    }

    public final FilterConfig defalutFilterConfig()
    {
      FilterConfig localFilterConfig = new FilterConfig();
      localFilterConfig.set(1, 0);
      localFilterConfig.set(2, 0);
      localFilterConfig.set(4, 1);
      localFilterConfig.set(8, 0);
      localFilterConfig.set(16, 0);
      localFilterConfig.set(32, 0);
      return localFilterConfig;
    }

    public final void setBlacklistDao(IContactDao<? extends ContactEntity> paramIContactDao)
    {
      this.b = paramIContactDao;
    }

    public final void setLastCallLogDao(ILastCallLogDao paramILastCallLogDao)
    {
      this.e = paramILastCallLogDao;
    }

    public final void setPhoneDeviceController(IPhoneDeviceController paramIPhoneDeviceController)
    {
      this.g = paramIPhoneDeviceController;
    }

    public final void setPrivatelistDao(IContactDao<? extends ContactEntity> paramIContactDao)
    {
      this.c = paramIContactDao;
    }

    public final void setSysDao(AbsSysDao paramAbsSysDao)
    {
      this.d = paramAbsSysDao;
    }

    public final void setWhitelistDao(IContactDao<? extends ContactEntity> paramIContactDao)
    {
      this.a = paramIContactDao;
    }
  }

  static final class b extends DataMonitor<CallLogEntity>
  {
    private Context a;
    private BroadcastReceiver b;

    public b(Context paramContext)
    {
      this.a = paramContext;
      this.b = new bum(this);
      DualSimCallUtil.registerDaulSimCallStateReceiver(this.a, this.b);
    }

    protected final void finalize()
      throws Throwable
    {
      this.a.unregisterReceiver(this.b);
      super.finalize();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     buj
 * JD-Core Version:    0.6.2
 */