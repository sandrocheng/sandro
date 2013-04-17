import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import android.provider.Telephony.MmsSms;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.aresengine.AbsSysDao;
import com.tencent.tmsecure.module.aresengine.AresEngineFactor;
import com.tencent.tmsecure.module.aresengine.AresEngineManager;
import com.tencent.tmsecure.module.aresengine.ContactEntity;
import com.tencent.tmsecure.module.aresengine.DataFilter;
import com.tencent.tmsecure.module.aresengine.DataHandler;
import com.tencent.tmsecure.module.aresengine.DataIntercepterBuilder;
import com.tencent.tmsecure.module.aresengine.DataMonitor;
import com.tencent.tmsecure.module.aresengine.FilterConfig;
import com.tencent.tmsecure.module.aresengine.IContactDao;
import com.tencent.tmsecure.module.aresengine.IEntityConverter;
import com.tencent.tmsecure.module.aresengine.ISmsDao;
import com.tencent.tmsecure.module.aresengine.OutgoingSmsFiter;
import com.tencent.tmsecure.module.aresengine.SmsEntity;

public final class bvk extends DataIntercepterBuilder<SmsEntity>
{
  private Context a = TMSApplication.getApplicaionContext();

  public final DataFilter<SmsEntity> getDataFilter()
  {
    return new bvk.a();
  }

  public final DataHandler getDataHandler()
  {
    return new DataHandler();
  }

  public final DataMonitor<SmsEntity> getDataMonitor()
  {
    return new bvk.b(this.a);
  }

  protected final String getName()
  {
    return "outing_sms";
  }

  static final class a extends OutgoingSmsFiter
  {
    private IContactDao<? extends ContactEntity> a;
    private AbsSysDao b;
    private ISmsDao<? extends SmsEntity> c;
    private buh d = new buh();
    private IEntityConverter e;

    public a()
    {
      buh localbuh = this.d;
      localbuh.a = new int[] { 1 };
      localbuh.b = new buh.a[localbuh.a.length];
      this.d.a(1, new bvl(this));
      AresEngineFactor localAresEngineFactor = ((AresEngineManager)ManagerCreator.getManager(AresEngineManager.class)).getAresEngineFactor();
      this.e = localAresEngineFactor.getEntityConverter();
      this.a = localAresEngineFactor.getPrivateListDao();
      this.c = localAresEngineFactor.getPrivateSmsDao();
      this.b = localAresEngineFactor.getSysDao();
    }

    public final FilterConfig defalutFilterConfig()
    {
      FilterConfig localFilterConfig = new FilterConfig();
      localFilterConfig.set(1, 2);
      return localFilterConfig;
    }

    public final void setEntityConvertor(IEntityConverter paramIEntityConverter)
    {
      this.e = paramIEntityConverter;
    }

    public final void setPrivateListDao(IContactDao<? extends ContactEntity> paramIContactDao)
    {
      this.a = paramIContactDao;
    }

    public final void setPrivateSmsDao(ISmsDao<? extends SmsEntity> paramISmsDao)
    {
      this.c = paramISmsDao;
    }

    public final void setSystDao(AbsSysDao paramAbsSysDao)
    {
      this.b = paramAbsSysDao;
    }
  }

  static final class b extends DataMonitor<SmsEntity>
  {
    private ContentObserver a;
    private Context b;

    public b(Context paramContext)
    {
      this.b = paramContext;
      this.a = new bvn(this, new Handler());
      this.b.getContentResolver().registerContentObserver(Telephony.MmsSms.CONTENT_CONVERSATIONS_URI, true, this.a);
    }

    protected final void finalize()
      throws Throwable
    {
      if (this.a != null)
        this.b.getContentResolver().unregisterContentObserver(this.a);
      super.finalize();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bvk
 * JD-Core Version:    0.6.2
 */