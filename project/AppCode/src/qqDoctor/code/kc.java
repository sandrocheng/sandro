import android.database.Cursor;
import java.util.ArrayList;
import java.util.List;

public final class kc
{
  public hs a = hs.a();
  public String b = "software_search_history";

  public static List<mj> a(Cursor paramCursor)
  {
    int i = paramCursor.getColumnIndexOrThrow("id");
    int j = paramCursor.getColumnIndexOrThrow("body");
    ArrayList localArrayList = new ArrayList();
    paramCursor.moveToFirst();
    while (!paramCursor.isAfterLast())
    {
      mj localmj = new mj();
      paramCursor.getInt(i);
      localmj.a = paramCursor.getString(j);
      localArrayList.add(localmj);
      paramCursor.moveToNext();
    }
    paramCursor.close();
    return localArrayList;
  }

  public final boolean a(String paramString)
  {
    int i = this.a.a(this.b, "body='" + paramString + "'", null);
    this.a.b();
    if (i > 0);
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     kc
 * JD-Core Version:    0.6.2
 */