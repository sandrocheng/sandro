import android.os.Message;
import android.os.Messenger;
import java.util.ArrayList;
import java.util.Iterator;

final class sh
  implements Runnable
{
  sh(se paramse, ArrayList paramArrayList, Messenger paramMessenger, int paramInt)
  {
  }

  public final void run()
  {
    nd.a().a(26349);
    if ((lm.d == null) || (lm.d.size() == 0))
      fi.b();
    if (ho.a().u())
    {
      se.a(this.d);
      a.a();
      ho.a().t();
    }
    Iterator localIterator = this.a.iterator();
    int i = 0;
    int j = 1;
    boolean bool1 = false;
    if (localIterator.hasNext())
    {
      lj locallj = (lj)localIterator.next();
      boolean bool2 = fi.a(locallj);
      if (!bool1)
      {
        int n = locallj.c();
        bool1 = se.a(n);
      }
      if (bool2)
      {
        if (this.b == null)
          break label291;
        Message localMessage4 = Message.obtain();
        localMessage4.what = 8;
        localMessage4.obj = locallj.a();
        se.a(localMessage4, this.b);
      }
      label291: for (int k = i; ; k = i)
      {
        int m = j + 1;
        if ((m <= this.c) && (this.b != null))
        {
          Message localMessage2 = Message.obtain();
          localMessage2.what = 6;
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
          localMessage3.what = 7;
          localMessage3.obj = locallj.a();
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
      localMessage1.what = 9;
      localMessage1.arg1 = i;
      localMessage1.arg2 = this.c;
      se.a(localMessage1, this.b);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     sh
 * JD-Core Version:    0.6.2
 */