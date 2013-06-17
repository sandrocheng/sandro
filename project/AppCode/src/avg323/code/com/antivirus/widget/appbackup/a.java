package com.antivirus.widget.appbackup;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class a
  implements Parcelable.Creator
{
  public AppBackupWidgetPlugin a(Parcel paramParcel)
  {
    return new AppBackupWidgetPlugin(paramParcel);
  }

  public AppBackupWidgetPlugin[] a(int paramInt)
  {
    return new AppBackupWidgetPlugin[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.widget.appbackup.a
 * JD-Core Version:    0.6.2
 */