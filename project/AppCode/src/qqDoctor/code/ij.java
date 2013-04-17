import android.database.Cursor;
import java.util.ArrayList;

public final class ij
{
  public static ij a;
  public hs b = hs.a();
  public String c = "ignore_update_soft";

  private static ArrayList<dr> a(Cursor paramCursor)
  {
    int i = paramCursor.getColumnIndexOrThrow("id");
    int j = paramCursor.getColumnIndexOrThrow("pkgName");
    int k = paramCursor.getColumnIndexOrThrow("appName");
    ArrayList localArrayList = new ArrayList();
    paramCursor.moveToFirst();
    while (!paramCursor.isAfterLast())
    {
      dr localdr = new dr();
      paramCursor.getInt(i);
      localdr.a = paramCursor.getString(j);
      localdr.b = paramCursor.getString(k);
      localArrayList.add(localdr);
      paramCursor.moveToNext();
    }
    paramCursor.close();
    return localArrayList;
  }

  public final ArrayList<dr> a()
  {
    String str = "SELECT * FROM " + this.c + " ORDER BY id ASC";
    Cursor localCursor = this.b.a(str);
    localCursor.moveToFirst();
    ArrayList localArrayList = a(localCursor);
    if (localCursor != null)
      localCursor.close();
    this.b.b();
    return localArrayList;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ij
 * JD-Core Version:    0.6.2
 */