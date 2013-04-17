package com.tencent.feedback.a;

import android.content.Context;
import com.tencent.feedback.common.Constants;
import com.tencent.feedback.common.ELog;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public abstract class c
{
  private static c a = null;

  public static c a(Context paramContext)
  {
    try
    {
      if ((a == null) && (paramContext != null))
      {
        a locala = new a(paramContext);
        a = locala;
        locala.a();
      }
      c localc = a;
      return localc;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void a(c paramc)
  {
    try
    {
      ELog.info("CountProccessAbs setInstance " + null);
      if (a != null)
        a.b();
      a = null;
      ELog.info("CountProccessAbs setInstance end");
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public abstract a a(String paramString);

  public abstract List a(int paramInt);

  public abstract void a();

  public abstract void a(a parama);

  public abstract void a(String paramString, long[] paramArrayOfLong, boolean paramBoolean1, boolean paramBoolean2);

  public abstract void b();

  public static final class a extends c
  {
    private static long c = 600000L;
    private Map a = null;
    private Context b = null;

    protected a(Context paramContext)
    {
      this.b = paramContext;
      this.a = new HashMap();
    }

    private void d()
    {
      try
      {
        ELog.info("loadCountBeanFromDB start");
        List localList = b.a(this.b);
        if (localList != null)
        {
          Iterator localIterator = localList.iterator();
          while (localIterator.hasNext())
          {
            a locala = (a)localIterator.next();
            if (Constants.IS_DEBUG)
              ELog.debug(locala.toString());
            this.a.put(locala.a(), locala);
          }
        }
      }
      finally
      {
      }
      ELog.info("loadCountBeanFromDB end");
    }

    public final a a(String paramString)
    {
      try
      {
        ELog.debug("CountProcessImp.getAResult() start " + paramString);
        if (paramString == null);
        for (a locala = null; ; locala = (a)this.a.get(paramString))
          return locala;
      }
      finally
      {
      }
    }

    public final List a(int paramInt)
    {
      while (true)
      {
        ArrayList localArrayList;
        try
        {
          ELog.debug("CountProcessImp.listAllCount() start type " + paramInt);
          Collection localCollection = this.a.values();
          if (localCollection != null)
          {
            int i = localCollection.size();
            if (i > 0);
          }
          else
          {
            localObject2 = null;
            return localObject2;
          }
          localArrayList = new ArrayList();
          Iterator localIterator = localCollection.iterator();
          if (localIterator.hasNext())
          {
            a locala = (a)localIterator.next();
            if ((paramInt != 11) && ((paramInt != 12) || (!locala.g())) && ((paramInt != 13) || (locala.g())))
              continue;
            localArrayList.add(locala);
            continue;
          }
        }
        finally
        {
        }
        Object localObject2 = localArrayList;
      }
    }

    public final void a()
    {
      try
      {
        ELog.info("count process star process");
        d();
        com.tencent.feedback.common.c.a().a(10, new d(this), c, c);
        ELog.info("count process start process end");
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public final void a(a parama)
    {
      try
      {
        ELog.debug("CountProcessImp.update() start ");
        if (parama != null)
        {
          String str = parama.a();
          if (str != null)
            break label23;
        }
        while (true)
        {
          return;
          label23: if (Constants.IS_DEBUG == true)
          {
            ELog.debug("update id:" + parama.a());
            if (parama.f() != null)
              for (long l : parama.f())
                ELog.debug("" + l);
          }
          if (this.a.put(parama.a(), parama) != null)
            ELog.info("replace mapping");
          ELog.debug("CountProcessImp.update()() end");
        }
      }
      finally
      {
      }
    }

    public final void a(String paramString, long[] paramArrayOfLong, boolean paramBoolean1, boolean paramBoolean2)
    {
      while (true)
      {
        a locala1;
        long l;
        long[] arrayOfLong;
        try
        {
          ELog.debug("CountProcessImp.count() start " + paramString);
          if ((this.a != null) && (paramString != null))
          {
            locala1 = (a)this.a.get(paramString);
            l = new Date().getTime();
            if (locala1 != null)
              continue;
            ELog.debug("cout a new one!" + paramString);
            a locala2 = new a(paramBoolean2, paramString, paramBoolean1);
            locala2.a(1);
            locala2.a(paramArrayOfLong);
            locala2.b(l);
            locala2.c(l);
            this.a.put(paramString, locala2);
            if (Constants.IS_DEBUG)
              ELog.debug("" + locala2.toString());
          }
          return;
          ELog.debug("update old count" + paramString);
          if (Constants.IS_DEBUG)
            ELog.debug(locala1.toString());
          arrayOfLong = locala1.f();
          if ((arrayOfLong == null) && (paramArrayOfLong == null))
          {
            ELog.debug("just update count times");
            locala1.a(1 + locala1.e());
            locala1.c(l);
            continue;
          }
        }
        finally
        {
        }
        if ((arrayOfLong != null) && (paramArrayOfLong != null) && (arrayOfLong.length == paramArrayOfLong.length))
        {
          ELog.debug("just update count values");
          for (int i = 0; i < arrayOfLong.length; i++)
          {
            arrayOfLong[i] += paramArrayOfLong[i];
            ELog.debug("" + arrayOfLong[i]);
          }
          locala1.a(1 + locala1.e());
          locala1.a(arrayOfLong);
          locala1.c(l);
        }
        else
        {
          ELog.error("count values style not same!!");
        }
      }
    }

    public final void b()
    {
      try
      {
        ELog.info("count process stop star");
        com.tencent.feedback.common.c.a().a(10, true);
        c();
        ELog.info("count process stop end");
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    protected final void c()
    {
      try
      {
        ELog.debug("syncCountBean start");
        if (this.a != null)
        {
          boolean bool = b.a(this.b, a(11));
          ELog.debug("result:" + bool);
        }
        ELog.debug("syncCountBean end");
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.a.c
 * JD-Core Version:    0.6.2
 */