package com.tencent.tmsecure.module.permission;

import android.os.Binder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import bxi;

public final class PermissionRequestInfo
  implements Parcelable
{
  public static Parcelable.Creator<PermissionRequestInfo> CREATOR = new bxi();
  public String[] mInfo1;
  public int[] mInfo2;
  public byte[] mInfo3;
  public int mPid = Binder.getCallingPid();
  public int mRid;
  public int mUid = Binder.getCallingUid();
  public int mValue;

  public static PermissionRequestInfo createFromParcel(Parcel paramParcel)
  {
    PermissionRequestInfo localPermissionRequestInfo = new PermissionRequestInfo();
    localPermissionRequestInfo.mPid = paramParcel.readInt();
    localPermissionRequestInfo.mUid = paramParcel.readInt();
    localPermissionRequestInfo.mValue = paramParcel.readInt();
    localPermissionRequestInfo.mRid = paramParcel.readInt();
    localPermissionRequestInfo.mInfo1 = paramParcel.createStringArray();
    localPermissionRequestInfo.mInfo2 = paramParcel.createIntArray();
    localPermissionRequestInfo.mInfo3 = paramParcel.createByteArray();
    return localPermissionRequestInfo;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.mPid);
    paramParcel.writeInt(this.mUid);
    paramParcel.writeInt(this.mValue);
    paramParcel.writeInt(this.mRid);
    paramParcel.writeStringArray(this.mInfo1);
    paramParcel.writeIntArray(this.mInfo2);
    paramParcel.writeByteArray(this.mInfo3);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.permission.PermissionRequestInfo
 * JD-Core Version:    0.6.2
 */