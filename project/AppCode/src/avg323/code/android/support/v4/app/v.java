package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class v
  implements Parcelable.Creator
{
  public FragmentState a(Parcel paramParcel)
  {
    return new FragmentState(paramParcel);
  }

  public FragmentState[] a(int paramInt)
  {
    return new FragmentState[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.v
 * JD-Core Version:    0.6.2
 */