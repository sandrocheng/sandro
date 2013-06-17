package com.avg.tuneup.storage.widget;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class a
  implements Parcelable.Creator
{
  public StorageWidgetPlugin a(Parcel paramParcel)
  {
    return new StorageWidgetPlugin(paramParcel);
  }

  public StorageWidgetPlugin[] a(int paramInt)
  {
    return new StorageWidgetPlugin[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.storage.widget.a
 * JD-Core Version:    0.6.2
 */