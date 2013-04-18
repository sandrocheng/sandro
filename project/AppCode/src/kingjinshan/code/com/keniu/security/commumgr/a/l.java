package com.keniu.security.commumgr.a;

import android.content.Context;
import android.text.Html;
import com.keniu.security.util.ap;
import com.keniu.security.util.k;
import com.keniu.security.util.w;
import com.keniu.security.util.x;
import com.keniu.security.util.z;

public class l extends k
  implements s
{
  private x a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    return new o(this, paramInt4, paramInt1, paramInt5, paramInt2, paramInt3);
  }

  private z a(int paramInt)
  {
    return new m(this, paramInt);
  }

  private w b(int paramInt1, int paramInt2)
  {
    return new n(this, paramInt1, paramInt2);
  }

  public final void a()
  {
    String str = e.C;
    a(e.z, str, a(256)).show();
  }

  public final void a(int paramInt1, int paramInt2)
  {
    a(e.z, 2131427940, 2131427864, b(paramInt1, paramInt2));
  }

  public final void b()
  {
    a(e.z, 2131427941, 2131427876, b(259, 6));
  }

  public final void c()
  {
    a(e.z, 2131428462, 2131427864, b(262, 5));
  }

  public final void d()
  {
    a(e.z, 2131428463, 2131427864, b(261, 6));
  }

  public final void e()
  {
    Context localContext = e.z;
    z localz = a(265);
    k.a(localContext, localContext.getString(2131428465), localz).show();
  }

  public final void f()
  {
    Context localContext = e.z;
    new StringBuilder().append(l.class.getName()).append(".dlg_QueryReportMsgIncludeContent").toString();
    o localo = new o(this, 273, 263, 272, 264, 265);
    k.a(localContext, Html.fromHtml(localContext.getString(2131428464)), localo);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.commumgr.a.l
 * JD-Core Version:    0.6.2
 */