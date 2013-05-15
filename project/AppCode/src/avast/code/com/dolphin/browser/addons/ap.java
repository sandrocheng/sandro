package com.dolphin.browser.addons;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public abstract class ap extends Binder
  implements ao
{
  ap()
  {
    attachInterface(this, "com.dolphin.browser.addons.IDownloadExtension");
  }

  public IBinder asBinder()
  {
    return this;
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    int i = 1;
    switch (paramInt1)
    {
    default:
      i = super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      while (true)
      {
        return i;
        paramParcel2.writeString("com.dolphin.browser.addons.IDownloadExtension");
      }
    case 1:
      paramParcel1.enforceInterface("com.dolphin.browser.addons.IDownloadExtension");
      boolean bool = a(paramParcel1.readString(), paramParcel1.readString(), paramParcel1.readString(), paramParcel1.readString(), paramParcel1.readLong());
      paramParcel2.writeNoException();
      if (bool);
      int k;
      for (int j = i; ; k = 0)
      {
        paramParcel2.writeInt(j);
        break;
      }
    case 2:
    }
    paramParcel1.enforceInterface("com.dolphin.browser.addons.IDownloadExtension");
    if (paramParcel1.readInt() != 0);
    for (DownloadInfo localDownloadInfo = (DownloadInfo)DownloadInfo.CREATOR.createFromParcel(paramParcel1); ; localDownloadInfo = null)
    {
      a(localDownloadInfo);
      paramParcel2.writeNoException();
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.dolphin.browser.addons.ap
 * JD-Core Version:    0.6.2
 */