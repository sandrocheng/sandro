import java.util.Iterator;
import java.util.LinkedList;

final class byw
  implements byr.a
{
  byw(byr.d paramd)
  {
  }

  public final void a(String paramString)
  {
    Iterator localIterator = byr.a(byr.d.a(this.a)).iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      ((byr.b)localIterator.next()).onPackageRemoved(paramString);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     byw
 * JD-Core Version:    0.6.2
 */