import android.content.ContentValues;
import java.util.Iterator;
import java.util.List;

public final class ka
  implements dv
{
  public ka(jt paramjt, String paramString, List paramList, long paramLong)
  {
  }

  public final void a(Object paramObject)
  {
    hs localhs = this.d.a;
    String str = this.d.g;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = this.a;
    localhs.a(str, "ctyName=?", arrayOfString);
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
    {
      kw localkw = (kw)localIterator.next();
      ContentValues localContentValues = new ContentValues();
      jt.a(localContentValues, localkw);
      localContentValues.put("ctyName", this.a);
      localContentValues.put("expirationTime", this.c);
      this.d.a.a(this.d.g, "id", localContentValues);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ka
 * JD-Core Version:    0.6.2
 */