import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class btn
{
  private static volatile btn b;
  public List<btj> a = new ArrayList();

  private btn()
  {
    b();
  }

  public static btn a()
  {
    try
    {
      if (b == null)
        b = new btn();
      btn localbtn = b;
      return localbtn;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private static List<String> c()
  {
    int i = 0;
    try
    {
      String[] arrayOfString = { "phone", "phone1", "phone2", "phoneEX" };
      ArrayList localArrayList = new ArrayList();
      int j = arrayOfString.length;
      while (true)
      {
        if (i >= j)
          return localArrayList;
        String str = arrayOfString[i];
        if (btm.b(str) != null)
          localArrayList.add(str);
        i++;
      }
    }
    finally
    {
    }
  }

  public final boolean b()
  {
    while (true)
    {
      boolean bool;
      synchronized (this.a)
      {
        Iterator localIterator;
        if (this.a.size() == 0)
        {
          localIterator = c().iterator();
          if (localIterator.hasNext());
        }
        else
        {
          if (this.a.size() <= 0)
            continue;
          bool = true;
          return bool;
        }
        String str = (String)localIterator.next();
        this.a.add(new btj(str));
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     btn
 * JD-Core Version:    0.6.2
 */