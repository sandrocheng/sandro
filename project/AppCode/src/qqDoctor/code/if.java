import android.content.ContentValues;
import android.database.Cursor;
import java.util.ArrayList;
import java.util.List;

public final class if
{
  public hs a = hs.a();

  public static void a(ContentValues paramContentValues, ln paramln)
  {
    paramContentValues.clear();
    paramContentValues.put("fullpath", paramln.b());
    paramContentValues.put("type", Integer.valueOf(paramln.c()));
    paramContentValues.put("modifytime", Long.valueOf(paramln.d()));
    paramContentValues.put("thumbname", paramln.e());
    paramContentValues.put("bucket_id", Integer.valueOf(paramln.a()));
  }

  public final List<ln> a(String paramString1, String paramString2, String[] paramArrayOfString, String paramString3)
  {
    Cursor localCursor = this.a.a(paramString1, null, paramString2, paramArrayOfString, null, null, paramString3);
    ArrayList localArrayList = new ArrayList();
    while ((localCursor != null) && (localCursor.moveToNext()))
    {
      ln localln = new ln();
      localln.a(localCursor.getString(localCursor.getColumnIndex("fullpath")));
      localln.b(Integer.parseInt(localCursor.getString(localCursor.getColumnIndex("type"))));
      localln.a(Integer.parseInt(localCursor.getString(localCursor.getColumnIndex("bucket_id"))));
      localln.a(Long.parseLong(localCursor.getString(localCursor.getColumnIndex("modifytime"))));
      localln.b(localCursor.getString(localCursor.getColumnIndex("thumbname")));
      localArrayList.add(localln);
    }
    if (localCursor != null)
      localCursor.close();
    this.a.b();
    return localArrayList;
  }

  public final boolean a(ln paramln, String paramString)
  {
    int i = 1;
    String[] arrayOfString = new String[i];
    arrayOfString[0] = paramString;
    ContentValues localContentValues = new ContentValues();
    a(localContentValues, paramln);
    if (this.a.a("filesafe_scanned_file", localContentValues, "fullpath=?", arrayOfString) == i);
    while (true)
    {
      return i;
      int j = 0;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     if
 * JD-Core Version:    0.6.2
 */