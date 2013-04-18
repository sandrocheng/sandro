package com.ijinshan.kinghelper.firewall;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class ee
  implements Parcelable.Creator
{
  private static ServicesSmsListActivity.SMSContent a(Parcel paramParcel)
  {
    return new ServicesSmsListActivity.SMSContent(paramParcel);
  }

  private static ServicesSmsListActivity.SMSContent[] a(int paramInt)
  {
    return new ServicesSmsListActivity.SMSContent[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.ee
 * JD-Core Version:    0.6.2
 */