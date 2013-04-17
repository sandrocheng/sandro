import android.content.ContentValues;
import java.util.Iterator;
import java.util.List;

final class jg
  implements dv
{
  jg(jf paramjf, List paramList)
  {
  }

  public final void a(Object paramObject)
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      kx localkx = (kx)localIterator.next();
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("mUId", Integer.valueOf(localkx.a));
      localContentValues.put("mPackageName", localkx.b);
      localContentValues.put("mAppName", localkx.c);
      localContentValues.put("mStates", localkx.e);
      localContentValues.put("mIsSysApp", Boolean.valueOf(localkx.f));
      localContentValues.put("mIsTrustApp", Boolean.valueOf(localkx.g));
      this.b.a.a("permission_info", null, localContentValues);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     jg
 * JD-Core Version:    0.6.2
 */