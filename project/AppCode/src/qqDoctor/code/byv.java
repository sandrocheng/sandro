import java.util.Iterator;
import java.util.LinkedList;

final class byv
  implements byr.a
{
  byv(byr.d paramd)
  {
  }

  public final void a(String paramString)
  {
    Iterator localIterator = byr.a(byr.d.a(this.a)).iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      ((byr.b)localIterator.next()).onPackageAdded(paramString);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     byv
 * JD-Core Version:    0.6.2
 */