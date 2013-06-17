package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class u
  implements Parcelable.Creator
{
  public FragmentManagerState a(Parcel paramParcel)
  {
    return new FragmentManagerState(paramParcel);
  }

  public FragmentManagerState[] a(int paramInt)
  {
    return new FragmentManagerState[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.u
 * JD-Core Version:    0.6.2
 */