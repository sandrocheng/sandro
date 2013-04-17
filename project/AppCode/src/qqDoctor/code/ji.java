import android.database.Cursor;
import java.util.ArrayList;
import java.util.List;

public final class ji
{
  public hs a = hs.a();

  public final int a()
  {
    Cursor localCursor = this.a.a("SELECT count(*) FROM tb_privacy_lock");
    int i = 0;
    if (localCursor != null)
    {
      boolean bool = localCursor.moveToNext();
      i = 0;
      if (bool)
        i = localCursor.getInt(0);
    }
    if (localCursor != null)
      localCursor.close();
    this.a.b();
    return i;
  }

  public final List<mf> b()
  {
    Cursor localCursor = this.a.a("tb_privacy_lock", null, null, null, null, null, "id ASC");
    ArrayList localArrayList = new ArrayList();
    while ((localCursor != null) && (localCursor.moveToNext()))
    {
      mf localmf = new mf();
      localmf.a = localCursor.getString(localCursor.getColumnIndex("pkg_name"));
      localmf.b = localCursor.getString(localCursor.getColumnIndex("app_name"));
      localmf.d = localCursor.getString(localCursor.getColumnIndex("reserverd_1"));
      localmf.e = localCursor.getString(localCursor.getColumnIndex("reserverd_2"));
      localmf.f = localCursor.getString(localCursor.getColumnIndex("reserverd_3"));
      localArrayList.add(localmf);
    }
    if (localCursor != null)
      localCursor.close();
    this.a.b();
    return localArrayList;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ji
 * JD-Core Version:    0.6.2
 */