package com.tencent.feedback.upload;

import com.tencent.feedback.common.ELog;
import common.RequestPackage;

public abstract class AbstractUploadDatas
{
  protected UploadDataType mUploadDataType;

  public AbstractUploadDatas(UploadDataType paramUploadDataType)
  {
    this.mUploadDataType = paramUploadDataType;
  }

  public abstract void done(boolean paramBoolean);

  public byte[] getUploadDatas(boolean paramBoolean)
  {
    ELog.debug("AbstractUploadDatas.getUploadDatas start");
    try
    {
      RequestPackage localRequestPackage = getUploadRequestPackage(paramBoolean);
      byte[] arrayOfByte2;
      if (localRequestPackage != null)
        arrayOfByte2 = localRequestPackage.toByteArray();
      for (arrayOfByte1 = arrayOfByte2; ; arrayOfByte1 = null)
      {
        return arrayOfByte1;
        ELog.debug("AbstractUploadDatas.getUploadDatas end");
      }
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        localThrowable.printStackTrace();
        ELog.error("encode to bytes failed");
        ELog.debug("AbstractUploadDatas.getUploadDatas end");
        byte[] arrayOfByte1 = null;
      }
    }
    finally
    {
      ELog.debug("AbstractUploadDatas.getUploadDatas end");
    }
  }

  public abstract RequestPackage getUploadRequestPackage(boolean paramBoolean);

  public UploadDataType getmUploadDataType()
  {
    try
    {
      UploadDataType localUploadDataType = this.mUploadDataType;
      return localUploadDataType;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setmUploadDataType(UploadDataType paramUploadDataType)
  {
    try
    {
      this.mUploadDataType = paramUploadDataType;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static enum UploadDataType
  {
    static
    {
      RQD_EUPData = new UploadDataType("RQD_EUPData", 1);
      RQD_COMRecords = new UploadDataType("RQD_COMRecords", 2);
      RQD_RealTimeRecords = new UploadDataType("RQD_RealTimeRecords", 3);
      Gray_Query = new UploadDataType("Gray_Query", 4);
      Gray_FeedbackUpload = new UploadDataType("Gray_FeedbackUpload", 5);
      Gray_AgreeUpload = new UploadDataType("Gray_AgreeUpload", 6);
      UploadDataType[] arrayOfUploadDataType = new UploadDataType[7];
      arrayOfUploadDataType[0] = RQD_Query;
      arrayOfUploadDataType[1] = RQD_EUPData;
      arrayOfUploadDataType[2] = RQD_COMRecords;
      arrayOfUploadDataType[3] = RQD_RealTimeRecords;
      arrayOfUploadDataType[4] = Gray_Query;
      arrayOfUploadDataType[5] = Gray_FeedbackUpload;
      arrayOfUploadDataType[6] = Gray_AgreeUpload;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.upload.AbstractUploadDatas
 * JD-Core Version:    0.6.2
 */