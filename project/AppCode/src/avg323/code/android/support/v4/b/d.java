package android.support.v4.b;

import android.os.Parcel;
import android.os.Parcelable.ClassLoaderCreator;

class d
  implements Parcelable.ClassLoaderCreator
{
  private final c a;

  public d(c paramc)
  {
    this.a = paramc;
  }

  public Object createFromParcel(Parcel paramParcel)
  {
    return this.a.a(paramParcel, null);
  }

  public Object createFromParcel(Parcel paramParcel, ClassLoader paramClassLoader)
  {
    return this.a.a(paramParcel, paramClassLoader);
  }

  public Object[] newArray(int paramInt)
  {
    return this.a.a(paramInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.b.d
 * JD-Core Version:    0.6.2
 */