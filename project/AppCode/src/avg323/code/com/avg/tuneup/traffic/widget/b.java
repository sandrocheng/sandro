package com.avg.tuneup.traffic.widget;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class b
  implements Parcelable.Creator
{
  public TrafficWidgetPlugin a(Parcel paramParcel)
  {
    return new TrafficWidgetPlugin(paramParcel);
  }

  public TrafficWidgetPlugin[] a(int paramInt)
  {
    return new TrafficWidgetPlugin[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.traffic.widget.b
 * JD-Core Version:    0.6.2
 */