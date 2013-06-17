package com.avg.tuneup.taskkiller.widget;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class c
  implements Parcelable.Creator
{
  public CloseAllTasksWidgetPlugin a(Parcel paramParcel)
  {
    return new CloseAllTasksWidgetPlugin(paramParcel);
  }

  public CloseAllTasksWidgetPlugin[] a(int paramInt)
  {
    return new CloseAllTasksWidgetPlugin[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.taskkiller.widget.c
 * JD-Core Version:    0.6.2
 */