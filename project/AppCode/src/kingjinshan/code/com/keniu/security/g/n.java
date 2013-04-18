package com.keniu.security.g;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.Handler;
import android.text.Html;
import com.keniu.security.f.ab;
import com.keniu.security.f.t;
import com.keniu.security.monitor.b;
import com.keniu.security.util.ad;
import com.keniu.security.util.ae;

final class n
  implements b
{
  private static final int d = 1;
  public t a;
  private ProgressDialog c;
  private Handler e = new q(this);
  private boolean f = false;

  private n(a parama, byte paramByte)
  {
  }

  public final int a(int paramInt, Object paramObject1, Object paramObject2)
  {
    if ((paramInt == com.keniu.security.monitor.a.q) && (paramObject2 == this.a) && (this.a.i() == 2) && (!this.f))
      this.e.sendEmptyMessage(1);
    return 1;
  }

  public final void a()
  {
    if ((this.c != null) && (this.c.isShowing()))
      this.c.dismiss();
  }

  public final void a(Context paramContext, boolean paramBoolean)
  {
    this.c = new ProgressDialog(paramContext);
    this.a = new t(paramBoolean);
    String str = ad.a(this.b.a.getString(2131428403), ae.d);
    this.c.setTitle(null);
    this.c.setMessage(Html.fromHtml(str));
    this.c.setButton(-2, this.b.a.getString(2131427866), new o(this));
    this.c.setOnDismissListener(new p(this));
    this.c.show();
    com.keniu.security.monitor.a.a().a(com.keniu.security.monitor.a.q, this, 1342177279);
    ab.a().a(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.g.n
 * JD-Core Version:    0.6.2
 */