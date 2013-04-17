import android.content.ContentValues;
import java.util.Iterator;
import java.util.List;

public final class ju
  implements dv
{
  public ju(jt paramjt, String paramString, List paramList)
  {
  }

  public final void a(Object paramObject)
  {
    this.c.a.c(this.a);
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
    {
      kw localkw = (kw)localIterator.next();
      ContentValues localContentValues = new ContentValues();
      jt.a(localContentValues, localkw);
      this.c.a.a(this.a, "id", localContentValues);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ju
 * JD-Core Version:    0.6.2
 */