import android.content.ContentValues;
import android.content.Context;
import android.content.res.Resources;
import java.util.Iterator;
import java.util.List;

final class jq
  implements dv
{
  jq(jp paramjp, List paramList)
  {
  }

  public final void a(Object paramObject)
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      mk localmk = (mk)localIterator.next();
      String str = localmk.getBody();
      if (str == null)
        str = "";
      if (str.startsWith(jp.a(this.b).getResources().getString(2131428587)))
        str = str.substring(4);
      localmk.setBody(str);
      ContentValues localContentValues = gu.a(localmk, false);
      long l = jp.c(this.b).a(jp.b(this.b), null, localContentValues);
      if ((l >= 0L) && (localmk.protocolType == 1))
      {
        int i = (int)l;
        if (jp.a(this.b, localmk, i) < 0L)
          jp.c(this.b).a(jp.b(this.b), "id=" + i, null);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     jq
 * JD-Core Version:    0.6.2
 */