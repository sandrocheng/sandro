package com.tencent.feedback.eup;

import android.content.Context;
import com.tencent.feedback.common.CommonInfo;
import com.tencent.feedback.common.b.a;
import com.tencent.feedback.common.b.e;
import com.tencent.feedback.common.b.f;
import com.tencent.feedback.common.c;
import com.tencent.feedback.upload.AbstractUploadDatas;
import com.tencent.feedback.upload.UploadHandler;

public class ExceptionUpload
  implements e
{
  private static UploadHandler a = null;
  private static l b = null;
  private static boolean c = false;
  private static boolean d = false;
  private Context e = null;

  public ExceptionUpload(Context paramContext, String paramString)
  {
    c.c("ExceptionUpload.ExceptionUpload() start");
    this.e = paramContext;
    h.a(paramContext);
    b = new l(this.e);
    if (CommonInfo.getCommonInfo() == null)
      CommonInfo.createCommonInfo(paramContext, paramString, "unknown");
    c.c("ExceptionUpload.ExceptionUpload() end");
  }

  public static void doUploadExceptionDatas(int paramInt)
  {
    while (true)
    {
      try
      {
        c.c("ExceptionUpload.doUploadExceptionDatas() start");
        if (paramInt <= 0)
          return;
        AbstractUploadDatas localAbstractUploadDatas = getExceptionUploadDatas(paramInt);
        UploadHandler localUploadHandler = getMyUpload();
        if ((localAbstractUploadDatas == null) || (localUploadHandler == null))
          continue;
        if ((isStartAfterQuery()) && (!c))
        {
          c.a("diable ,should wait for queryfinish!");
          continue;
        }
      }
      finally
      {
      }
      try
      {
        a.doUpload(b);
        c.c("ExceptionUpload.doUploadExceptionDatas() end");
      }
      catch (Throwable localThrowable)
      {
        while (true)
        {
          localThrowable.printStackTrace();
          c.b("ExceptionUpload.doUploadExceptionDatas error");
        }
      }
    }
  }

  public static String getDefaultContract()
  {
    return h.f();
  }

  public static UploadHandler getDefaultUpload(Context paramContext)
  {
    return com.tencent.feedback.upload.b.a(paramContext);
  }

  public static IEupUserConfirmer getEupUserConfirmer()
  {
    return h.e();
  }

  public static AbstractUploadDatas getExceptionUploadDatas(int paramInt)
  {
    while (true)
    {
      try
      {
        c.c("ExceptionUpload.getExceptionUploadDatas() start");
        localObject2 = null;
        if (paramInt <= 0)
          return localObject2;
        h localh = h.a();
        localObject2 = null;
        if (localh == null)
          continue;
        boolean bool = localh.d();
        localObject2 = null;
        if (!bool)
          continue;
        l locall = b;
        localObject2 = null;
        if (locall == null)
          continue;
        if ((isStartAfterQuery()) && (!c))
        {
          c.a("diable ,should wait for queryfinish!");
          localObject2 = null;
          continue;
        }
      }
      finally
      {
      }
      if (b.a() != paramInt)
        b.a(paramInt);
      b.a(h.f());
      c.c("ExceptionUpload.getExceptionUploadDatas() end");
      Object localObject2 = b;
    }
  }

  public static UploadHandler getMyUpload()
  {
    try
    {
      c.c("ExceptionUpload.getMyUpload() start");
      UploadHandler localUploadHandler = a;
      return localUploadHandler;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static Thread.UncaughtExceptionHandler getYourUncaughtExceptionHandler()
  {
    return h.b();
  }

  public static boolean handleCatchException(Thread paramThread, Throwable paramThrowable)
  {
    boolean bool1 = false;
    c.c("ExceptionUpload.handleCatchException() start");
    try
    {
      c.a("eup handleCatchException!");
      h localh = h.a();
      if (localh == null);
      while (true)
      {
        return bool1;
        if ((isStartAfterQuery()) && (!c))
        {
          c.a("diable ,should wait for queryfinish!");
          c.c("ExceptionUpload.handleCatchException() end");
          bool1 = false;
        }
        else
        {
          boolean bool2 = localh.a(paramThread, paramThrowable, false);
          bool1 = bool2;
          c.c("ExceptionUpload.handleCatchException() end");
        }
      }
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        localThrowable.printStackTrace();
        c.b(localThrowable.getMessage());
        c.c("ExceptionUpload.handleCatchException() error");
        c.c("ExceptionUpload.handleCatchException() end");
        bool1 = false;
      }
    }
    finally
    {
      c.c("ExceptionUpload.handleCatchException() end");
    }
  }

  public static boolean isDefaultEUP()
  {
    return h.c();
  }

  public static boolean isQueryFinish()
  {
    try
    {
      boolean bool = c;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static boolean isStartAfterQuery()
  {
    try
    {
      boolean bool = d;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void setDefaultContract(String paramString)
  {
    h.b(paramString);
  }

  public static void setDefaultEUP(boolean paramBoolean)
  {
    h.a(paramBoolean);
  }

  public static void setEupParams(String paramString, int paramInt)
  {
    h.a(paramInt);
    h.a(paramString);
  }

  public static void setEupUserConfirmer(IEupUserConfirmer paramIEupUserConfirmer)
  {
    h.a(paramIEupUserConfirmer);
  }

  public static void setMyUpload(UploadHandler paramUploadHandler)
  {
    try
    {
      c.c("ExceptionUpload.setMyUpload() start");
      a = paramUploadHandler;
      com.tencent.feedback.common.b.b.a(paramUploadHandler);
      c.c("ExceptionUpload.setMyUpload() end");
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected static void setQueryFinish(boolean paramBoolean)
  {
    try
    {
      c = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void setStartAfterQuery(boolean paramBoolean)
  {
    try
    {
      d = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void setYourUncaughtExceptionHandler(Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler)
  {
    h.a(paramUncaughtExceptionHandler);
  }

  public void onInitByQuery()
  {
    c.a("ExceptionUpload.onInitByQuery() start");
    try
    {
      setQueryFinish(true);
      h localh = h.a();
      if (localh != null)
      {
        localh.g();
        c.a("ExceptionUpload.onInitByQuery() end");
      }
    }
    catch (Throwable localThrowable)
    {
      while (true)
        localThrowable.printStackTrace();
    }
  }

  public void onSecurityStrategyChange(a parama)
  {
  }

  public void onUploadStrategyChange(f paramf)
  {
    c.c("ExceptionUpload.onUploadStrategyChange() start");
    if (paramf == null);
    while (true)
    {
      return;
      try
      {
        if ((paramf.f()) && (paramf.i()))
        {
          bool = true;
          h localh = h.a();
          if (localh == null)
            continue;
          localh.b(bool);
          c.c("ExceptionUpload.onUploadStrategyChange() end");
          continue;
        }
        boolean bool = false;
      }
      finally
      {
      }
    }
  }

  public void setIsUseEup(boolean paramBoolean)
  {
    c.c("ExceptionUpload.setIsUseEup() start");
    if (this.e == null);
    while (true)
    {
      return;
      com.tencent.feedback.common.b.b localb = com.tencent.feedback.common.b.b.a(this.e);
      localb.a(this);
      synchronized (localb.c(this.e))
      {
        ???.e(paramBoolean);
        localb.a(this.e, ???);
        c.c("ExceptionUpload.setIsUseEup() end");
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.feedback.eup.ExceptionUpload
 * JD-Core Version:    0.6.2
 */