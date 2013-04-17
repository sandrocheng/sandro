import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.tencent.tmsecure.common.DataEntity;
import com.tencent.tmsecure.common.ISDKClient;
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
import com.tencent.tmsecure.module.aresengine.IIntelligentSmsChecker;
import com.tencent.tmsecure.module.aresengine.IKeyWordDao;
import com.tencent.tmsecure.module.aresengine.ILastCallLogDao;
import com.tencent.tmsecure.module.aresengine.IPhoneDeviceController;
import com.tencent.tmsecure.module.aresengine.ISmsDao;
import com.tencent.tmsecure.module.aresengine.ISpecialSmsChecker;
import com.tencent.tmsecure.module.aresengine.InComingSmsFilter;
import com.tencent.tmsecure.module.aresengine.InComingSmsFilterResultInformation;
import com.tencent.tmsecure.module.aresengine.IntelligentSmsHandler;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class buo extends DataIntercepterBuilder<SmsEntity>
{
  private Context a = TMSApplication.getApplicaionContext();

  public final DataFilter<SmsEntity> getDataFilter()
  {
    return new buo.b();
  }

  public final DataHandler getDataHandler()
  {
    return new DataHandler();
  }

  public final DataMonitor<SmsEntity> getDataMonitor()
  {
    return new buo.a();
  }

  protected final String getName()
  {
    return "incoming_sms";
  }

  static final class a extends DataMonitor<SmsEntity>
  {
    private Context a = TMSApplication.getApplicaionContext();
    private bvf b = new bup(this);
    private buo.c c = new buo.c((byte)0);

    public a()
    {
      this.b.a(this.a);
    }

    final void a(SmsEntity paramSmsEntity, Object[] paramArrayOfObject)
    {
      if (paramSmsEntity != null)
        notifyDataReached(paramSmsEntity, paramArrayOfObject);
    }

    protected final void finalize()
      throws Throwable
    {
      this.b.b(this.a);
      super.finalize();
    }

    public final void setRegisterState(boolean paramBoolean)
    {
      if (paramBoolean != this.b.a())
      {
        if (!paramBoolean)
          break label39;
        this.b = new bup(this);
        this.b.a(this.a);
      }
      while (true)
      {
        return;
        label39: this.b.b(this.a);
      }
    }
  }

  static final class b extends InComingSmsFilter
  {
    private IContactDao<? extends ContactEntity> a;
    private IContactDao<? extends ContactEntity> b;
    private IContactDao<? extends ContactEntity> c;
    private AbsSysDao d;
    private ISmsDao<? extends SmsEntity> e;
    private ISmsDao<? extends SmsEntity> f;
    private IKeyWordDao g;
    private ILastCallLogDao h;
    private IntelligentSmsHandler i;
    private IEntityConverter j;
    private IPhoneDeviceController k;
    private ISpecialSmsChecker l;
    private IIntelligentSmsChecker m = ((AresEngineManager)ManagerCreator.getManager(AresEngineManager.class)).getIntelligentSmsChecker();
    private buh n = new buh();

    b()
    {
      buh localbuh = this.n;
      localbuh.a = new int[] { 256, 1, 2, 4, 8, 16, 32, 64, 128 };
      localbuh.b = new buh.a[localbuh.a.length];
      this.n.a(256, new buq(this));
      this.n.a(1, new buu(this));
      this.n.a(2, new buv(this));
      this.n.a(4, new buw(this));
      this.n.a(8, new bux(this));
      this.n.a(16, new buy(this));
      this.n.a(32, new buz(this));
      this.n.a(64, new bva(this));
      this.n.a(128, new bvb(this));
      AresEngineFactor localAresEngineFactor = ((AresEngineManager)ManagerCreator.getManager(AresEngineManager.class)).getAresEngineFactor();
      this.k = localAresEngineFactor.getPhoneDeviceController();
      this.c = localAresEngineFactor.getPrivateListDao();
      this.a = localAresEngineFactor.getWhiteListDao();
      this.b = localAresEngineFactor.getBlackListDao();
      this.g = localAresEngineFactor.getKeyWordDao();
      this.d = localAresEngineFactor.getSysDao();
      this.h = localAresEngineFactor.getLastCallLogDao();
      this.e = localAresEngineFactor.getSmsDao();
      this.f = localAresEngineFactor.getPrivateSmsDao();
      this.j = localAresEngineFactor.getEntityConverter();
    }

    private static ArrayList<InComingSmsFilterResultInformation> b(Object[] paramArrayOfObject)
    {
      if ((paramArrayOfObject != null) && (paramArrayOfObject.length > 2) && (((Integer)paramArrayOfObject[0]).intValue() == 2));
      for (ArrayList localArrayList = (ArrayList)paramArrayOfObject[2]; ; localArrayList = null)
        return localArrayList;
    }

    public final FilterConfig defalutFilterConfig()
    {
      FilterConfig localFilterConfig = new FilterConfig();
      localFilterConfig.set(256, 3);
      localFilterConfig.set(1, 2);
      localFilterConfig.set(2, 0);
      localFilterConfig.set(4, 1);
      localFilterConfig.set(8, 0);
      localFilterConfig.set(16, 0);
      localFilterConfig.set(32, 1);
      localFilterConfig.set(64, 2);
      localFilterConfig.set(128, 1);
      return localFilterConfig;
    }

    public final void setBlacklistDao(IContactDao<? extends ContactEntity> paramIContactDao)
    {
      this.b = paramIContactDao;
    }

    public final void setEntityConvertor(IEntityConverter paramIEntityConverter)
    {
      this.j = paramIEntityConverter;
    }

    public final void setIntelligentSmsHandler(IntelligentSmsHandler paramIntelligentSmsHandler)
    {
      this.i = paramIntelligentSmsHandler;
    }

    public final void setKeywordDao(IKeyWordDao paramIKeyWordDao)
    {
      this.g = paramIKeyWordDao;
    }

    public final void setLastCallLogDao(ILastCallLogDao paramILastCallLogDao)
    {
      this.h = paramILastCallLogDao;
    }

    public final void setPhoneDeviceController(IPhoneDeviceController paramIPhoneDeviceController)
    {
      this.k = paramIPhoneDeviceController;
    }

    public final void setPrivateSmsDao(ISmsDao<? extends SmsEntity> paramISmsDao)
    {
      this.f = paramISmsDao;
    }

    public final void setPrivatelistDao(IContactDao<? extends ContactEntity> paramIContactDao)
    {
      this.c = paramIContactDao;
    }

    public final void setSmsDao(ISmsDao<? extends SmsEntity> paramISmsDao)
    {
      this.e = paramISmsDao;
    }

    public final void setSpecialSmsChecker(ISpecialSmsChecker paramISpecialSmsChecker)
    {
      this.l = paramISpecialSmsChecker;
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

  static final class c
  {
    btx a = btx.a();

    private static String a(List<ISDKClient> paramList)
    {
      String str1 = TMSApplication.getApplicaionContext().getPackageName();
      DataEntity localDataEntity1 = new DataEntity(4);
      Object localObject;
      try
      {
        Iterator localIterator = paramList.iterator();
        DataEntity localDataEntity2;
        do
        {
          if (!localIterator.hasNext())
          {
            localObject = str1;
            break;
          }
          localDataEntity2 = ((ISDKClient)localIterator.next()).sendMessage(localDataEntity1);
        }
        while ((localDataEntity2 == null) || (!localDataEntity2.bundle().getBoolean("support_this_phone")));
        String str2 = localDataEntity2.bundle().getString("pkg");
        localObject = str2;
      }
      catch (RemoteException localRemoteException)
      {
        localRemoteException.printStackTrace();
        localObject = str1;
      }
      return localObject;
    }

    final ArrayList<ISDKClient> a(SmsEntity paramSmsEntity, List<InComingSmsFilterResultInformation> paramList)
    {
      ArrayList localArrayList1 = this.a.b();
      ArrayList localArrayList2 = new ArrayList();
      DataEntity localDataEntity1 = new DataEntity(2);
      localDataEntity1.bundle().putByteArray("sms", SmsEntity.a(paramSmsEntity));
      while (true)
      {
        int j;
        try
        {
          int i = localArrayList1.size();
          j = i - 1;
          if (j < 0)
          {
            if (localArrayList2.size() == 0)
            {
              localArrayList3 = localArrayList1;
              return localArrayList3;
            }
          }
          else
          {
            ISDKClient localISDKClient = (ISDKClient)localArrayList1.get(j);
            DataEntity localDataEntity2 = localISDKClient.sendMessage(localDataEntity1);
            if (localDataEntity2 != null)
            {
              boolean bool = localDataEntity2.bundle().getBoolean("blocked");
              InComingSmsFilterResultInformation localInComingSmsFilterResultInformation = InComingSmsFilterResultInformation.a(localDataEntity2.bundle().getString("information"));
              if (localInComingSmsFilterResultInformation != null)
                paramList.add(localInComingSmsFilterResultInformation);
              if (bool)
                localArrayList2.add(localISDKClient);
            }
            else
            {
              localArrayList1.remove(localISDKClient);
            }
          }
        }
        catch (RemoteException localRemoteException)
        {
          localRemoteException.printStackTrace();
          continue;
          ArrayList localArrayList3 = localArrayList2;
          continue;
        }
        j--;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     buo
 * JD-Core Version:    0.6.2
 */