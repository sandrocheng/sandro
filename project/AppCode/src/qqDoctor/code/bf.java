import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.text.SimpleDateFormat;
import java.util.Date;

public final class bf
  implements Parcelable
{
  public static final Parcelable.Creator<bf> CREATOR = new bg();
  private int a = 203;
  private long b = 0L;
  private int c = 0;
  private int d = 0;
  private long e = 0L;
  private String f = "";
  private String g = "";

  public final int a()
  {
    return this.c;
  }

  public final void a(int paramInt)
  {
    this.a = paramInt;
  }

  public final void a(long paramLong)
  {
    this.b = paramLong;
  }

  public final void a(String paramString)
  {
    this.g = paramString;
  }

  public final int b()
  {
    return this.d;
  }

  public final void b(int paramInt)
  {
    this.c = paramInt;
  }

  public final void b(long paramLong)
  {
    this.e = paramLong;
  }

  public final void b(String paramString)
  {
    this.f = paramString;
  }

  public final long c()
  {
    return this.e;
  }

  public final void c(int paramInt)
  {
    this.d = paramInt;
  }

  public final String d()
  {
    return this.g;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final String e()
  {
    return this.f;
  }

  public final void f()
  {
    try
    {
      dk.d("CommParcelable", "logObject mLastSyncOpType = " + this.a);
      dk.d("CommParcelable", "logObject mLastSyncTime = " + bd.a.format(new Date(this.b)) + " " + this.b);
      dk.d("CommParcelable", "logObject mLastNotifyLocalDataType = " + this.c);
      dk.d("CommParcelable", "logObject mLastNotifyNetDataType = " + this.d);
      dk.d("CommParcelable", "logObject mLastNotifyTime = " + bd.a.format(new Date(this.e)) + " " + this.e);
      dk.d("CommParcelable", "logObject packageName = " + this.g);
      return;
    }
    catch (Throwable localThrowable)
    {
      while (true)
        dk.d("CommParcelable", "logObject Throwable = " + localThrowable.toString());
    }
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (paramParcel == null);
    while (true)
    {
      return;
      paramParcel.writeInt(this.a);
      paramParcel.writeInt(this.c);
      paramParcel.writeInt(this.d);
      paramParcel.writeLong(this.b);
      paramParcel.writeLong(this.e);
      paramParcel.writeString(this.g);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bf
 * JD-Core Version:    0.6.2
 */