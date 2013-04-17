import android.content.ContentValues;
import java.util.Iterator;
import java.util.List;

public final class kb
  implements dv
{
  public kb(jt paramjt, List paramList)
  {
  }

  public final void a(Object paramObject)
  {
    this.b.a.c(this.b.k);
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      la localla = (la)localIterator.next();
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("ctyId", localla.b());
      localContentValues.put("ctyName", localla.c());
      localContentValues.put("ctyCount", Integer.valueOf(localla.e()));
      localContentValues.put("ctyIcon", localla.a());
      localContentValues.put("ctyContent", localla.f());
      this.b.a.a(this.b.k, "id", localContentValues);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     kb
 * JD-Core Version:    0.6.2
 */