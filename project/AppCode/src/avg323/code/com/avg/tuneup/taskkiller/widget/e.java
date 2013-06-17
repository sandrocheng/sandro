package com.avg.tuneup.taskkiller.widget;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class e
  implements Parcelable.Creator
{
  public TaskKillerWidgetPlugin a(Parcel paramParcel)
  {
    return new TaskKillerWidgetPlugin(paramParcel);
  }

  public TaskKillerWidgetPlugin[] a(int paramInt)
  {
    return new TaskKillerWidgetPlugin[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.taskkiller.widget.e
 * JD-Core Version:    0.6.2
 */