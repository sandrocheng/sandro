import android.database.ContentObserver;
import android.os.Handler;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class cj extends ContentObserver
{
  private static List<cj.a> a = new ArrayList();

  public cj()
  {
    super(new Handler());
  }

  public static void a(cj.a parama)
  {
    try
    {
      if (!a.contains(parama))
        a.add(parama);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void b(cj.a parama)
  {
    try
    {
      if (a.contains(parama))
        a.remove(parama);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void onChange(boolean paramBoolean)
  {
    try
    {
      Iterator localIterator = a.iterator();
      while (localIterator.hasNext())
        ((cj.a)localIterator.next()).b();
    }
    finally
    {
    }
    super.onChange(paramBoolean);
  }

  public static abstract interface a
  {
    public abstract void b();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     cj
 * JD-Core Version:    0.6.2
 */