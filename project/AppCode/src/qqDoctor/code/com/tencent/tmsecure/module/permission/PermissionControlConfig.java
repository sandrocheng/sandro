package com.tencent.tmsecure.module.permission;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public final class PermissionControlConfig
  implements Parcelable
{
  public static final int PERMISSION_MODE_ABORT = 1;
  public static final int PERMISSION_MODE_ACCEPT = 0;
  public static final byte PERMISSION_MODE_ASK = 2;
  public static final int PERMISSION_MODE_NULL = 65535;
  private HashMap<Integer, PermissionTableItem> a = new HashMap();
  private String b;

  public PermissionControlConfig(List<PermissionTableItem> paramList, String paramString)
  {
    Iterator localIterator = paramList.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        this.b = paramString;
        return;
      }
      PermissionTableItem localPermissionTableItem = (PermissionTableItem)localIterator.next();
      this.a.put(Integer.valueOf(localPermissionTableItem.mUid), localPermissionTableItem);
    }
  }

  public static PermissionControlConfig createFromParcel(Parcel paramParcel)
  {
    int i = paramParcel.readInt();
    ArrayList localArrayList = new ArrayList(i);
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return new PermissionControlConfig(localArrayList, paramParcel.readString());
      localArrayList.add(PermissionTableItem.createFromParcel(paramParcel));
    }
  }

  public final boolean addItem(PermissionTableItem paramPermissionTableItem)
  {
    if (!this.a.values().contains(paramPermissionTableItem))
      this.a.put(Integer.valueOf(paramPermissionTableItem.mUid), paramPermissionTableItem);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final String getDummyDatabaseName()
  {
    return this.b;
  }

  public final PermissionTableItem getItemByUid(int paramInt)
  {
    return (PermissionTableItem)this.a.get(Integer.valueOf(paramInt));
  }

  public final ArrayList<PermissionTableItem> getItems()
  {
    return new ArrayList(this.a.values());
  }

  public final int getValue(int paramInt1, int paramInt2)
  {
    PermissionTableItem localPermissionTableItem = (PermissionTableItem)this.a.get(Integer.valueOf(paramInt1));
    if ((localPermissionTableItem != null) && (paramInt2 < PermissionRequestIDs.getCount()));
    for (int i = localPermissionTableItem.mRids[paramInt2]; ; i = -1)
      return i;
  }

  public final boolean removeItem(PermissionTableItem paramPermissionTableItem)
  {
    if (this.a.values().contains(paramPermissionTableItem))
      this.a.remove(Integer.valueOf(paramPermissionTableItem.mUid));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final void setDummyDatabaseName(String paramString)
  {
    this.b = paramString;
  }

  public final boolean update(int paramInt1, int paramInt2, int paramInt3)
  {
    Integer localInteger = Integer.valueOf(paramInt1);
    PermissionTableItem localPermissionTableItem = (PermissionTableItem)this.a.get(localInteger);
    if ((localPermissionTableItem != null) && (paramInt2 < PermissionRequestIDs.getCount()))
      localPermissionTableItem.mRids[paramInt2] = paramInt3;
    if (localPermissionTableItem != null);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean update(PermissionTableItem paramPermissionTableItem)
  {
    Integer localInteger = Integer.valueOf(paramPermissionTableItem.mUid);
    PermissionTableItem localPermissionTableItem = (PermissionTableItem)this.a.get(localInteger);
    if (localPermissionTableItem != null)
      this.a.put(localInteger, paramPermissionTableItem);
    if (localPermissionTableItem != null);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.a.values().size());
    Iterator localIterator = this.a.values().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        paramParcel.writeString(this.b);
        return;
      }
      ((PermissionTableItem)localIterator.next()).writeToParcel(paramParcel, 0);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.permission.PermissionControlConfig
 * JD-Core Version:    0.6.2
 */