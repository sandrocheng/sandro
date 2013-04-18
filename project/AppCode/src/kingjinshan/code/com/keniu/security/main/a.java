package com.keniu.security.main;

import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.hoi.widget.q;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;
import com.keniu.security.util.ax;

public final class a
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  public static final int d = 0;
  public static final int e = 1;
  public static final int f = 2;
  public static final int g = 3;
  public static final int h = 4;
  private q i;
  private com.ijinshan.battery.recommand.a j;
  private boolean k = false;
  private Context l;
  private boolean m = false;
  private int n = 0;
  private int o = 0;
  private Handler p = new b(this);

  public a(Context paramContext)
  {
    this.l = paramContext;
  }

  private void a(int paramInt)
  {
    aq localaq;
    View localView;
    TextView localTextView;
    StringBuilder localStringBuilder2;
    String str1;
    String str2;
    if (!this.m)
    {
      localaq = new aq(this.l, (byte)0);
      localaq.a(this.l.getString(2131427865));
      localView = ((LayoutInflater)this.l.getSystemService("layout_inflater")).inflate(2130903099, null);
      localTextView = (TextView)localView.findViewById(2131231009);
      StringBuilder localStringBuilder1 = new StringBuilder().append(this.l.getString(2131428117));
      Context localContext = this.l;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(paramInt);
      localStringBuilder2 = localStringBuilder1.append(localContext.getString(2131428390, arrayOfObject));
      str1 = this.l.getString(2131428391);
      switch (paramInt)
      {
      case 2:
      case 3:
      default:
        str2 = str1 + this.l.getString(2131428388);
      case 1:
      case 4:
      }
    }
    while (true)
    {
      localTextView.setText(str2 + "\n");
      ((TextView)localView.findViewById(2131231010)).setOnClickListener(new e(this));
      localaq.a(localView);
      localaq.b(this.l.getString(2131428834), null);
      localaq.c().show();
      return;
      str2 = str1 + this.l.getString(2131428348);
      continue;
      str2 = str1 + this.l.getString(2131428375);
    }
  }

  private String b(int paramInt)
  {
    String str1 = this.l.getString(2131428391);
    String str2;
    switch (paramInt)
    {
    case 2:
    case 3:
    default:
      str2 = str1 + this.l.getString(2131428388);
    case 1:
    case 4:
    }
    while (true)
    {
      return str2;
      str2 = str1 + this.l.getString(2131428348);
      continue;
      str2 = str1 + this.l.getString(2131428375);
    }
  }

  private void e()
  {
    this.i.a(this.n);
    this.i.c(this.o);
    q localq = this.i;
    Context localContext = this.l;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = ax.c(this.n);
    localq.a(localContext.getString(2131428118, arrayOfObject));
    this.i.a(true);
  }

  public final void a()
  {
    this.m = true;
  }

  public final void b()
  {
    if (this.i != null)
    {
      this.i.dismiss();
      this.i = null;
    }
  }

  public final void c()
  {
    this.k = false;
    if (this.i == null)
    {
      this.i = q.a(this.l, 2131428115);
      this.i.a(-1, this.l.getString(2131428113), new c(this));
      this.i.a(-2, this.l.getString(2131428114), new d(this));
      this.i.show();
      this.i.b(this.l.getString(2131428120));
      this.i.a(false);
    }
    if (this.j == null)
    {
      this.j = new com.ijinshan.battery.recommand.a(this.p, this.l);
      this.j.start();
    }
  }

  public final boolean d()
  {
    if (this.j != null);
    for (boolean bool = this.j.isAlive(); ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.a
 * JD-Core Version:    0.6.2
 */