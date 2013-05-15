package b.a.a.a.a;

import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public class b
  implements Iterable
{
  private final List a = new LinkedList();
  private final Map b = new HashMap();

  public g a(String paramString)
  {
    g localg;
    if (paramString == null)
      localg = null;
    while (true)
    {
      return localg;
      String str = paramString.toLowerCase(Locale.US);
      List localList = (List)this.b.get(str);
      if ((localList != null) && (!localList.isEmpty()))
        localg = (g)localList.get(0);
      else
        localg = null;
    }
  }

  public void a(g paramg)
  {
    if (paramg == null);
    while (true)
    {
      return;
      String str = paramg.a().toLowerCase(Locale.US);
      Object localObject = (List)this.b.get(str);
      if (localObject == null)
      {
        localObject = new LinkedList();
        this.b.put(str, localObject);
      }
      ((List)localObject).add(paramg);
      this.a.add(paramg);
    }
  }

  public Iterator iterator()
  {
    return Collections.unmodifiableList(this.a).iterator();
  }

  public String toString()
  {
    return this.a.toString();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     b.a.a.a.a.b
 * JD-Core Version:    0.6.2
 */