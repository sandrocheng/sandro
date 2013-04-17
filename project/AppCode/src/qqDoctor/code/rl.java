import android.content.Context;
import android.content.Intent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONObject;

final class rl
  implements Runnable
{
  rl(rj paramrj, int paramInt)
  {
  }

  public final void run()
  {
    String str1 = ft.a(rj.a(this.b));
    if (str1 == null)
      return;
    ArrayList localArrayList1 = a.c(rj.a("sc_", str1), str1);
    ArrayList localArrayList2 = new ArrayList();
    new lf();
    Iterator localIterator1 = localArrayList1.iterator();
    while (localIterator1.hasNext())
    {
      lf locallf2 = lf.a((JSONObject)localIterator1.next());
      if (locallf2 != null)
        localArrayList2.add(locallf2);
    }
    if (localArrayList2.size() > 0)
    {
      i = localArrayList2.size();
      Iterator localIterator2 = localArrayList2.iterator();
      while (localIterator2.hasNext())
      {
        lf locallf1 = (lf)localIterator2.next();
        rj.d(this.b).a(locallf1);
      }
    }
    int i = 0;
    ArrayList localArrayList3 = a.b(rj.a("ss_", str1), str1);
    for (int j = -1 + localArrayList3.size(); j >= 0; j--)
      if (((mk)localArrayList3.get(j)).protocolType == 1)
        localArrayList3.remove(j);
    int k;
    if (localArrayList3.size() > 0)
    {
      k = localArrayList3.size();
      rj.c(this.b).a(localArrayList3);
    }
    while (true)
    {
      rj.e(this.b).remove(Integer.valueOf(this.a));
      rj.f(this.b);
      rj.a(this.b).sendBroadcast(new Intent(yq.a));
      Context localContext = rj.a(this.b);
      String str2 = rj.a(this.b).getString(2131427850);
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(i);
      arrayOfObject[1] = Integer.valueOf(k);
      ha.b(localContext, String.format(str2, arrayOfObject));
      break;
      k = 0;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     rl
 * JD-Core Version:    0.6.2
 */