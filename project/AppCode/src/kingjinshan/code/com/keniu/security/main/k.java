package com.keniu.security.main;

import android.app.Dialog;
import android.content.Context;
import android.content.pm.PackageManager;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ListView;
import com.keniu.security.util.aq;

public final class k
{
  private Context a;
  private LayoutInflater b;
  private Dialog c;
  private PackageManager d;

  public k(Context paramContext)
  {
    this.a = paramContext;
    this.d = this.a.getPackageManager();
    this.b = ((LayoutInflater)this.a.getSystemService("layout_inflater"));
    View localView = this.b.inflate(2130903229, null);
    ListView localListView = (ListView)localView.findViewById(2131231444);
    localListView.setAdapter(new m(this));
    localListView.setOnItemClickListener(new l(this));
    aq localaq = new aq(this.a, (byte)0);
    localaq.a(2131428344);
    localaq.a(localView);
    this.c = localaq.c();
  }

  public final void a()
  {
    this.c.show();
  }

  public final void b()
  {
    this.c.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.k
 * JD-Core Version:    0.6.2
 */