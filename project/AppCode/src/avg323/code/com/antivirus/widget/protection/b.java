package com.antivirus.widget.protection;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class b
  implements Parcelable.Creator
{
  public ProtectionWidgetPlugin a(Parcel paramParcel)
  {
    return new ProtectionWidgetPlugin(paramParcel, null);
  }

  public ProtectionWidgetPlugin[] a(int paramInt)
  {
    return new ProtectionWidgetPlugin[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.widget.protection.b
 * JD-Core Version:    0.6.2
 */