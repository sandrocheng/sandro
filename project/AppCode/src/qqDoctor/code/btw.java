import android.content.Context;
import android.os.Bundle;
import com.tencent.tccdb.MCheckInput;
import com.tencent.tccdb.MMatchSysResult;
import com.tencent.tccdb.SmsChecker;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.common.DataEntity;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.MessageHandler;
import com.tencent.tmsecure.common.SDKClient;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.aresengine.AbsSysDao;
import com.tencent.tmsecure.module.aresengine.AresEngineFactor;
import com.tencent.tmsecure.module.aresengine.AresEngineManager;
import com.tencent.tmsecure.module.aresengine.DataFilter;
import com.tencent.tmsecure.module.aresengine.DataHandler;
import com.tencent.tmsecure.module.aresengine.DataIntercepter;
import com.tencent.tmsecure.module.aresengine.DataIntercepterBuilder;
import com.tencent.tmsecure.module.aresengine.DataMonitor;
import com.tencent.tmsecure.module.aresengine.FilterResult;
import com.tencent.tmsecure.module.aresengine.IIntelligentSmsChecker;
import com.tencent.tmsecure.module.aresengine.IIntelligentSmsChecker.CheckResult;
import com.tencent.tmsecure.module.aresengine.InComingSmsFilter;
import com.tencent.tmsecure.module.aresengine.InComingSmsFilterResultInformation;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import com.tencent.tmsecure.module.aresengine.TelephonyEntity;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicReference;

public final class btw extends BaseManager
{
  public final HashMap<String, DataIntercepter<? extends TelephonyEntity>> a = new HashMap();
  public IIntelligentSmsChecker b;
  public AresEngineFactor c;
  public Context d;
  public bvg e;

  public final DataIntercepter<? extends TelephonyEntity> a(String paramString)
  {
    return (DataIntercepter)this.a.get(paramString);
  }

  public final void a(DataIntercepterBuilder<? extends TelephonyEntity> paramDataIntercepterBuilder)
  {
    if (!this.a.containsKey(paramDataIntercepterBuilder.getName()))
    {
      this.a.put(paramDataIntercepterBuilder.getName(), paramDataIntercepterBuilder.a());
      return;
    }
    throw new RuntimeException("the intercepter named " + paramDataIntercepterBuilder.getName() + " had exist");
  }

  protected final void finalize()
    throws Throwable
  {
    super.finalize();
    if (this.e != null)
      this.e.a();
  }

  public final int getSingletonType()
  {
    return 1;
  }

  public final void onCreate(Context paramContext)
  {
    this.d = paramContext;
    this.b = new btw.b(paramContext);
    SDKClient.addMessageHandler(new btw.a());
    btd.a(paramContext, "rule_store.sys", null);
  }

  final class a
    implements MessageHandler
  {
    a()
    {
    }

    public final boolean isMatch(int paramInt)
    {
      if ((paramInt > 0) && (paramInt <= 4));
      for (boolean bool = true; ; bool = false)
        return bool;
    }

    public final DataEntity onProcessing(DataEntity paramDataEntity)
    {
      int i = paramDataEntity.what();
      DataEntity localDataEntity = new DataEntity(i);
      DataFilter localDataFilter;
      label95: boolean bool2;
      switch (i)
      {
      default:
        localDataEntity.bundle().putBoolean("has_exceprtion", true);
        return localDataEntity;
      case 2:
        SmsEntity localSmsEntity2 = SmsEntity.a(paramDataEntity.bundle().getByteArray("sms"));
        DataIntercepter localDataIntercepter2 = btw.this.a("incoming_sms");
        if (localDataIntercepter2 != null)
        {
          localDataFilter = localDataIntercepter2.dataFilter();
          if ((localDataIntercepter2 == null) || (!(localDataFilter instanceof InComingSmsFilter)))
            break label500;
          DataHandler localDataHandler = localDataIntercepter2.dataHandler();
          localDataFilter.a();
          Object[] arrayOfObject2 = new Object[2];
          arrayOfObject2[0] = Integer.valueOf(1);
          arrayOfObject2[1] = null;
          FilterResult localFilterResult = localDataFilter.filter(localSmsEntity2, arrayOfObject2);
          localDataFilter.a(localDataHandler);
          if (localFilterResult == null)
            break label500;
          bool2 = localFilterResult.isBlocked;
          InComingSmsFilterResultInformation localInComingSmsFilterResultInformation = new InComingSmsFilterResultInformation();
          localInComingSmsFilterResultInformation.mPkg = TMSApplication.getApplicaionContext().getPackageName();
          localInComingSmsFilterResultInformation.mField = localFilterResult.mFilterfiled;
          localInComingSmsFilterResultInformation.mState = localFilterResult.mState;
          localInComingSmsFilterResultInformation.mBlocked = localFilterResult.isBlocked;
          localDataEntity.bundle().putString("information", InComingSmsFilterResultInformation.a(localInComingSmsFilterResultInformation));
        }
        break;
      case 1:
      case 3:
      case 4:
      }
      while (true)
      {
        localDataEntity.bundle().putBoolean("blocked", bool2);
        break;
        localDataFilter = null;
        break label95;
        Bundle localBundle2 = paramDataEntity.bundle();
        SmsEntity localSmsEntity1 = SmsEntity.a(localBundle2.getByteArray("sms"));
        ArrayList localArrayList = InComingSmsFilterResultInformation.b(localBundle2.getString("informations"));
        DataIntercepter localDataIntercepter1 = btw.this.a("incoming_sms");
        String str3 = localBundle2.getString("event_sender");
        if (localDataIntercepter1 == null)
          break;
        DataMonitor localDataMonitor = localDataIntercepter1.dataMonitor();
        if ((localDataMonitor instanceof buo.a))
        {
          buo.a locala = (buo.a)localDataMonitor;
          Object[] arrayOfObject1 = new Object[3];
          arrayOfObject1[0] = Integer.valueOf(2);
          arrayOfObject1[1] = str3;
          arrayOfObject1[2] = localArrayList;
          locala.a(localSmsEntity1, arrayOfObject1);
          break;
        }
        localDataMonitor.notifyDataReached(localSmsEntity1, new Object[0]);
        break;
        Bundle localBundle1 = paramDataEntity.bundle();
        String str1 = localBundle1.getString("command");
        String str2 = localBundle1.getString("data");
        if ((str1 == null) || (str2 == null))
          break;
        if (str1.equals("add"))
        {
          btx.a().a(str2);
          break;
        }
        btx.a().b(str2);
        break;
        boolean bool1 = ((AresEngineManager)ManagerCreator.getManager(AresEngineManager.class)).getAresEngineFactor().getSysDao().supportThisPhone();
        localDataEntity.bundle().putBoolean("support_this_phone", bool1);
        localDataEntity.bundle().putString("pkg", TMSApplication.getApplicaionContext().getPackageName());
        break;
        label500: bool2 = false;
      }
    }
  }

