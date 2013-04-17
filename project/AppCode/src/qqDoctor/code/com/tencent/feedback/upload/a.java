package com.tencent.feedback.upload;

import com.tencent.feedback.common.CommonInfo;
import com.tencent.feedback.common.ELog;
import com.tencent.feedback.common.g;
import common.RequestPackage;

public final class a extends AbstractUploadDatas
{
  private int a = 0;

  public a()
  {
    super(AbstractUploadDatas.UploadDataType.RQD_Query);
  }

  public final void done(boolean paramBoolean)
  {
  }

  public final RequestPackage getUploadRequestPackage(boolean paramBoolean)
  {
    ELog.debug("EmptyUploadDatas.getUploadRequestPackage() start");
    CommonInfo localCommonInfo = CommonInfo.getCommonInfo();
    byte[] arrayOfByte = "".getBytes();
    try
    {
      RequestPackage localRequestPackage2 = g.a(0, localCommonInfo, arrayOfByte, -1, -1);
      localRequestPackage1 = localRequestPackage2;
      if (localRequestPackage1 != null);
      while (true)
      {
        return localRequestPackage1;
        ELog.debug("EmptyUploadDatas.getUploadRequestPackage() end");
        localRequestPackage1 = null;
      }
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        localThrowable.printStackTrace();
        ELog.error("encode2RequestPackage failed");
        ELog.debug("EmptyUploadDatas.getUploadRequestPackage() end");
        RequestPackage localRequestPackage1 = null;
      }
    }
    finally
    {
      ELog.debug("EmptyUploadDatas.getUploadRequestPackage() end");
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.upload.a
 * JD-Core Version:    0.6.2
 */