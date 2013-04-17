import com.tencent.tmsecure.module.aresengine.AbsSysDao;
import com.tencent.tmsecure.module.aresengine.CallLogEntity;
import com.tencent.tmsecure.module.aresengine.ContactEntity;
import com.tencent.tmsecure.module.aresengine.DataFilter;
import com.tencent.tmsecure.module.aresengine.DataHandler;
import com.tencent.tmsecure.module.aresengine.DataIntercepter;
import com.tencent.tmsecure.module.aresengine.DataMonitor;
import com.tencent.tmsecure.module.aresengine.FilterConfig;
import com.tencent.tmsecure.module.aresengine.FilterResult;
import com.tencent.tmsecure.module.aresengine.ICallLogDao;
import com.tencent.tmsecure.module.aresengine.IContactDao;
import com.tencent.tmsecure.module.aresengine.IEntityConverter;
import com.tencent.tmsecure.module.aresengine.IKeyWordDao;
import com.tencent.tmsecure.module.aresengine.ILastCallLogDao;
import com.tencent.tmsecure.module.aresengine.IPhoneDeviceController;
import com.tencent.tmsecure.module.aresengine.IShortCallChecker;
import com.tencent.tmsecure.module.aresengine.ISmsDao;
import com.tencent.tmsecure.module.aresengine.ISpecialSmsChecker;
import com.tencent.tmsecure.module.aresengine.InComingCallFilter;
import com.tencent.tmsecure.module.aresengine.InComingSmsFilter;
import com.tencent.tmsecure.module.aresengine.IntelligentSmsHandler;
import com.tencent.tmsecure.module.aresengine.OutgoingSmsFiter;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import com.tencent.tmsecure.module.aresengine.SystemCalllogFilter;
import com.tencent.tmsecure.module.aresengine.TelephonyEntity;

public final class bvi
  implements DataIntercepter<TelephonyEntity>
{
  static final FilterConfig a = new FilterConfig();
  static final FilterResult b = new FilterResult();
  private bvi.a c = new bvi.a();
  private DataFilter<? extends TelephonyEntity> d;
  private DataHandler e = new DataHandler();

  public bvi(String paramString)
  {
    if (paramString.equals("incoming_call"))
      this.d = new bvi.b();
    while (true)
    {
      return;
      if (paramString.equals("incoming_sms"))
        this.d = new bvi.c();
      else if (paramString.equals("outing_sms"))
        this.d = new bvi.d();
      else if (paramString.equals("system_call"))
        this.d = new bvi.e();
    }
  }

  public final DataFilter<TelephonyEntity> dataFilter()
  {
    return this.d;
  }

  public final DataHandler dataHandler()
  {
    return this.e;
  }

  public final DataMonitor<TelephonyEntity> dataMonitor()
  {
    return this.c;
  }

  static final class a extends DataMonitor<TelephonyEntity>
  {
  }

  static final class b extends InComingCallFilter
  {
    public final FilterConfig defalutFilterConfig()
    {
      return bvi.a;
    }

    public final void setBlacklistDao(IContactDao<? extends ContactEntity> paramIContactDao)
    {
    }

    public final void setLastCallLogDao(ILastCallLogDao paramILastCallLogDao)
    {
    }

    public final void setPhoneDeviceController(IPhoneDeviceController paramIPhoneDeviceController)
    {
    }

    public final void setPrivatelistDao(IContactDao<? extends ContactEntity> paramIContactDao)
    {
    }

    public final void setSysDao(AbsSysDao paramAbsSysDao)
    {
    }

    public final void setWhitelistDao(IContactDao<? extends ContactEntity> paramIContactDao)
    {
    }
  }

  static final class c extends InComingSmsFilter
  {
    public final FilterConfig defalutFilterConfig()
    {
      return bvi.a;
    }

    public final void setBlacklistDao(IContactDao<? extends ContactEntity> paramIContactDao)
    {
    }

    public final void setEntityConvertor(IEntityConverter paramIEntityConverter)
    {
    }

    public final void setIntelligentSmsHandler(IntelligentSmsHandler paramIntelligentSmsHandler)
    {
    }

    public final void setKeywordDao(IKeyWordDao paramIKeyWordDao)
    {
    }

    public final void setLastCallLogDao(ILastCallLogDao paramILastCallLogDao)
    {
    }

    public final void setPhoneDeviceController(IPhoneDeviceController paramIPhoneDeviceController)
    {
    }

    public final void setPrivateSmsDao(ISmsDao<? extends SmsEntity> paramISmsDao)
    {
    }

    public final void setPrivatelistDao(IContactDao<? extends ContactEntity> paramIContactDao)
    {
    }

    public final void setSmsDao(ISmsDao<? extends SmsEntity> paramISmsDao)
    {
    }

    public final void setSpecialSmsChecker(ISpecialSmsChecker paramISpecialSmsChecker)
    {
    }

    public final void setSysDao(AbsSysDao paramAbsSysDao)
    {
    }

    public final void setWhitelistDao(IContactDao<? extends ContactEntity> paramIContactDao)
    {
    }
  }

  static final class d extends OutgoingSmsFiter
  {
    public final FilterConfig defalutFilterConfig()
    {
      return bvi.a;
    }

    public final void setEntityConvertor(IEntityConverter paramIEntityConverter)
    {
    }

    public final void setPrivateListDao(IContactDao<? extends ContactEntity> paramIContactDao)
    {
    }

    public final void setPrivateSmsDao(ISmsDao<? extends SmsEntity> paramISmsDao)
    {
    }

    public final void setSystDao(AbsSysDao paramAbsSysDao)
    {
    }
  }

  static final class e extends SystemCalllogFilter
  {
    public final FilterConfig defalutFilterConfig()
    {
      return bvi.a;
    }

    public final void setBlacklistDao(IContactDao<? extends ContactEntity> paramIContactDao)
    {
    }

    public final void setCalllogDao(ICallLogDao<? extends CallLogEntity> paramICallLogDao)
    {
    }

    public final void setEntityConvertor(IEntityConverter paramIEntityConverter)
    {
    }

    public final void setLastCallLogDao(ILastCallLogDao paramILastCallLogDao)
    {
    }

    public final void setPhoneDeviceController(IPhoneDeviceController paramIPhoneDeviceController)
    {
    }

    public final void setPrivateCalllogDao(ICallLogDao<? extends CallLogEntity> paramICallLogDao)
    {
    }

    public final void setPrivatelistDao(IContactDao<? extends ContactEntity> paramIContactDao)
    {
    }

    public final void setShortCallChecker(IShortCallChecker paramIShortCallChecker)
    {
    }

    public final void setSysDao(AbsSysDao paramAbsSysDao)
    {
    }

    public final void setWhitelistDao(IContactDao<? extends ContactEntity> paramIContactDao)
    {
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bvi
 * JD-Core Version:    0.6.2
 */