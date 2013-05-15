package com.dolphin.browser.addons;

import android.os.Parcel;
import android.os.Parcelable.Creator;

class f
  implements Parcelable.Creator
{
  public BookmarkTreeNode a(Parcel paramParcel)
  {
    return new BookmarkTreeNode(paramParcel);
  }

  public BookmarkTreeNode[] a(int paramInt)
  {
    return new BookmarkTreeNode[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.dolphin.browser.addons.f
 * JD-Core Version:    0.6.2
 */