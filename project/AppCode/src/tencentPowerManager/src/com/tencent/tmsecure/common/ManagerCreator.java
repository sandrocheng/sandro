package com.tencent.tmsecure.common;

import android.content.Context;
import ek;
import java.lang.ref.WeakReference;
import java.util.HashMap;

public final class ManagerCreator
{
  private static volatile ManagerCreator a = null;
  private HashMap<Class<? extends BaseManager>, BaseManager> b = new HashMap();
  private HashMap<Class<? extends BaseManager>, WeakReference<? extends BaseManager>> c = new HashMap();
  private Context d;

  private ManagerCreator(Context paramContext)
  {
    this.d = paramContext.getApplicationContext();
  }

  private <T extends BaseManager> T a(Class<T> paramClass)
  {
    if (!ek.a().a(paramClass))
      throw new SecurityException("Your license did not have the permission that geting the Manager named " + paramClass.getSimpleName());
    if (paramClass == null)
      throw new NullPointerException("the param of getManager can't be null.");
    try
    {
      BaseManager localBaseManager = (BaseManager)paramClass.cast(this.b.get(paramClass));
      if (localBaseManager == null)
      {
        WeakReference localWeakReference = (WeakReference)this.c.get(paramClass);
        if (localWeakReference != null)
          localBaseManager = (BaseManager)paramClass.cast(localWeakReference.get());
      }
      if (localBaseManager == null);
      try
      {
        localBaseManager = (BaseManager)paramClass.newInstance();
        localBaseManager.onCreate(this.d);
        if (localBaseManager.getSingletonType() == 1)
          this.b.put(paramClass, localBaseManager);
        while (true)
        {
          return localBaseManager;
          if (localBaseManager.getSingletonType() == 0)
            this.c.put(paramClass, new WeakReference(localBaseManager));
        }
      }
      catch (Exception localException)
      {
        throw new RuntimeException(localException);
      }
    }
    finally
    {
    }
  }

  private static ManagerCreator getInstance()
  {
    if (a == null);
    try
    {
      if (a == null)
        a = new ManagerCreator(TMSApplication.getApplicaionContext());
      return a;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static <T extends BaseManager> T getManager(Class<T> paramClass)
  {
    return getInstance().a(paramClass);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.tmsecure.common.ManagerCreator
 * JD-Core Version:    0.6.2
 */