import android.os.Parcel;
import android.os.Parcelable.Creator;

final class bg
  implements Parcelable.Creator<bf>
{
  private static bf a(Parcel paramParcel)
  {
    bf localbf = new bf();
    try
    {
      localbf.a(paramParcel.readInt());
      localbf.b(paramParcel.readInt());
      localbf.c(paramParcel.readInt());
      localbf.a(paramParcel.readLong());
      localbf.b(paramParcel.readLong());
      localbf.a(paramParcel.readString());
      return localbf;
    }
    catch (Exception localException)
    {
      while (true)
        dk.c("CommParcelable", "createFromParcel e=" + localException.toString());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bg
 * JD-Core Version:    0.6.2
 */