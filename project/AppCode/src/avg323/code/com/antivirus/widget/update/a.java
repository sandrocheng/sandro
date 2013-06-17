package com.antivirus.widget.update;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class a
  implements Parcelable.Creator
{
  public UpdateWidgetPlugin a(Parcel paramParcel)
  {
    return new UpdateWidgetPlugin(paramParcel);
  }

  public UpdateWidgetPlugin[] a(int paramInt)
  {
    return new UpdateWidgetPlugin[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.widget.update.a
 * JD-Core Version:    0.6.2
 */