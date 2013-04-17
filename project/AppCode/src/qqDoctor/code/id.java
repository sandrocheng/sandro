import android.content.ContentValues;
import java.util.Iterator;
import java.util.List;

public final class id
  implements dv
{
  public id(ib paramib, List paramList1, List paramList2)
  {
  }

  public final void a(Object paramObject)
  {
    Iterator localIterator = this.a.iterator();
    for (int i = 0; localIterator.hasNext(); i++)
    {
      lj locallj = (lj)localIterator.next();
      ContentValues localContentValues = new ContentValues();
      ib.a(localContentValues, locallj);
      String[] arrayOfString = new String[1];
      arrayOfString[0] = ((String)this.b.get(i));
      this.c.a.a("file_safe_file_info", localContentValues, "mFileSrcPath=?", arrayOfString);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     id
 * JD-Core Version:    0.6.2
 */