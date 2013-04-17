import android.content.Context;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.aresengine.AbsSysDao;
import com.tencent.tmsecure.module.aresengine.AresEngineFactor;
import com.tencent.tmsecure.module.aresengine.CallLogEntity;
import com.tencent.tmsecure.module.aresengine.ICallLogDao;
import com.tencent.tmsecure.module.aresengine.IContactDao;
import com.tencent.tmsecure.module.aresengine.IEntityConverter;
import com.tencent.tmsecure.module.aresengine.IKeyWordDao;
import com.tencent.tmsecure.module.aresengine.ILastCallLogDao;
import com.tencent.tmsecure.module.aresengine.IPhoneDeviceController;
import com.tencent.tmsecure.module.aresengine.ISmsDao;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import com.tencent.tmsecure.module.aresengine.TelephonyEntity;
import com.tencent.tmsecure.module.tools.SingletonManager;

public final class oo extends AresEngineFactor
{
  private static boolean b;
  private Context a;

  public oo(Context paramContext)
  {
    this.a = paramContext;
    if (u.a().b() > 1)
      b = true;
    while (true)
    {
      return;
      if (ft.e())
        b = true;
      else
        b = false;
    }
  }

  public static boolean a()
  {
    return b;
  }

  public final IContactDao getBlackListDao()
  {
    return new hq(0);
  }

  public final ICallLogDao getCallLogDao()
  {
    return new hi(0);
  }

  public final IEntityConverter getEntityConverter()
  {
    return new oo.a();
  }

  public final IKeyWordDao getKeyWordDao()
  {
    return il.a(this.a);
  }

  public final ILastCallLogDao getLastCallLogDao()
  {
    return im.a();
  }

  public final IPhoneDeviceController getPhoneDeviceController()
  {
    return super.getPhoneDeviceController();
  }

  public final ICallLogDao getPrivateCallLogDao()
  {
    return new hi(1);
  }

  public final IContactDao getPrivateListDao()
  {
    return new hq(2);
  }

  public final ISmsDao getPrivateSmsDao()
  {
    return new jp("securesmslog", "secure_mms_pdu", "secure_mms_parts");
  }

  public final ISmsDao getSmsDao()
  {
    return new jp("smslog", "mms_pdu", "mms_parts");
  }

  public final AbsSysDao getSysDao()
  {
    return (ki)((SingletonManager)ManagerCreator.getManager(SingletonManager.class)).getSingleton(ki.class);
  }

  public final IContactDao getWhiteListDao()
  {
    return new hq(1);
  }

  public final boolean isDualSimDevice()
  {
    return b;
  }

  public static final class a
    implements IEntityConverter
  {
    public static String a(TelephonyEntity paramTelephonyEntity, boolean paramBoolean)
    {
      String str1 = paramTelephonyEntity.phonenum;
      String str2;
      String str3;
      if ((str1 != null) && (str1.length() > 2))
        if (paramBoolean)
        {
          str2 = new hq(2).c(str1);
          if ((str2 != null) && (!str2.equals("")));
        }
        else
        {
          str2 = new hq(1).c(str1);
          if ((str2 == null) || (str2.equals("")))
          {
            str3 = new hq(0).c(str1);
            if ((str3 != null) && (str3.length() != 2))
              break label137;
            ((SingletonManager)ManagerCreator.getManager(SingletonManager.class)).getSingleton(ki.class);
            str2 = ki.a(str1);
            if ((str2 == null) || (str2.equals("")))
              str2 = null;
          }
        }
      while (true)
      {
        return str2;
        label137: str2 = hq.d(str3);
        continue;
        str2 = null;
      }
    }

    public final <T extends CallLogEntity> T convert(CallLogEntity paramCallLogEntity)
    {
      ky localky = new ky(paramCallLogEntity);
      localky.name = a(paramCallLogEntity, false);
      if ((localky.type == 3) && (localky.duration == 0L))
      {
        localky.duration = (System.currentTimeMillis() - paramCallLogEntity.date);
        localky.duration = (()(localky.duration / 1000.0D));
      }
      return localky;
    }

    public final <T extends SmsEntity> T convert(SmsEntity paramSmsEntity)
    {
      mk localmk = new mk(paramSmsEntity);
      localmk.id = -1;
      localmk.name = a(paramSmsEntity, localmk.g);
      localmk.date = paramSmsEntity.date;
      if (paramSmsEntity.type == 2);
      for (int i = 1; ; i = localmk.read)
      {
        localmk.a = i;
        return localmk;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     oo
 * JD-Core Version:    0.6.2
 */