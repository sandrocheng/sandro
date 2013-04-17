import android.os.Handler;
import java.io.File;
import java.util.ArrayList;
import java.util.LinkedList;

final class asm
  implements Runnable
{
  asm(ask paramask)
  {
  }

  public final void run()
  {
    ask.a(this.a, true);
    boolean bool;
    while (true)
      if (ask.f(this.a) == 3)
      {
        ask localask = this.a;
        if (!this.a.e.isEmpty())
        {
          bool = true;
          ask.a(localask, bool);
          if (!ask.g(this.a))
            break label132;
          File localFile = (File)this.a.e.removeLast();
          ask.a(this.a, localFile);
          if (!ask.h(this.a))
            continue;
          Thread.yield();
          ask.a(this.a, new ArrayList());
          ask.j(this.a).post(ask.i(this.a));
        }
      }
    while (true)
    {
      return;
      bool = false;
      break;
      label132: if (!ask.g(this.a))
      {
        ask.k(this.a);
        this.a.d();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     asm
 * JD-Core Version:    0.6.2
 */