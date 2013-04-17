import android.content.ContentValues;
import android.database.Cursor;
import java.util.ArrayList;
import java.util.List;

public final class ig
{
  public hs a = hs.a();

  public static void a(ContentValues paramContentValues, lp paramlp)
  {
    if (paramlp == null);
    while (true)
    {
      return;
      paramContentValues.clear();
      paramContentValues.put("fullpath", paramlp.b());
      paramContentValues.put("type", Integer.valueOf(paramlp.c()));
      paramContentValues.put("modifytime", Long.valueOf(paramlp.d()));
      paramContentValues.put("thumbname", paramlp.e());
      paramContentValues.put("count", Integer.valueOf(paramlp.a()));
    }
  }

  public final List<lp> a(String paramString1, String paramString2, String[] paramArrayOfString, String paramString3)
  {
    Cursor localCursor = this.a.a(paramString1, null, paramString2, paramArrayOfString, null, null, paramString3);
    ArrayList localArrayList = new ArrayList();
    while ((localCursor != null) && (localCursor.moveToNext()))
    {
      lp locallp = new lp();
      locallp.a(localCursor.getString(localCursor.getColumnIndex("fullpath")));
      locallp.b(Integer.parseInt(localCursor.getString(localCursor.getColumnIndex("type"))));
      locallp.a(Integer.parseInt(localCursor.getString(localCursor.getColumnIndex("count"))));
      locallp.a(Long.parseLong(localCursor.getString(localCursor.getColumnIndex("modifytime"))));
      locallp.b(localCursor.getString(localCursor.getColumnIndex("thumbname")));
      localArrayList.add(locallp);
    }
    if (localCursor != null)
      localCursor.close();
    this.a.b();
    return localArrayList;
  }

  public final boolean a(lp paramlp, String paramString, int paramInt)
  {
    int i = 1;
    String[] arrayOfString = new String[2];
    arrayOfString[0] = paramString;
    arrayOfString[i] = String.valueOf(paramInt);
    ContentValues localContentValues = new ContentValues();
    a(localContentValues, paramlp);
    if (this.a.a("filesafe_scanned_folders", localContentValues, "fullpath=? and type=?", arrayOfString) == i);
    while (true)
    {
      return i;
      int j = 0;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ig
 * JD-Core Version:    0.6.2
 */