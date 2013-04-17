package com.tencent.feedback.common;

import android.content.Context;
import com.tencent.feedback.common.strategy.SecurityStrategyBean;
import com.tencent.feedback.common.strategy.UploadStrategyBean;
import com.tencent.feedback.common.strategy.a;
import com.tencent.feedback.common.strategy.a.b;
import com.tencent.feedback.upload.UploadHandler;

public class e
  implements AppLifecycleListener, a.b
{
  protected boolean isClosed = false;
  protected boolean isEnableModule = false;
  protected boolean isQueryFinish = false;
  protected boolean isStartAfterQuery = true;
  protected Context mContext;
  protected UploadHandler uploadHandler;

  public e(Context paramContext, String paramString, boolean paramBoolean, UploadHandler paramUploadHandler)
  {
    if (Constants.isAllFunctionPowerOff())
      ELog.debug("SDKModule function close");
    while (true)
    {
      return;
      if (paramContext == null)
        ELog.error("initModule should not context == null!");
      this.mContext = paramContext;
      this.isStartAfterQuery = paramBoolean;
      this.uploadHandler = paramUploadHandler;
      setUserId(paramString);
      a.a(paramUploadHandler);
      a locala = a.a(this.mContext);
      if (locala != null)
        locala.a(this);
    }
  }

  public void closeSDKModule()
  {
    ELog.info("closeSDKModule");
    a locala = a.a(null);
    if (locala != null)
      locala.b(this);
    try
    {
      this.isClosed = true;
      setEnableModule(false);
      ELog.info("closeSDKModule end");
      return;
    }
    finally
    {
    }
  }

  public UploadHandler getUploadHandler()
  {
    try
    {
      UploadHandler localUploadHandler = this.uploadHandler;
      return localUploadHandler;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public String getUserId()
  {
    CommonInfo localCommonInfo = CommonInfo.getCommonInfo();
    if (localCommonInfo != null);
    for (String str = localCommonInfo.getUserid(); ; str = "unknown")
      return str;
  }

  public Context getmContext()
  {
    try
    {
      Context localContext = this.mContext;
      return localContext;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public boolean isClosedSDKModule()
  {
    try
    {
      boolean bool = this.isClosed;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public boolean isEnableModule()
  {
    try
    {
      boolean bool = this.isEnableModule;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public boolean isQueryFinish()
  {
    try
    {
      boolean bool = this.isQueryFinish;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public boolean isStartAfterQuery()
  {
    try
    {
      boolean bool = this.isStartAfterQuery;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void onAppExited(Context paramContext)
  {
    if (Constants.isAllFunctionPowerOff())
      ELog.debug("SDKModule function close");
    while (true)
    {
      return;
      closeSDKModule();
    }
  }

  public void onAppLauched(Context paramContext)
  {
    ELog.info("onAppLauched start");
    if (Constants.isAllFunctionPowerOff())
      ELog.debug("SDKModule function close");
    while (true)
    {
      return;
      ELog.info("onAppLauched end");
    }
  }

  public void onInitByQuery()
  {
    ELog.info("onInitByQuery fininshed start");
    if (Constants.isAllFunctionPowerOff())
      ELog.debug("SDKModule function close");
    while (true)
    {
      return;
      setQueryFinish(true);
      ELog.info("onInitByQuery fininshed end");
    }
  }

  public void onLocalVersionChanged(String paramString1, String paramString2)
  {
    ELog.info("onLocalVersionChanged start");
    if (Constants.isAllFunctionPowerOff())
      ELog.debug("SDKModule function close");
    while (true)
    {
      return;
      ELog.info("onLocalVersionChanged end");
    }
  }

  public void onSecurityStrategyChange(SecurityStrategyBean paramSecurityStrategyBean)
  {
    if (Constants.isAllFunctionPowerOff())
      ELog.debug("SDKModule function close");
  }

  public void onUploadStrategyChange(UploadStrategyBean paramUploadStrategyBean)
  {
    if (Constants.isAllFunctionPowerOff())
      ELog.debug("SDKModule function close");
  }

  public void setEnableModule(boolean paramBoolean)
  {
    try
    {
      ELog.info("setEnableModule: " + paramBoolean);
      this.isEnableModule = paramBoolean;
      if (this.isClosed)
      {
        this.isEnableModule = false;
        ELog.info("isClosed so close isEnableModule");
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setQueryFinish(boolean paramBoolean)
  {
    try
    {
      this.isQueryFinish = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setStartAfterQuery(boolean paramBoolean)
  {
    try
    {
      this.isStartAfterQuery = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setUploadHandler(UploadHandler paramUploadHandler)
  {
    try
    {
      this.uploadHandler = paramUploadHandler;
      a.a(paramUploadHandler);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setUserId(String paramString)
  {
    if (Constants.isAllFunctionPowerOff())
      ELog.debug("Analytics function close");
    while (true)
    {
      return;
      if (paramString != null)
      {
        CommonInfo localCommonInfo = CommonInfo.getCommonInfo();
        if (localCommonInfo == null)
          CommonInfo.createCommonInfo(this.mContext, paramString, "unknown");
        else
          localCommonInfo.setUserid(paramString);
      }
    }
  }

  public void setmContext(Context paramContext)
  {
    try
    {
      this.mContext = paramContext;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.common.e
 * JD-Core Version:    0.6.2
 */