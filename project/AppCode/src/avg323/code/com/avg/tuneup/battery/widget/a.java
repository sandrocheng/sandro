package com.avg.tuneup.battery.widget;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class a
  implements Parcelable.Creator
{
  public BatteryWidgetPlugin a(Parcel paramParcel)
  {
    return new BatteryWidgetPlugin(paramParcel);
  }

  public BatteryWidgetPlugin[] a(int paramInt)
  {
    return new BatteryWidgetPlugin[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.battery.widget.a
 * JD-Core Version:    0.6.2
 */