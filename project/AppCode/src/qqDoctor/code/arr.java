import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public final class arr
  implements Parcelable
{
  public static final Parcelable.Creator<arr> CREATOR = new ars();
  int a;
  int b;
  int c;
  long d;
  int e;
  boolean f;
  int g;
  int h;

  public arr(int paramInt1, int paramInt2, int paramInt3, long paramLong, int paramInt4, boolean paramBoolean, int paramInt5, int paramInt6)
  {
    this.a = paramInt1;
    this.b = paramInt2;
    this.c = paramInt3;
    this.d = paramLong;
    this.e = paramInt4;
    this.f = paramBoolean;
    this.g = paramInt5;
    this.h = paramInt6;
  }

  private arr(Parcel paramParcel)
  {
    this.a = paramParcel.readInt();
    this.b = paramParcel.readInt();
    this.c = paramParcel.readInt();
    this.d = paramParcel.readLong();
    this.e = paramParcel.readInt();
    if (paramParcel.readInt() == i);
    while (true)
    {
      this.f = i;
      this.g = paramParcel.readInt();
      this.h = paramParcel.readInt();
      return;
      i = 0;
    }
  }

  public final int describeContents()
  {
    return 0;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.a);
    paramParcel.writeInt(this.b);
    paramParcel.writeInt(this.c);
    paramParcel.writeLong(this.d);
    paramParcel.writeInt(this.e);
    if (this.f);
    for (int i = 1; ; i = 0)
    {
      paramParcel.writeInt(i);
      paramParcel.writeInt(this.g);
      paramParcel.writeInt(this.h);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     arr
 * JD-Core Version:    0.6.2
 */