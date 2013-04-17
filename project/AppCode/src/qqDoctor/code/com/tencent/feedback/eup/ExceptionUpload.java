package com.tencent.feedback.eup;

import android.content.Context;
import com.tencent.feedback.common.CommonInfo;
import com.tencent.feedback.common.Constants;
import com.tencent.feedback.common.ELog;
import com.tencent.feedback.common.f.a;
import com.tencent.feedback.common.strategy.UploadStrategyBean;
import com.tencent.feedback.common.strategy.a;
import com.tencent.feedback.upload.AbstractUploadDatas;
import com.tencent.feedback.upload.UploadHandler;
import java.util.Date;

public class ExceptionUpload extends com.tencent.feedback.common.e
{
  private static l eupDatas = null;
  private static ExceptionUpload instance;

  protected ExceptionUpload(Context paramContext, String paramString, boolean paramBoolean, UploadHandler paramUploadHandler)
  {
    super(paramContext, paramString, paramBoolean, paramUploadHandler);
    try
    {
      l locall = new l(this.mContext);
      eupDatas = locall;
      locall.a(false);
      g.a(paramContext).c(false);
      return;
    }
    finally
    {
    }
  }

  protected ExceptionUpload(Context paramContext, String paramString, boolean paramBoolean1, UploadHandler paramUploadHandler, boolean paramBoolean2)
  {
    super(paramContext, paramString, paramBoolean1, paramUploadHandler);
    ELog.info("using eupMerge " + paramBoolean2);
    try
    {
      l locall = new l(this.mContext);
      eupDatas = locall;
      locall.a(paramBoolean2);
      g.a(paramContext).c(paramBoolean2);
      return;
    }
    finally
    {
    }
  }

  public static void doUploadExceptionDatas(int paramInt)
  {
    ELog.debug("ExceptionUpload.doUploadExceptionDatas() start");
    if (Constants.isAllFunctionPowerOff())
      ELog.debug("ExceptionUpload function close");
    while (true)
    {
      return;
      ExceptionUpload localExceptionUpload;
      try
      {
        localExceptionUpload = instance;
        if ((localExceptionUpload == null) || (!localExceptionUpload.isEnableModule()))
          ELog.error("ExceptionUpload SDKModule instance == null || !instance.isEnableModule() , return!");
      }
      finally
      {
      }
      AbstractUploadDatas localAbstractUploadDatas = getExceptionUploadDatas(paramInt);
      UploadHandler localUploadHandler = getMyUpload();
      if ((localAbstractUploadDatas == null) || (localUploadHandler == null))
        continue;
      if ((localExceptionUpload.isStartAfterQuery()) && (!localExceptionUpload.isQueryFinish()))
      {
        ELog.info("diable ,should wait for queryfinish!");
        continue;
      }
      try
      {
        localUploadHandler.doUpload(eupDatas, null, null);
        ELog.debug("ExceptionUpload.doUploadExceptionDatas() end");
      }
      catch (Throwable localThrowable)
      {
        while (true)
        {
          localThrowable.printStackTrace();
          ELog.error("ExceptionUpload.doUploadExceptionDatas error");
        }
      }
    }
  }

  public static String getDefaultContract()
  {
    return g.e();
  }

  public static UploadHandler getDefaultUpload(Context paramContext)
  {
    return com.tencent.feedback.upload.e.a(paramContext);
  }

  public static IEupUserConfirmer getEupUserConfirmer()
  {
    return g.d();
  }

