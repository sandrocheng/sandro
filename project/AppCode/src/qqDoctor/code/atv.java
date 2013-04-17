import android.os.Handler;
import java.util.ArrayList;
import java.util.List;

final class atv
  implements Runnable
{
  atv(atu paramatu)
  {
  }

  public final void run()
  {
    fi.b((lj)atn.q(this.a.a).get(atn.z(this.a.a)));
    px.a(atn.D(this.a.a)).d().remove(atn.z(this.a.a));
    atn.E(this.a.a).sendEmptyMessage(100);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     atv
 * JD-Core Version:    0.6.2
 */