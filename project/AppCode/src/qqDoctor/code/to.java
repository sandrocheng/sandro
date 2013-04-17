import android.content.Context;
import android.os.Process;
import java.util.Iterator;
import java.util.List;

final class to extends Thread
{
  to(tn paramtn)
  {
  }

  public final void run()
  {
    int i = 0;
    Process.setThreadPriority(10);
    List localList;
    int j;
    try
    {
      localList = this.a.c.e.c(this.a.a);
      if (localList.size() <= 0)
        break label259;
      ky localky = (ky)localList.get(0);
      String str2 = oo.a.a(localky, localky.d);
      if ((str2 == null) || (str2.equals("")))
        break label222;
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
        ((ky)localIterator.next()).name = str2;
    }
    catch (Exception localException)
    {
      j = 0;
    }
    Context localContext = this.a.c.a;
    if (i != 0);
    for (String str1 = this.a.c.a.getString(2131428676) + j + this.a.c.a.getString(2131428677); ; str1 = this.a.c.a.getString(2131428678))
    {
      ha.a(localContext, str1);
      if ((i != 0) && (this.a.b != null))
        this.a.b.a(null);
      return;
      label222: this.a.c.c.b(localList);
      this.a.c.e.d(this.a.a);
      label259: int k = localList.size();
      j = k;
      i = 1;
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     to
 * JD-Core Version:    0.6.2
 */