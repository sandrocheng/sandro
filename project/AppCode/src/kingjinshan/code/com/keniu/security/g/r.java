package com.keniu.security.g;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.hoi.widget.q;
import com.keniu.security.f.ab;
import com.keniu.security.f.w;
import com.keniu.security.f.y;
import com.keniu.security.monitor.b;
import com.keniu.security.util.ax;

final class r
  implements b
{
  private static final int c = 0;
  private static final int d = 2;
  public w a = new w();
  private boolean e = false;
  private int f = 0;
  private Handler g = new u(this);

  private r(a parama, byte paramByte)
  {
  }

  public final int a(int paramInt, Object paramObject1, Object paramObject2)
  {
    if ((paramInt == com.keniu.security.monitor.a.q) && (paramObject2 == this.a))
      switch (this.a.i())
      {
      case 3:
      case 4:
      case 6:
      case 7:
      default:
      case 5:
      case 8:
      }
    while (true)
    {
      return 1;
      synchronized (new v(this))
      {
        ???.a = this.a.a().e;
        Message.obtain(this.g, 0, Integer.valueOf(???.a)).sendToTarget();
      }
      if (!this.e)
        this.g.sendEmptyMessage(2);
    }
  }

  public final void a()
  {
    if ((a.a(this.b) != null) && (a.a(this.b).isShowing()))
      a.a(this.b).dismiss();
  }

  public final void a(com.keniu.security.f.t paramt)
  {
    a.a(this.b, q.a(this.b.a, 2131428361));
    a.a(this.b).a(-2, this.b.a.getString(2131427866), new s(this));
    a.a(this.b).show();
    a.a(this.b).setTitle(2131428351);
    a.a(this.b).a(paramt.a().e);
    a.a(this.b).b(0);
    q localq = a.a(this.b);
    Context localContext = this.b.a;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = ax.c(paramt.a().e);
    localq.a(localContext.getString(2131428352, arrayOfObject));
    a.a(this.b).setOnDismissListener(new t(this));
    com.keniu.security.monitor.a.a().a(com.keniu.security.monitor.a.q, this, 1342177279);
    ab localab = ab.a();
    this.a.a(com.keniu.security.f.t.d(), com.keniu.security.f.t.e());
    localab.a(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.g.r
 * JD-Core Version:    0.6.2
 */