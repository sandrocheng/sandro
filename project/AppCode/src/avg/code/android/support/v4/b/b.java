package android.support.v4.b;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public final class b
  implements Parcelable.Creator
{
  final c a;

  public b(c paramc)
  {
    this.a = paramc;
  }

  public final Object createFromParcel(Parcel paramParcel)
  {
    return this.a.a(paramParcel);
  }

  public final Object[] newArray(int paramInt)
  {
    return this.a.a(paramInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.b.b
 * JD-Core Version:    0.6.2
 */