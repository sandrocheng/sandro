import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public final class bzo extends JSONObject
  implements Parcelable
{
  public static final Parcelable.Creator<bzo> CREATOR = new bzp();

  public bzo()
    throws JSONException
  {
  }

  public bzo(Parcel paramParcel)
    throws JSONException
  {
    super(paramParcel.readString());
  }

  public static ArrayList<bzo> a(Parcel paramParcel)
  {
    ArrayList localArrayList = new ArrayList();
    int i;
    int j;
    do
      try
      {
        i = paramParcel.readInt();
        localArrayList.ensureCapacity(i);
        j = 0;
        continue;
        localArrayList.add(j, new bzo(paramParcel));
        j++;
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
        break;
      }
    while (j < i);
    return localArrayList;
  }

  public static void a(List<bzo> paramList, Parcel paramParcel)
  {
    paramParcel.writeInt(paramList.size());
    Iterator localIterator = paramList.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      paramParcel.writeString(((bzo)localIterator.next()).toString());
    }
  }

  public final int describeContents()
  {
    return 0;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(toString());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bzo
 * JD-Core Version:    0.6.2
 */