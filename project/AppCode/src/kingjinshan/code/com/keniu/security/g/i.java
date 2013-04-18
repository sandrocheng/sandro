package com.keniu.security.g;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.hoi.widget.q;
import com.keniu.security.f.ab;
import com.keniu.security.f.p;
import com.keniu.security.f.r;
import com.keniu.security.f.t;
import com.keniu.security.f.v;
import com.keniu.security.monitor.b;
import com.keniu.security.util.ax;

final class i
  implements b
{
  private static final int d = 0;
  private static final int e = 1;
  private static final int f = 2;
  public p a = new p();
  private boolean c = false;
  private Handler g = new l(this);

  private i(a parama, byte paramByte)
  {
  }

  public final int a(int paramInt, Object paramObject1, Object paramObject2)
  {
    if ((paramInt == com.keniu.security.monitor.a.q) && (paramObject2 == this.a))
      switch (this.a.i())
      {
      case 3:
      case 6:
      case 7:
      default:
      case 4:
      case 5:
      case 8:
      }
    while (true)
    {
      return 1;
      synchronized (new m(this))
      {
        ???.a = this.a.a().a;
        Message.obtain(this.g, 0, Integer.valueOf(???.a)).sendToTarget();
      }
      synchronized (new m(this))
      {
        ???.b = this.a.a().b;
        Message.obtain(this.g, 1, Integer.valueOf(???.b)).sendToTarget();
      }
      if (!this.c)
        this.g.sendEmptyMessage(2);
    }
  }

  public final void a()
  {
    if ((a.i(this.b) != null) && (a.i(this.b).isShowing()))
      a.i(this.b).dismiss();
  }

  public final void a(t paramt)
  {
    a.b(this.b, q.a(this.b.a, 2131428361));
    a.i(this.b).a(-2, this.b.a.getString(2131428345), new j(this));
    a.i(this.b).show();
    a.i(this.b).setTitle(2131428350);
    a.i(this.b).a(paramt.a().b);
    a.i(this.b).b(0);
    q localq = a.i(this.b);
    Context localContext = this.b.a;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = ax.c(paramt.a().b);
    localq.a(localContext.getString(2131428352, arrayOfObject));
    a.i(this.b).setOnDismissListener(new k(this));
    com.keniu.security.monitor.a.a().a(com.keniu.security.monitor.a.q, this, 1342177279);
    ab localab = ab.a();
    this.a.a(t.b(), t.c());
    localab.a(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.g.i
 * JD-Core Version:    0.6.2
 */