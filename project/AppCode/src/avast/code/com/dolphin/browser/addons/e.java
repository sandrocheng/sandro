package com.dolphin.browser.addons;

import android.os.Parcel;
import android.os.Parcelable.Creator;

class e
  implements Parcelable.Creator
{
  public AlertDialogBuilder a(Parcel paramParcel)
  {
    return new AlertDialogBuilder(paramParcel, null);
  }

  public AlertDialogBuilder[] a(int paramInt)
  {
    return new AlertDialogBuilder[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.dolphin.browser.addons.e
 * JD-Core Version:    0.6.2
 */