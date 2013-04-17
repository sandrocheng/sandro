import android.os.Message;
import android.os.Messenger;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class sg
  implements Runnable
{
  sg(se paramse, ArrayList paramArrayList, Messenger paramMessenger, int paramInt)
  {
  }

  public final void run()
  {
    int i = 0;
    nd.a().a(26348);
    if ((lm.d == null) || (lm.d.size() == 0))
      fi.b();
    if (ho.a().u())
    {
      se.a(this.d);
      a.a();
      ho.a().t();
    }
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator1 = this.a.iterator();
    while (localIterator1.hasNext())
    {
      String str = (String)localIterator1.next();
      ll localll2 = new ll();
      localll2.a(new File(str).getName());
      localll2.b(str);
      localll2.a(k.b(new File(str)));
      localArrayList.add(localll2);
    }
    Iterator localIterator2 = localArrayList.iterator();
    int j = 1;
    boolean bool1 = false;
    if (localIterator2.hasNext())
    {
      ll localll1 = (ll)localIterator2.next();
      boolean bool2 = fi.a(localll1);
      if (!bool1)
      {
        int n = localll1.c();
        bool1 = se.a(n);
      }
      if (bool2)
      {
        if (this.b == null)
          break label391;
        Message localMessage4 = Message.obtain();
        localMessage4.what = 3;
        localMessage4.obj = localll1.b();
        se.a(localMessage4, this.b);
      }
      label391: for (int k = i; ; k = i)
      {
        int m = j + 1;
        if ((m <= this.c) && (this.b != null))
        {
          Message localMessage2 = Message.obtain();
          localMessage2.what = 1;
          localMessage2.arg1 = m;
          localMessage2.arg2 = this.c;
          se.a(localMessage2, this.b);
        }
        j = m;
        i = k;
        break;
        i++;
        if (this.b != null)
        {
          Message localMessage3 = Message.obtain();
          localMessage3.what = 2;
          localMessage3.obj = localll1.b();
          se.a(localMessage3, this.b);
        }
      }
    }
    if (bool1)
      fi.a(se.a(this.d));
    se.a();
    if (this.b != null)
    {
      Message localMessage1 = Message.obtain();
      localMessage1.what = 4;
      localMessage1.arg1 = i;
      localMessage1.arg2 = this.c;
      se.a(localMessage1, this.b);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     sg
 * JD-Core Version:    0.6.2
 */