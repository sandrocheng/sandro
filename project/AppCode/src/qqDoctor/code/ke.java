import android.database.Cursor;
import java.util.ArrayList;
import java.util.List;

public final class ke
{
  public hs a = hs.a();

  public final List<mo> a(String paramString1, String paramString2)
  {
    Cursor localCursor = this.a.a(paramString1, null, null, null, null, null, paramString2);
    ArrayList localArrayList = new ArrayList();
    while ((localCursor != null) && (localCursor.moveToNext()))
    {
      mo localmo = new mo();
      localmo.a = localCursor.getString(localCursor.getColumnIndex("pkg_name"));
      localmo.b = localCursor.getInt(localCursor.getColumnIndex("lock_count"));
      localArrayList.add(localmo);
    }
    if (localCursor != null)
      localCursor.close();
    this.a.b();
    return localArrayList;
  }

  public final mo a(String paramString1, String paramString2, String[] paramArrayOfString, String paramString3)
  {
    mo localmo = null;
    Cursor localCursor = this.a.a(paramString1, null, paramString2, paramArrayOfString, null, null, paramString3);
    while ((localCursor != null) && (localCursor.moveToNext()))
    {
      localmo = new mo();
      localmo.a = localCursor.getString(localCursor.getColumnIndex("pkg_name"));
      localmo.b = localCursor.getInt(localCursor.getColumnIndex("lock_count"));
    }
    if (localCursor != null)
      localCursor.close();
    this.a.b();
    return localmo;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ke
 * JD-Core Version:    0.6.2
 */