  public static final class b
    implements IIntelligentSmsChecker
  {
    public static final int[][] a = arrayOfInt;
    private Context b;
    private SmsChecker c;

    static
    {
      int[][] arrayOfInt = new int[3][];
      arrayOfInt[0] = new int[2];
      arrayOfInt[1] = { 1, 1 };
      arrayOfInt[2] = { 2, 2 };
    }

    public b(Context paramContext)
    {
      this.b = paramContext;
      this.c = SmsChecker.getInstance(this.b);
    }

    private static int a(MMatchSysResult paramMMatchSysResult)
    {
      int i = paramMMatchSysResult.finalAction;
      if ((i <= 0) || (i > 4))
        i = -1;
      while (true)
      {
        return i;
        if ((i == 1) && ((paramMMatchSysResult.actionReason == 1) || (paramMMatchSysResult.actionReason == 5)))
          if (paramMMatchSysResult.minusMark <= 10)
            i = 1;
          else
            i = 4;
      }
    }

    public final IIntelligentSmsChecker.CheckResult check(SmsEntity paramSmsEntity)
    {
      IIntelligentSmsChecker.CheckResult localCheckResult = new IIntelligentSmsChecker.CheckResult();
      if ((paramSmsEntity.protocolType < 0) || (paramSmsEntity.protocolType > 2))
        paramSmsEntity.protocolType = 0;
      MCheckInput localMCheckInput = new MCheckInput(paramSmsEntity.phonenum, paramSmsEntity.body, 3, a[paramSmsEntity.protocolType][0], 0);
      AtomicReference localAtomicReference = new AtomicReference();
      this.c.checkSmsSys(localMCheckInput, localAtomicReference);
      MMatchSysResult localMMatchSysResult = (MMatchSysResult)localAtomicReference.get();
      localCheckResult.mInnterResult = localMMatchSysResult;
      localCheckResult.mContentType = localMMatchSysResult.contentType;
      localCheckResult.mSuggestion = a(localMMatchSysResult);
      if (paramSmsEntity.protocolType == 1)
        localCheckResult.mSuggestion = 1;
      return localCheckResult;
    }

    public final boolean isChartSms(SmsEntity paramSmsEntity)
    {
      AtomicReference localAtomicReference = new AtomicReference();
      String str = paramSmsEntity.body;
      boolean bool1 = false;
      if (str != null)
      {
        int i = paramSmsEntity.body.length();
        bool1 = false;
        if (i != 0);
      }
      else
      {
        return bool1;
      }
      if (paramSmsEntity.type == 2);
      for (int j = 1; ; j = 0)
      {
        MCheckInput localMCheckInput = new MCheckInput(paramSmsEntity.phonenum, paramSmsEntity.body, 3, paramSmsEntity.protocolType, j);
        boolean bool2 = this.c.checkChargeSms(localMCheckInput, localAtomicReference);
        if (bool2)
        {
          int k = a((MMatchSysResult)localAtomicReference.get());
          if (k != 2)
          {
            bool1 = false;
            if (k != 3)
              break;
          }
          bool1 = true;
          break;
        }
        bool1 = bool2;
        break;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     btw
 * JD-Core Version:    0.6.2
 */