  public static AbstractUploadDatas getExceptionUploadDatas(int paramInt)
  {
    Object localObject1 = null;
    while (true)
    {
      try
      {
        ELog.debug("ExceptionUpload.getExceptionUploadDatas() start");
        if (Constants.isAllFunctionPowerOff())
        {
          ELog.debug("ExceptionUpload function close");
          return localObject1;
        }
        if ((instance == null) || (!instance.isEnableModule()))
        {
          ELog.error("ExceptionUpload SDKModule instance == null || !instance.isEnableModule() , return!");
          localObject1 = null;
          continue;
        }
      }
      finally
      {
      }
      localObject1 = null;
      if (paramInt > 0)
      {
        g localg = g.a(instance.getmContext());
        localObject1 = null;
        if (localg != null)
        {
          boolean bool = localg.c();
          localObject1 = null;
          if (bool)
          {
            l locall = eupDatas;
            localObject1 = null;
            if (locall != null)
              if ((instance.isStartAfterQuery()) && (!instance.isQueryFinish()))
              {
                ELog.info("diable ,should wait for queryfinish!");
                localObject1 = null;
              }
              else
              {
                if (eupDatas.a() != paramInt)
                  eupDatas.a(paramInt);
                eupDatas.a(g.e());
                ELog.debug("ExceptionUpload.getExceptionUploadDatas() end");
                localObject1 = eupDatas;
              }
          }
        }
      }
    }
  }

