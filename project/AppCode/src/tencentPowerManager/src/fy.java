import android.content.Context;
import android.os.Handler;
import android.os.Message;
import java.util.List;

public final class fy
{
  public fy(ar paramar)
  {
  }

  public final void a(fx paramfx)
  {
    this.a.d = paramfx;
    ar localar1 = this.a;
    fx localfx1 = this.a.d;
    this.a.b();
    localar1.a(localfx1);
    this.a.i.sendEmptyMessage(4);
    if (ar.a(this.a) == 0)
    {
      if ((this.a.d == null) || (this.a.d.b.isEmpty()))
      {
        Message localMessage = this.a.i.obtainMessage(3);
        localMessage.obj = this.a.b.getString(2131099777);
        this.a.i.sendMessage(localMessage);
      }
    }
    else
      ar.d();
    while (true)
    {
      return;
      if (ar.b(this.a))
      {
        this.a.i.sendEmptyMessage(5);
      }
      else
      {
        ar localar2 = this.a;
        fx localfx2 = this.a.d;
        localar2.b(localfx2);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     fy
 * JD-Core Version:    0.6.2
 */