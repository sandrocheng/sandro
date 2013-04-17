package com.tencent.feedback.common.strategy;

import com.tencent.feedback.common.Constants;

public class UploadStrategyBean
{
  public static final int DEFAULT_MAXPACKAGESIZE = 50;
  public static final int DEFAULT_TESTCOUNT = 1;
  public static final String DEFAULT_UPLOADSERVER = "http://monitor.uu.qq.com/analytics/upload";
  public static final int DEFAULT_UPLOADSTRATEGY = 3;
  public static final String GRAY_Default_UploadSERVER = "http://update.uu.qq.com/analytics/upload";
  public static final String GRAY_Test_UploadSERVER = "http://x.uu.qq.com/gray/access";
  public static final int MIN_MAXPACKAGESIZE = 10;
  public static final String RDM_TEST_UPLOADSERVER = "http://monitor.sp0309.3g.qq.com/analytics/upload";
  public static final String ZHUAN_TEST_UPLOADSERVER = "http://112.90.139.158:8080/analytics/upload";
  private String apkUID = null;
  private boolean exceptionUploadServerOpen = true;
  private boolean exceptionUploadUserOpen = true;
  private int maxPackageSize = 50;
  private boolean speedMonitorServerOpen = true;
  private boolean speedMonitorUserOpen = true;
  private int testCount = 1;
  private String uploadServer = "http://monitor.uu.qq.com/analytics/upload";
  private int uploadStrategy = 3;
  private boolean userEventServerOpen = true;
  private boolean userEventUserOpen = true;

  public boolean equals(Object paramObject)
  {
    boolean bool;
    if (paramObject == null)
      bool = false;
    while (true)
    {
      return bool;
      try
      {
        if (UploadStrategyBean.class.isInstance(paramObject))
        {
          UploadStrategyBean localUploadStrategyBean = (UploadStrategyBean)UploadStrategyBean.class.cast(paramObject);
          if (localUploadStrategyBean.exceptionUploadServerOpen != this.exceptionUploadServerOpen)
          {
            bool = false;
            continue;
          }
          if (localUploadStrategyBean.exceptionUploadUserOpen != this.exceptionUploadUserOpen)
          {
            bool = false;
            continue;
          }
          if (localUploadStrategyBean.speedMonitorServerOpen != this.speedMonitorServerOpen)
          {
            bool = false;
            continue;
          }
          if (localUploadStrategyBean.speedMonitorUserOpen != this.speedMonitorUserOpen)
          {
            bool = false;
            continue;
          }
          if (localUploadStrategyBean.userEventServerOpen != this.userEventServerOpen)
          {
            bool = false;
            continue;
          }
          if (localUploadStrategyBean.userEventUserOpen != this.userEventUserOpen)
          {
            bool = false;
            continue;
          }
          if (localUploadStrategyBean.maxPackageSize != this.maxPackageSize)
          {
            bool = false;
            continue;
          }
          if (localUploadStrategyBean.testCount != this.testCount)
          {
            bool = false;
            continue;
          }
          if (!localUploadStrategyBean.uploadServer.equals(this.uploadServer))
          {
            bool = false;
            continue;
          }
          int i = localUploadStrategyBean.uploadStrategy;
          int j = this.uploadStrategy;
          if (i != j)
          {
            bool = false;
            continue;
          }
          bool = true;
          continue;
        }
        bool = false;
      }
      finally
      {
      }
    }
  }

  public String getApkUID()
  {
    try
    {
      String str = this.apkUID;
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public String getGrayUploadServer()
  {
    try
    {
      if (Constants.IS_USETESTSERVER)
      {
        if (Constants.IS_ZHUANTEST);
        for (str = "http://112.90.139.158:8080/analytics/upload"; ; str = "http://x.uu.qq.com/gray/access")
          return str;
      }
      String str = "http://update.uu.qq.com/analytics/upload";
    }
    finally
    {
    }
  }

  public int getMaxPackageSize()
  {
    try
    {
      int i = this.maxPackageSize;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public int getTestCount()
  {
    try
    {
      int i = this.testCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public String getUploadServer()
  {
    try
    {
      String str;
      if (Constants.IS_USETESTSERVER)
        if (Constants.IS_ZHUANTEST)
          str = "http://112.90.139.158:8080/analytics/upload";
      while (true)
      {
        return str;
        str = "http://monitor.sp0309.3g.qq.com/analytics/upload";
        continue;
        str = this.uploadServer;
      }
    }
    finally
    {
    }
  }

  public int getUploadStrategy()
  {
    try
    {
      int i = this.uploadStrategy;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public boolean isExceptionUploadServerOpen()
  {
    try
    {
      boolean bool = this.exceptionUploadServerOpen;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public boolean isExceptionUploadUserOpen()
  {
    try
    {
      boolean bool = this.exceptionUploadUserOpen;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public boolean isSpeedMonitorServerOpen()
  {
    try
    {
      boolean bool = this.speedMonitorServerOpen;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public boolean isSpeedMonitorUserOpen()
  {
    try
    {
      boolean bool = this.speedMonitorUserOpen;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public boolean isUserEventServerOpen()
  {
    try
    {
      boolean bool = this.userEventServerOpen;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public boolean isUserEventUserOpen()
  {
    try
    {
      boolean bool = this.userEventUserOpen;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setApkUID(String paramString)
  {
    try
    {
      this.apkUID = paramString;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setExceptionUploadServerOpen(boolean paramBoolean)
  {
    try
    {
      this.exceptionUploadServerOpen = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setExceptionUploadUserOpen(boolean paramBoolean)
  {
    try
    {
      this.exceptionUploadUserOpen = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setMaxPackageSize(int paramInt)
  {
    try
    {
      this.maxPackageSize = paramInt;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setSpeedMonitorServerOpen(boolean paramBoolean)
  {
    try
    {
      this.speedMonitorServerOpen = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setSpeedMonitorUserOpen(boolean paramBoolean)
  {
    try
    {
      this.speedMonitorUserOpen = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setTestCount(int paramInt)
  {
    try
    {
      this.testCount = paramInt;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setUploadServer(String paramString)
  {
    try
    {
      this.uploadServer = paramString;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setUploadStrategy(int paramInt)
  {
    try
    {
      this.uploadStrategy = paramInt;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setUserEventServerOpen(boolean paramBoolean)
  {
    try
    {
      this.userEventServerOpen = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setUserEventUserOpen(boolean paramBoolean)
  {
    try
    {
      this.userEventUserOpen = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public String toString()
  {
    try
    {
      String str = "uploadServer:" + getUploadServer() + "\n" + "maxPackageSize:" + getMaxPackageSize() + "\n" + "uploadStrategy:" + getUploadStrategy() + "\n" + "speedMonitorServerOpen:" + isSpeedMonitorServerOpen() + "\n" + "speedMonitorUserOpen:" + isSpeedMonitorUserOpen() + "\n" + "exceptionUploadServerOpen:" + isExceptionUploadServerOpen() + "\n" + "exceptionUploadUserOpen:" + isExceptionUploadUserOpen() + "\n" + "userEventServerOpen:" + isUserEventServerOpen() + "\n" + " userEventUserOpen:" + isUserEventUserOpen() + "\n" + " apkuid:" + getApkUID();
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.common.strategy.UploadStrategyBean
 * JD-Core Version:    0.6.2
 */