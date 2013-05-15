package android.support.v4.a;

import android.os.Process;
import java.util.concurrent.atomic.AtomicBoolean;

class v extends ab
{
  v(t paramt)
  {
    super(null);
  }

  public Object call()
  {
    t.a(this.a).set(true);
    Process.setThreadPriority(10);
    return t.a(this.a, this.a.a(this.b));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.a.v
 * JD-Core Version:    0.6.2
 */