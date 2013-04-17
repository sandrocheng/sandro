import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.provider.CallLog.Calls;
import java.util.ArrayList;
import java.util.List;

public abstract class dy
{
  public static final Uri a = CallLog.Calls.CONTENT_URI;

  static
  {
    Uri.parse("content://icc/adn");
  }

  public static ContentValues a(lf paramlf)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("name", paramlf.name);
    localContentValues.put("number", paramlf.phonenum);
    localContentValues.put("type", Integer.valueOf(paramlf.b));
    int i;
    int j;
    if (paramlf.enableForCalling)
    {
      i = 0;
      localContentValues.put("ringStatus", Integer.valueOf(i));
      boolean bool = paramlf.enableForSMS;
      j = 0;
      if (!bool)
        break label90;
    }
    while (true)
    {
      localContentValues.put("SMStatus", Integer.valueOf(j));
      return localContentValues;
      i = 1;
      break;
      label90: j = 1;
    }
  }

  public static List<lf> a(Cursor paramCursor)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramCursor.moveToFirst())
    {
      int i = paramCursor.getColumnIndex("id");
      int j = paramCursor.getColumnIndex("name");
      int k = paramCursor.getColumnIndex("number");
      int m = paramCursor.getColumnIndex("type");
      int n = paramCursor.getColumnIndex("ringStatus");
      int i1 = paramCursor.getColumnIndex("SMStatus");
      if (!paramCursor.isAfterLast())
      {
        lf locallf = new lf();
        locallf.id = paramCursor.getInt(i);
        locallf.name = paramCursor.getString(j);
        locallf.phonenum = paramCursor.getString(k);
        locallf.b = paramCursor.getInt(m);
        boolean bool1;
        if (paramCursor.getInt(n) == 0)
        {
          bool1 = true;
          label157: locallf.enableForCalling = bool1;
          if (paramCursor.getInt(i1) != 0)
            break label210;
        }
        label210: for (boolean bool2 = true; ; bool2 = false)
        {
          locallf.enableForSMS = bool2;
          localArrayList.add(locallf);
          paramCursor.moveToNext();
          break;
          bool1 = false;
          break label157;
        }
      }
    }
    paramCursor.close();
    return localArrayList;
  }

  public static lf b(Cursor paramCursor)
  {
    boolean bool1 = true;
    boolean bool2 = paramCursor.moveToFirst();
    Object localObject = null;
    lf locallf;
    boolean bool3;
    if (bool2)
    {
      int i = paramCursor.getColumnIndex("id");
      int j = paramCursor.getColumnIndex("name");
      int k = paramCursor.getColumnIndex("number");
      int m = paramCursor.getColumnIndex("type");
      int n = paramCursor.getColumnIndex("ringStatus");
      int i1 = paramCursor.getColumnIndex("SMStatus");
      locallf = new lf();
      locallf.id = paramCursor.getInt(i);
      locallf.name = paramCursor.getString(j);
      locallf.phonenum = paramCursor.getString(k);
      locallf.b = paramCursor.getInt(m);
      if (paramCursor.getInt(n) != 0)
        break label185;
      bool3 = bool1;
      locallf.enableForCalling = bool3;
      if (paramCursor.getInt(i1) != 0)
        break label191;
    }
    while (true)
    {
      locallf.enableForSMS = bool1;
      localObject = locallf;
      paramCursor.close();
      return localObject;
      label185: bool3 = false;
      break;
      label191: bool1 = false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     dy
 * JD-Core Version:    0.6.2
 */