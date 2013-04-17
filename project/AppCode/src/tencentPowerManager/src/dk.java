import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class dk<T>
{
  public int a = 1;
  public List<T> b;
  public String c = null;
  public boolean d = true;

  public dk(List<T> paramList)
  {
    this.b = paramList;
    this.c = null;
    this.a = 1;
    this.d = false;
  }

  public final List<dj> a()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
    {
      localIterator.next();
      localArrayList.add(new dj());
    }
    return localArrayList;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     dk
 * JD-Core Version:    0.6.2
 */