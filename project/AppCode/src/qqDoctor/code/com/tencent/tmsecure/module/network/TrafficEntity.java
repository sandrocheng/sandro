package com.tencent.tmsecure.module.network;

import android.text.TextUtils;

public final class TrafficEntity
{
  public long mLastDownValue = 0L;
  public long mLastUpValue = 0L;
  public long mMobileDownValue = 0L;
  public long mMobileUpValue = 0L;
  public String mPkg;
  public long mWIFIDownValue = 0L;
  public long mWIFIUpValue = 0L;

  public static TrafficEntity fromString(String paramString)
  {
    boolean bool = TextUtils.isEmpty(paramString);
    TrafficEntity localTrafficEntity = null;
    if (!bool)
    {
      localTrafficEntity = new TrafficEntity();
      String[] arrayOfString = paramString.trim().split("[,:]");
      localTrafficEntity.mPkg = arrayOfString[0];
      localTrafficEntity.mLastUpValue = Long.parseLong(arrayOfString[1]);
      localTrafficEntity.mLastDownValue = Long.parseLong(arrayOfString[2]);
      localTrafficEntity.mMobileUpValue = Long.parseLong(arrayOfString[3]);
      localTrafficEntity.mMobileDownValue = Long.parseLong(arrayOfString[4]);
      localTrafficEntity.mWIFIUpValue = Long.parseLong(arrayOfString[5]);
      localTrafficEntity.mWIFIDownValue = Long.parseLong(arrayOfString[6]);
    }
    return localTrafficEntity;
  }

  public static String toString(TrafficEntity paramTrafficEntity)
  {
    Object[] arrayOfObject = new Object[7];
    arrayOfObject[0] = paramTrafficEntity.mPkg;
    arrayOfObject[1] = Long.valueOf(paramTrafficEntity.mLastUpValue);
    arrayOfObject[2] = Long.valueOf(paramTrafficEntity.mLastDownValue);
    arrayOfObject[3] = Long.valueOf(paramTrafficEntity.mMobileUpValue);
    arrayOfObject[4] = Long.valueOf(paramTrafficEntity.mMobileDownValue);
    arrayOfObject[5] = Long.valueOf(paramTrafficEntity.mWIFIUpValue);
    arrayOfObject[6] = Long.valueOf(paramTrafficEntity.mWIFIDownValue);
    return String.format("%s,%s,%s,%s,%s,%s,%s", arrayOfObject);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.network.TrafficEntity
 * JD-Core Version:    0.6.2
 */