import android.content.ContentValues;
import java.util.Iterator;
import java.util.List;

final class hj
  implements dv
{
  hj(hi paramhi, List paramList)
  {
  }

  public final void a(Object paramObject)
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      ContentValues localContentValues = f.a((ky)localIterator.next(), hi.a(this.b), false);
      hi.c(this.b).a(hi.b(this.b), localContentValues);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     hj
 * JD-Core Version:    0.6.2
 */