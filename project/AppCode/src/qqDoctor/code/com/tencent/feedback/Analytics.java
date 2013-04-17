package com.tencent.feedback;

import android.content.Context;
import com.tencent.feedback.common.CommonInfo;
import com.tencent.feedback.common.Constants;
import com.tencent.feedback.common.ELog;
import com.tencent.feedback.common.strategy.UploadStrategyBean;
import com.tencent.feedback.common.strategy.a;
import com.tencent.feedback.eup.ExceptionUpload;
import com.tencent.feedback.upload.UploadHandler;

public class Analytics
{
  private static Context mContext = null;
  private static com.tencent.feedback.common.e[] mSdkModules = null;

  public static void enableAnalytics(Context paramContext, String paramString, boolean paramBoolean, UploadHandler paramUploadHandler)
  {
    try
    {
      enableAnalytics(paramContext, paramString, paramBoolean, paramUploadHandler, false);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void enableAnalytics(Context paramContext, String paramString, boolean paramBoolean1, UploadHandler paramUploadHandler, boolean paramBoolean2)
  {
    while (true)
    {
      try
      {
        ELog.info("Analytics.enableAnalytics() start");
        if (Constants.isAllFunctionPowerOff())
        {
          ELog.debug("Analytics function close");
          return;
        }
        if ((paramContext == null) || (paramString == null))
        {
          ELog.error("enableAnalytics fail!");
          continue;
        }
      }
      finally
      {
      }
      mContext = paramContext.getApplicationContext();
      if (CommonInfo.getCommonInfo() == null)
        CommonInfo.createCommonInfo(mContext, paramString, "unknown");
      com.tencent.feedback.common.e[] arrayOfe = new com.tencent.feedback.common.e[2];
      mSdkModules = arrayOfe;
      arrayOfe[0] = UserActionRecord.getInstance(mContext, paramString, paramBoolean1, paramUploadHandler);
      mSdkModules[1] = ExceptionUpload.getInstance(mContext, paramString, paramBoolean1, paramUploadHandler, paramBoolean2);
      ELog.info("Analytics.enableAnalytics() end");
    }
  }

  public static void enableCrashRecord(boolean paramBoolean)
  {
    while (true)
    {
      try
      {
        ELog.info("Analytics.enableCrashRecord() start");
        if (Constants.isAllFunctionPowerOff())
        {
          ELog.debug("Analytics function close");
          return;
        }
        ELog.debug("enableCrashRecord start");
        ELog.info("user eup action :" + paramBoolean);
        if (mContext == null)
        {
          ELog.error("mContext == null!,return");
          continue;
        }
      }
      finally
      {
      }
      a locala = a.a(mContext);
      UploadStrategyBean localUploadStrategyBean = locala.c(mContext);
      localUploadStrategyBean.setExceptionUploadUserOpen(paramBoolean);
      locala.a(mContext, localUploadStrategyBean);
      ELog.info("enableCrashRecord end");
    }
  }

  public static void enableSpeedRecord(boolean paramBoolean)
  {
    try
    {
      ELog.info("Analytics.enableSpeedRecord() start");
      if (Constants.isAllFunctionPowerOff())
        ELog.debug("Analytics function close");
      while (true)
      {
        return;
        if (mContext != null)
        {
          a locala = a.a(mContext);
          UploadStrategyBean localUploadStrategyBean = locala.c(mContext);
          localUploadStrategyBean.setSpeedMonitorUserOpen(paramBoolean);
          locala.a(mContext, localUploadStrategyBean);
          ELog.info("Analytics.enableSpeedRecord() end");
        }
      }
    }
    finally
    {
    }
  }

  public static void enableUserActionRecord(boolean paramBoolean)
  {
    while (true)
    {
      try
      {
        ELog.info("enableUserActionRecord start!");
        if (Constants.isAllFunctionPowerOff())
        {
          ELog.debug("Analytics function close");
          return;
        }
        if (mContext == null)
        {
          ELog.error("mContext == null ,return");
          continue;
        }
      }
      finally
      {
      }
      ELog.info("user action :" + paramBoolean);
      a locala = a.a(mContext);
      UploadStrategyBean localUploadStrategyBean = locala.c(mContext);
      localUploadStrategyBean.setUserEventUserOpen(paramBoolean);
      locala.a(mContext, localUploadStrategyBean);
      ELog.info("enableUserActionRecord end");
    }
  }

  public static UploadHandler getDefaultUpload(Context paramContext)
  {
    try
    {
      ELog.debug("Analytics.getDefaultUpload() start");
      if (Constants.isAllFunctionPowerOff())
        ELog.debug("Analytics function close");
      com.tencent.feedback.upload.e locale;
      for (Object localObject2 = null; ; localObject2 = locale)
      {
        return localObject2;
        locale = com.tencent.feedback.upload.e.a(paramContext);
      }
    }
    finally
    {
    }
  }

  public static void onAppExited(Context paramContext)
  {
    while (true)
    {
      int i;
      try
      {
        ELog.info("Analytics.onAppExited start");
        if (Constants.isAllFunctionPowerOff())
        {
          ELog.debug("Analytics function close");
          return;
        }
        if (mSdkModules != null)
        {
          i = 0;
          if (i < mSdkModules.length)
          {
            if (mSdkModules[i] == null)
              break label73;
            mSdkModules[i].onAppExited(paramContext);
            break label73;
          }
        }
        ELog.info("Analytics.onAppExited end");
        continue;
      }
      finally
      {
      }
      label73: i++;
    }
  }

  public static void onAppLaunched(Context paramContext)
  {
    while (true)
    {
      int i;
      try
      {
        ELog.info("Analytics.onAppLaunched start");
        if (Constants.isAllFunctionPowerOff())
        {
          ELog.debug("Analytics function close");
          return;
        }
        if (mSdkModules != null)
        {
          i = 0;
          if (i < mSdkModules.length)
          {
            if (mSdkModules[i] == null)
              break label73;
            mSdkModules[i].onAppLauched(paramContext);
            break label73;
          }
        }
        ELog.info("Analytics.onAppLaunched end");
        continue;
      }
      finally
      {
      }
      label73: i++;
    }
  }

  public static void setUserID(String paramString)
  {
    while (true)
    {
      CommonInfo localCommonInfo;
      try
      {
        if (Constants.isAllFunctionPowerOff())
        {
          ELog.debug("Analytics function close");
          return;
        }
        if (paramString == null)
          continue;
        localCommonInfo = CommonInfo.getCommonInfo();
        if (localCommonInfo == null)
        {
          CommonInfo.createCommonInfo(mContext, paramString, "unknow");
          continue;
        }
      }
      finally
      {
      }
      localCommonInfo.setUserid(paramString);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.Analytics
 * JD-Core Version:    0.6.2
 */