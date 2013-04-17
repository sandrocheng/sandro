import android.content.ContentValues;
import java.util.Iterator;
import java.util.List;

public final class ic
  implements dv
{
  public ic(ib paramib, List paramList)
  {
  }

  public final void a(Object paramObject)
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      lj locallj = (lj)localIterator.next();
      ContentValues localContentValues = new ContentValues();
      ib.a(localContentValues, locallj);
      this.b.a.a("file_safe_file_info", localContentValues);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ic
 * JD-Core Version:    0.6.2
 */