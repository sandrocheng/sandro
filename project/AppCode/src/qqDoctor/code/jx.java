import android.content.ContentValues;
import java.util.Iterator;
import java.util.List;

final class jx
  implements dv
{
  jx(jt paramjt, List paramList)
  {
  }

  public final void a(Object paramObject)
  {
    this.b.a.c(this.b.f);
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
      localContentValues.put("ctyDescript", localla.g());
      localContentValues.put("ctySign", Integer.valueOf(localla.h()));
      localContentValues.put("ctyState", Integer.valueOf(localla.i()));
      localContentValues.put("ctyTime", Long.valueOf(localla.j()));
      localContentValues.put("ctyType", Integer.valueOf(localla.k()));
      localContentValues.put("ctyRank", Integer.valueOf(localla.l()));
      new StringBuilder().append(localla.c()).append(" UpdateCacheSpecialSubject1Info appInfo.getPushType() ").append(localla.k()).toString();
      this.b.a.a(this.b.f, "id", localContentValues);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     jx
 * JD-Core Version:    0.6.2
 */