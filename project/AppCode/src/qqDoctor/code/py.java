import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;

final class py
  implements Runnable
{
  py(px parampx)
  {
  }

  public final void run()
  {
    px.a(this.a, false);
    ArrayList localArrayList = fi.a();
    if (localArrayList == null)
    {
      px.a(this.a, true);
      return;
    }
    int i = 0;
    label29: int j = localArrayList.size();
    int k = 0;
    if (i < j)
    {
      String str1 = (String)localArrayList.get(i);
      Iterator localIterator = localArrayList.iterator();
      String str2;
      do
      {
        if (!localIterator.hasNext())
          break;
        str2 = (String)localIterator.next();
      }
      while (!str1.startsWith(str2 + File.separator));
    }
    for (int m = 1; ; m = 0)
    {
      if (m != 0)
      {
        localArrayList.remove(i);
        i--;
      }
      i++;
      break label29;
      while (k < localArrayList.size())
      {
        px.a(this.a, new File((String)localArrayList.get(k)));
        k++;
      }
      px.a(this.a, true);
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     py
 * JD-Core Version:    0.6.2
 */