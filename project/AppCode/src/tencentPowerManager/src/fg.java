import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class fg
  implements fg<bd>
{
  public fg()
  {
    String.format("%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s", new Object[] { "_id", "len", "state", "url", "parent_path", "current_size", "range_support", "pkg", "name", "md5", "ver", "vercode", "logo_url", "categoryid", "pos" });
    new aa();
    d();
  }

  public List<bd> b()
  {
    try
    {
      ArrayList localArrayList = new ArrayList();
      return localArrayList;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public boolean c()
  {
    return false;
  }

  public void d()
  {
    if (bj.a())
    {
      List localList = b();
      ArrayList localArrayList = new ArrayList(localList.size());
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
      {
        bd localbd = (bd)localIterator.next();
        if ((!bl.a(localbd).exists()) || (localbd.d == -3))
          localArrayList.add(localbd);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     fg
 * JD-Core Version:    0.6.2
 */