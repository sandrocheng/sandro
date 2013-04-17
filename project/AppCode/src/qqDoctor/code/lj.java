import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public final class lj
  implements Parcelable, Cloneable
{
  public static final Parcelable.Creator<lj> CREATOR = new lk();
  public String a;
  public String b;
  public int c;
  public int d;
  public String e;
  public String f = "";
  public String g = "";
  public String h = "";
  public Bitmap i;

  public lj()
  {
  }

  public lj(String paramString1, String paramString2, String paramString3, int paramInt, String paramString4, String paramString5, String paramString6)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.e = paramString3;
    this.c = paramInt;
    this.f = paramString4;
    this.g = paramString5;
    this.h = paramString6;
  }

  public final String a()
  {
    return this.a;
  }

  public final void a(int paramInt)
  {
    this.c = paramInt;
  }

  public final void a(String paramString)
  {
    this.a = paramString;
  }

  public final String b()
  {
    return this.b;
  }

  public final void b(int paramInt)
  {
    this.d = paramInt;
  }

  public final void b(String paramString)
  {
    this.b = paramString;
  }

  public final int c()
  {
    return this.c;
  }

  public final void c(String paramString)
  {
    this.e = paramString;
  }

  public final Object clone()
    throws CloneNotSupportedException
  {
    return super.clone();
  }

  public final String d()
  {
    return this.e;
  }

  public final void d(String paramString)
  {
    this.f = paramString;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final Bitmap e()
  {
    return this.i;
  }

  public final void e(String paramString)
  {
    this.g = paramString;
  }

  public final void f(String paramString)
  {
    this.h = paramString;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.e);
    paramParcel.writeInt(this.c);
    paramParcel.writeString(this.f);
    paramParcel.writeString(this.g);
    paramParcel.writeString(this.h);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     lj
 * JD-Core Version:    0.6.2
 */