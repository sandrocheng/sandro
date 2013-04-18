package com.keniu.security.main.a;

import android.app.Dialog;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.ijinshan.kinghelper.firewall.dd;
import com.keniu.security.util.aq;

public final class q extends v
{
  q()
  {
    this.g = k.d;
    this.a = "云安全计划";
    this.b = "立即加入";
    this.c = "已加入";
    this.d = "已加入";
    this.e = "未加入";
    this.f = "是否加入云安全计划";
  }

  private Dialog d(Context paramContext)
  {
    aq localaq = new aq(paramContext, (byte)0);
    View localView = LayoutInflater.from(paramContext).inflate(2130903097, null);
    ((TextView)localView.findViewById(2131231003)).setText(2131427639);
    TextView localTextView = (TextView)localView.findViewById(2131231004);
    localTextView.setText(2131427937);
    localTextView.setVisibility(0);
    localTextView.setOnClickListener(new r(this, paramContext));
    localView.findViewById(2131231005).setVisibility(8);
    localaq.a(localView);
    localaq.a(2131427865);
    localaq.a(2131427888, new s(this, paramContext));
    localaq.b(2131427889, new t(this, paramContext));
    return localaq.c();
  }

  public final void a(Context paramContext)
  {
    dd.a(paramContext);
    aq localaq = new aq(paramContext, (byte)0);
    View localView = LayoutInflater.from(paramContext).inflate(2130903097, null);
    ((TextView)localView.findViewById(2131231003)).setText(2131427639);
    TextView localTextView = (TextView)localView.findViewById(2131231004);
    localTextView.setText(2131427937);
    localTextView.setVisibility(0);
    localTextView.setOnClickListener(new r(this, paramContext));
    localView.findViewById(2131231005).setVisibility(8);
    localaq.a(localView);
    localaq.a(2131427865);
    localaq.a(2131427888, new s(this, paramContext));
    localaq.b(2131427889, new t(this, paramContext));
    localaq.c().show();
    this.a = "加入云安全计划";
  }

  protected final boolean c(Context paramContext)
  {
    dd.a(paramContext);
    boolean bool = dd.j();
    if (bool);
    for (this.a = "加入云安全计划"; ; this.a = "未加入云安全计划")
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.a.q
 * JD-Core Version:    0.6.2
 */