package com.tencent.feedback.upload;

import com.tencent.feedback.common.CommonInfo;
import com.tencent.feedback.common.c;
import com.tencent.feedback.common.f;
import common.RequestPackage;

public final class a extends AbstractUploadDatas
{
  private int a = 0;

  public final void done(boolean paramBoolean)
  {
  }

  public final byte[] getUploadDatas(boolean paramBoolean)
  {
    c.c("EmptyUploadDatas.getUploadDatas() start");
    CommonInfo localCommonInfo = CommonInfo.getCommonInfo();
    byte[] arrayOfByte1 = "".getBytes();
    try
    {
      RequestPackage localRequestPackage = f.a(0, localCommonInfo, arrayOfByte1, (byte)-1, (byte)-1);
      byte[] arrayOfByte3;
      if (localRequestPackage != null)
        arrayOfByte3 = localRequestPackage.toByteArray();
      for (arrayOfByte2 = arrayOfByte3; ; arrayOfByte2 = null)
      {
        return arrayOfByte2;
        c.c("EmptyUploadDatas.getUploadDatas() end");
      }
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        localThrowable.printStackTrace();
        c.b("encode2RequestPackage failed");
        c.c("EmptyUploadDatas.getUploadDatas() end");
        byte[] arrayOfByte2 = null;
      }
    }
    finally
    {
      c.c("EmptyUploadDatas.getUploadDatas() end");
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.feedback.upload.a
 * JD-Core Version:    0.6.2
 */