  public static ExceptionUpload getInstance(Context paramContext, String paramString, boolean paramBoolean, UploadHandler paramUploadHandler)
  {
    try
    {
      ExceptionUpload localExceptionUpload = getInstance(paramContext, paramString, paramBoolean, paramUploadHandler, false);
      return localExceptionUpload;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static ExceptionUpload getInstance(Context paramContext, String paramString, boolean paramBoolean1, UploadHandler paramUploadHandler, boolean paramBoolean2)
  {
    try
    {
      if (instance == null)
      {
        ELog.info("create ExceptionUpload instance");
        instance = new ExceptionUpload(paramContext, paramString, paramBoolean1, paramUploadHandler, paramBoolean2);
      }
      ExceptionUpload localExceptionUpload = instance;
      return localExceptionUpload;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static UploadHandler getMyUpload()
  {
    try
    {
      ELog.debug("ExceptionUpload.getMyUpload() start");
      if (instance == null)
        ELog.error("ExceptionUpload SDKModule instance == null , return!");
      UploadHandler localUploadHandler;
      for (Object localObject2 = null; ; localObject2 = localUploadHandler)
      {
        return localObject2;
        localUploadHandler = instance.getUploadHandler();
      }
    }
    finally
    {
    }
  }

  public static Thread.UncaughtExceptionHandler getYourUncaughtExceptionHandler()
  {
    return g.a();
  }

  public static boolean handleCatchException(Thread paramThread, Throwable paramThrowable)
  {
    boolean bool1 = false;
    ELog.debug("ExceptionUpload.handleCatchException() start");
    if (Constants.isAllFunctionPowerOff())
      ELog.debug("ExceptionUpload function close");
    while (true)
    {
      return bool1;
      try
      {
        if ((instance == null) || (!instance.isEnableModule()))
        {
          ELog.error("ExceptionUpload SDKModule instance == null || !instance.isEnableModule() , return!");
          bool1 = false;
          continue;
        }
      }
      finally
      {
      }
      if ((instance.isStartAfterQuery()) && (!instance.isQueryFinish()))
      {
        ELog.info("diable ,should wait for queryfinish!");
        bool1 = false;
        continue;
      }
      try
      {
        ELog.info("eup handleCatchException!");
        g localg = g.a(instance.getmContext());
        if (localg == null)
        {
          ELog.debug("ExceptionUpload.handleCatchException() end");
          bool1 = false;
          continue;
        }
        boolean bool2 = localg.a(paramThread, paramThrowable, false);
        bool1 = bool2;
        ELog.debug("ExceptionUpload.handleCatchException() end");
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
        ELog.error(localThrowable.getMessage());
        ELog.debug("ExceptionUpload.handleCatchException() error");
        ELog.debug("ExceptionUpload.handleCatchException() end");
        bool1 = false;
      }
      finally
      {
        ELog.debug("ExceptionUpload.handleCatchException() end");
      }
    }
  }

  public static boolean isDefaultEUP()
  {
    return g.b();
  }

  public static void setDefaultContract(String paramString)
  {
    g.b(paramString);
  }

  public static void setDefaultEUP(boolean paramBoolean)
  {
    g.a(paramBoolean);
  }

  public static void setEupParams(String paramString, int paramInt)
  {
    g.a(paramInt);
    g.a(paramString);
  }

  public static void setEupUserConfirmer(IEupUserConfirmer paramIEupUserConfirmer)
  {
    g.a(paramIEupUserConfirmer);
  }

  public static void setInstance(ExceptionUpload paramExceptionUpload)
  {
    try
    {
      if ((instance != null) && (instance != paramExceptionUpload))
      {
        ELog.info("close old one,to permit no mutiple instances in memory!");
        instance.closeSDKModule();
      }
      instance = paramExceptionUpload;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void setMyUpload(UploadHandler paramUploadHandler)
  {
    try
    {
      ELog.debug("ExceptionUpload.setMyUpload() start");
      if (instance == null)
        ELog.error("ExceptionUpload SDKModule instance == null || !instance.isEnableModule() , return!");
      while (true)
      {
        return;
        instance.setUploadHandler(paramUploadHandler);
        ELog.debug("ExceptionUpload.setMyUpload() end");
      }
    }
    finally
    {
    }
  }

  public static void setUserID(String paramString)
  {
    CommonInfo localCommonInfo = CommonInfo.getCommonInfo();
    if (localCommonInfo != null)
      localCommonInfo.setUserid(paramString);
  }

  public static void setYourUncaughtExceptionHandler(Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler)
  {
    g.a(paramUncaughtExceptionHandler);
  }

  public void onAppExited(Context paramContext)
  {
    super.onAppExited(paramContext);
    setInstance(null);
  }

  public void onInitByQuery()
  {
    super.onInitByQuery();
    ELog.info("ExceptionUpload.onInitByQuery() start");
    try
    {
      g localg = g.a(this.mContext);
      if (localg != null)
        localg.f();
      ELog.info("ExceptionUpload.onInitByQuery() end");
      return;
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        ELog.error("ExceptionUpload.onInitByQuery error");
        localThrowable.printStackTrace();
      }
    }
  }

  public void onLocalVersionChanged(String paramString1, String paramString2)
  {
    ELog.info("ExceptionUpload.onLocalVersionChanged from " + paramString1 + " to " + paramString2);
    ELog.debug("deleted old eup reord");
    try
    {
      ELog.debug("deleted eups :" + f.a.a(this.mContext, -1L, new Date().getTime()));
      return;
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        ELog.error("deleted old eup datas Error error");
        localThrowable.printStackTrace();
      }
    }
  }

  public void onUploadStrategyChange(UploadStrategyBean paramUploadStrategyBean)
  {
    super.onUploadStrategyChange(paramUploadStrategyBean);
    ELog.debug("ExceptionUpload.onUploadStrategyChange() start");
    if (paramUploadStrategyBean != null)
      if ((!paramUploadStrategyBean.isExceptionUploadServerOpen()) || (!paramUploadStrategyBean.isExceptionUploadUserOpen()))
        break label43;
    label43: for (boolean bool = true; ; bool = false)
    {
      setEnableModule(bool);
      ELog.debug("ExceptionUpload.onUploadStrategyChange() end");
      return;
    }
  }

  public void setEnableModule(boolean paramBoolean)
  {
    try
    {
      super.setEnableModule(paramBoolean);
      g localg = g.a(this.mContext);
      if (localg != null)
        localg.b(paramBoolean);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setIsUseEup(boolean paramBoolean)
  {
    ELog.debug("ExceptionUpload.setIsUseEup() start");
    if (Constants.isAllFunctionPowerOff())
      ELog.debug("Analytics function close");
    while (true)
    {
      return;
      ELog.info("user eup action :" + paramBoolean);
      if (this.mContext == null)
      {
        ELog.error("mContext == null!,return");
      }
      else
      {
        a locala = a.a(this.mContext);
        UploadStrategyBean localUploadStrategyBean = locala.c(this.mContext);
        localUploadStrategyBean.setExceptionUploadUserOpen(paramBoolean);
        locala.a(this.mContext, localUploadStrategyBean);
        ELog.debug("ExceptionUpload.setIsUseEup() end");
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.eup.ExceptionUpload
 * JD-Core Version:    0.6.2
 */