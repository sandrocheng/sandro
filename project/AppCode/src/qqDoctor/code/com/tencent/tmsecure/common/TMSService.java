package com.tencent.tmsecure.common;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.tencent.tmsecure.utils.SDKUtil;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public abstract class TMSService extends Service
{
  private static final HashMap<Class<?>, BaseService> a = new HashMap();
  private static final HashMap<Class<?>, ArrayList<BaseServiceConnection>> b = new HashMap();

  public static IBinder bindService(Class<? extends BaseService> paramClass, BaseServiceConnection paramBaseServiceConnection)
  {
    while (true)
    {
      try
      {
        BaseService localBaseService = (BaseService)a.get(paramClass);
        if (localBaseService != null)
        {
          IBinder localIBinder2 = localBaseService.getBinder();
          ArrayList localArrayList = (ArrayList)b.get(paramClass);
          if (localArrayList == null)
          {
            localArrayList = new ArrayList(1);
            b.put(paramClass, localArrayList);
          }
          localArrayList.add(paramBaseServiceConnection);
          localIBinder1 = localIBinder2;
          return localIBinder1;
        }
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
      IBinder localIBinder1 = null;
    }
  }

  public static BaseService startService(BaseService paramBaseService)
  {
    return startService(paramBaseService, null);
  }

  public static BaseService startService(BaseService paramBaseService, Intent paramIntent)
  {
    try
    {
      if (a.containsKey(paramBaseService.getClass()))
      {
        ((BaseService)a.get(paramBaseService.getClass())).onStart(paramIntent);
        return paramBaseService;
      }
      paramBaseService.onCreate(TMSApplication.getApplicaionContext());
      paramBaseService.onStart(paramIntent);
      a.put(paramBaseService.getClass(), paramBaseService);
    }
    finally
    {
    }
  }

  public static boolean stopService(BaseService paramBaseService)
  {
    try
    {
      boolean bool = stopService(paramBaseService.getClass());
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static boolean stopService(Class<? extends BaseService> paramClass)
  {
    try
    {
      if (a.containsKey(paramClass))
      {
        List localList = (List)b.get(paramClass);
        if ((localList == null) || (localList.size() == 0))
        {
          ((BaseService)a.get(paramClass)).onDestory();
          a.remove(paramClass);
          b.remove(paramClass);
        }
        while (true)
        {
          return bool;
          bool = false;
        }
      }
      boolean bool = true;
    }
    finally
    {
    }
  }

  public static void unBindService(Class<? extends BaseService> paramClass, BaseServiceConnection paramBaseServiceConnection)
  {
    try
    {
      List localList = (List)b.get(paramClass);
      if (localList != null)
        localList.remove(paramBaseServiceConnection);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final IBinder onBind(Intent paramIntent)
  {
    return SDKClient.getInstance();
  }

  public void onCreate()
  {
    super.onCreate();
    if (SDKUtil.getSDKVersion() >= 5);
    for (Object localObject = new c(this); ; localObject = new b(this))
    {
      ((a)localObject).a();
      a.clear();
      b.clear();
      return;
    }
  }

  public void onDestroy()
  {
    try
    {
      Iterator localIterator = a.values().iterator();
      while (true)
      {
        if (!localIterator.hasNext())
        {
          a.clear();
          b.clear();
          super.onDestroy();
          return;
        }
        ((BaseService)localIterator.next()).onDestory();
      }
    }
    finally
    {
    }
  }

  public void onStart(Intent paramIntent, int paramInt)
  {
    super.onStart(paramIntent, paramInt);
    Object localObject;
    if (paramIntent == null)
      localObject = null;
    while (true)
    {
      DataEntity localDataEntity;
      String str1;
      String str2;
      if ((localObject != null) && ("com.tencent.tmsecure.action.SKIP_SMS_RECEIVED_EVENT".equals(localObject)))
      {
        localDataEntity = new DataEntity(3);
        str1 = paramIntent.getStringExtra("command");
        str2 = paramIntent.getStringExtra("data");
        if ((str1 == null) || (str2 == null));
      }
      try
      {
        Bundle localBundle = localDataEntity.bundle();
        localBundle.putString("command", str1);
        localBundle.putString("data", str2);
        SDKClient.getInstance().sendMessage(localDataEntity);
        return;
        localObject = paramIntent.getAction();
      }
      catch (RemoteException localRemoteException)
      {
        while (true)
          localRemoteException.printStackTrace();
      }
      catch (Exception localException)
      {
        while (true)
          localException.printStackTrace();
      }
    }
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    super.onStartCommand(paramIntent, paramInt1, paramInt2);
    return 1;
  }

  static abstract interface a
  {
    public abstract void a();
  }

  static final class b
    implements TMSService.a
  {
    private Service a;

    public b(Service paramService)
    {
      this.a = paramService;
    }

    public final void a()
    {
      this.a.setForeground(true);
    }
  }

  static final class c
    implements TMSService.a
  {
    private Service a;

    public c(Service paramService)
    {
      this.a = paramService;
    }

    public final void a()
    {
      try
      {
        Notification localNotification = new Notification();
        localNotification.setLatestEventInfo(this.a, null, null, PendingIntent.getActivity(this.a, 0, new Intent(), 0));
        this.a.startForeground(2147483647, localNotification);
        return;
      }
      catch (Exception localException)
      {
        while (true)
          localException.printStackTrace();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.common.TMSService
 * JD-Core Version:    0.6.2
 */