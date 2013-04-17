package com.tencent.tmsecure.module.permission;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import bxj;

public class PermissionTableItem
  implements Parcelable
{
  public static Parcelable.Creator<PermissionTableItem> CREATOR = new bxj();
  public String mPackageName;
  public int[] mRids = new int[PermissionRequestIDs.getCount()];
  public int mUid;

  public PermissionTableItem(int paramInt, int[] paramArrayOfInt, String paramString)
  {
    this.mUid = paramInt;
    if ((paramArrayOfInt != null) && (paramArrayOfInt.length == PermissionRequestIDs.getCount()))
      this.mRids = paramArrayOfInt;
    this.mPackageName = paramString;
  }

  public static PermissionTableItem createFromParcel(Parcel paramParcel)
  {
    return new PermissionTableItem(paramParcel.readInt(), paramParcel.createIntArray(), paramParcel.readString());
  }

  public int describeContents()
  {
    return 0;
  }

  public boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject != null)
    {
      boolean bool2 = paramObject instanceof PermissionTableItem;
      bool1 = false;
      if (bool2)
      {
        PermissionTableItem localPermissionTableItem = (PermissionTableItem)paramObject;
        bool1 = false;
        if (localPermissionTableItem != null)
        {
          int i = this.mUid;
          int j = localPermissionTableItem.mUid;
          bool1 = false;
          if (i == j)
          {
            boolean bool3 = this.mPackageName.equals(localPermissionTableItem.mPackageName);
            bool1 = false;
            if (bool3)
              bool1 = true;
          }
        }
      }
    }
    return bool1;
  }

  public int hashCode()
  {
    return Integer.valueOf(this.mUid).hashCode() + this.mPackageName.hashCode();
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.mUid);
    paramParcel.writeIntArray(this.mRids);
    paramParcel.writeString(this.mPackageName);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.permission.PermissionTableItem
 * JD-Core Version:    0.6.2
 */