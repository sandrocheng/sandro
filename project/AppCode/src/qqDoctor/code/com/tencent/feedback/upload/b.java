package com.tencent.feedback.upload;

import android.content.Context;
import com.qq.taf.jce.JceInputStream;
import com.tencent.feedback.common.ELog;
import com.tencent.feedback.common.strategy.SecurityStrategyBean;
import com.tencent.feedback.common.strategy.UploadStrategyBean;
import com.tencent.feedback.common.strategy.a;
import java.util.Map;
import strategy.SecurityStrategyPackage;
import strategy.UploadStrategyPackage;

public final class b
  implements e.b
{
  private Context a;

  public b(Context paramContext)
  {
    this.a = paramContext;
  }

  public final void a(int paramInt, byte[] paramArrayOfByte)
  {
    switch (paramInt)
    {
    default:
    case 7:
    case 8:
    case 0:
    }
    while (true)
    {
      return;
      ELog.info("process CMD_RESPONSE_SECURITY_STRATEGY");
      ELog.debug("RQDUploadImp.onSecurityStrategy() start");
      if ((paramArrayOfByte != null) && (this.a != null))
      {
        SecurityStrategyPackage localSecurityStrategyPackage = new SecurityStrategyPackage();
        localSecurityStrategyPackage.readFrom(new JceInputStream(paramArrayOfByte));
        ELog.debug(localSecurityStrategyPackage.toString());
        a locala2 = a.a(this.a);
        synchronized (locala2.b(this.a))
        {
          ???.setEncryAlgorithm(localSecurityStrategyPackage.b());
          ???.setEncryKey(localSecurityStrategyPackage.a());
          ???.setZipAlgorithm(localSecurityStrategyPackage.c());
          locala2.a(this.a, ???);
          ELog.info("update succeed!");
          ELog.debug("RQDUploadImp.onSecurityStrategy() end");
        }
        ELog.debug("RQDUploadImp.onUploadStrategy() start");
        if ((paramArrayOfByte != null) && (this.a != null))
        {
          UploadStrategyPackage localUploadStrategyPackage = new UploadStrategyPackage();
          localUploadStrategyPackage.readFrom(new JceInputStream(paramArrayOfByte));
          ELog.debug(localUploadStrategyPackage.toString());
          a locala1 = a.a(this.a);
          synchronized (locala1.c(this.a))
          {
            ???.setMaxPackageSize(localUploadStrategyPackage.b());
            ???.setExceptionUploadServerOpen(false);
            ???.setSpeedMonitorServerOpen(false);
            ???.setUserEventServerOpen(false);
            Map localMap = localUploadStrategyPackage.e();
            if (localMap != null)
            {
              Boolean localBoolean1 = (Boolean)localMap.get(Integer.valueOf(1));
              Boolean localBoolean2 = (Boolean)localMap.get(Integer.valueOf(2));
              Boolean localBoolean3 = (Boolean)localMap.get(Integer.valueOf(3));
              if (localBoolean1 != null)
                ???.setUserEventServerOpen(localBoolean1.booleanValue());
              if (localBoolean2 != null)
                ???.setSpeedMonitorServerOpen(localBoolean2.booleanValue());
              if (localBoolean3 != null)
                ???.setExceptionUploadServerOpen(localBoolean3.booleanValue());
            }
            ???.setTestCount(localUploadStrategyPackage.a());
            ???.setUploadServer(localUploadStrategyPackage.d());
            ???.setUploadStrategy(localUploadStrategyPackage.c());
            locala1.a(this.a, ???);
            ELog.info("update succeed!");
            ELog.debug("RQDUploadImp.onUploadStrategy() end");
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.upload.b
 * JD-Core Version:    0.6.2
 */