import android.os.Parcel;
import android.os.Parcelable.Creator;
import org.json.JSONException;

final class bzp
  implements Parcelable.Creator<bzo>
{
  private static bzo a(Parcel paramParcel)
  {
    try
    {
      localbzo = new bzo(paramParcel);
      return localbzo;
    }
    catch (JSONException localJSONException)
    {
      while (true)
      {
        localJSONException.printStackTrace();
        bzo localbzo = null;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bzp
 * JD-Core Version:    0.6.2
 */