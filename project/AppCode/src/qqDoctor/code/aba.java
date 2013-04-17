import java.io.File;
import java.util.Iterator;
import java.util.List;

final class aba extends Thread
{
  aba(List paramList)
  {
  }

  public final void run()
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      kw localkw = (kw)localIterator.next();
      a.a(localkw.getIcon(), dx.b + File.separator + localkw.getPackageName() + ".png.temp");
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aba
 * JD-Core Version:    0.6.2
 */