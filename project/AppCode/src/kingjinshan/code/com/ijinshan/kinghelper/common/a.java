package com.ijinshan.kinghelper.common;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class a
  implements Parcelable.Creator
{
  private static ContactItem a(Parcel paramParcel)
  {
    return new ContactItem(paramParcel);
  }

  private static ContactItem[] a(int paramInt)
  {
    return new ContactItem[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.common.a
 * JD-Core Version:    0.6.2
 */