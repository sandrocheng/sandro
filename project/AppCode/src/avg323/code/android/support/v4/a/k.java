package android.support.v4.a;

import android.os.Process;
import java.util.concurrent.atomic.AtomicBoolean;

class k extends q
{
  k(i parami)
  {
    super(null);
  }

  public Object call()
  {
    i.a(this.a).set(true);
    Process.setThreadPriority(10);
    return i.a(this.a, this.a.a(this.b));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.a.k
 * JD-Core Version:    0.6.2
 */