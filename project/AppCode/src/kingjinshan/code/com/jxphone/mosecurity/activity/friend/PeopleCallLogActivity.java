package com.jxphone.mosecurity.activity.friend;

import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.widget.ListView;
import android.widget.TextView;
import com.jxphone.mosecurity.activity.TabContactActivity;
import com.jxphone.mosecurity.activity.a.f;
import com.jxphone.mosecurity.c.b;
import com.jxphone.mosecurity.c.c;
import com.jxphone.mosecurity.c.j;
import com.jxphone.mosecurity.logic.a.d;
import com.jxphone.mosecurity.logic.a.g;
import com.jxphone.mosecurity.logic.h;
import com.keniu.security.e.a;
import com.keniu.security.util.af;
import com.keniu.security.util.aq;
import com.keniu.security.util.k;

public final class PeopleCallLogActivity extends TabContactActivity
{
  private static final int l;
  private g m;
  private b n;
  private ListView o;
  private boolean p = false;
  private final Handler q = new bd(this);
  private final a r = new a(this.q);

  private void o()
  {
    ((Integer)getIntent().getExtras().getSerializable("id")).intValue();
    String str = getIntent().getExtras().getString("address");
    this.n = h.c(this, this.i).a(str, true);
    if (this.n == null)
    {
      this.n = new b();
      this.n.a(str);
      this.n.b(str);
      this.n.a(c.b);
    }
    this.m.a(this.r);
    this.o = ((ListView)findViewById(2131231095));
    this.o.setOnItemClickListener(new bf(this));
  }

  private void p()
  {
    j[] arrayOfj = this.m.a(this.n);
    if ((arrayOfj == null) || (arrayOfj.length == 0))
      a(getString(2131428425));
    while (true)
    {
      return;
      if (l())
        o();
      this.o.setAdapter(new f(this, arrayOfj, this.i));
      m();
    }
  }

  private Dialog q()
  {
    return k.a(this, 2131428980, new be(this)).c();
  }

  private void r()
  {
    this.o.setOnItemClickListener(new bf(this));
  }

  protected final int b()
  {
    return 2131492864;
  }

  protected final void f()
  {
    o();
    p();
  }

  protected final int k()
  {
    return 2130903192;
  }

  protected final int n()
  {
    return 2131428939;
  }

  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    ((TextView)findViewById(2131230727)).setText(2131428895);
    Bundle localBundle = getIntent().getExtras();
    this.m = h.b(this, this.i);
    Object localObject = localBundle.get("need_check_pwd");
    if ((localObject != null) && (((Boolean)localObject).booleanValue()))
      this.p = true;
    if (this.p)
      g();
    while (true)
    {
      return;
      f();
    }
  }

  protected final Dialog onCreateDialog(int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 0:
    }
    for (Object localObject = super.onCreateDialog(paramInt); ; localObject = k.a(this, 2131428980, new be(this)).c())
      return localObject;
  }

  protected final void onDestroy()
  {
    super.onDestroy();
    this.m.b(this.r);
    b[] arrayOfb = new b[1];
    arrayOfb[0] = this.n;
    b.a(arrayOfb);
  }

  public final boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 5)
      af.b(this, this.n.c());
    for (boolean bool = true; ; bool = super.onKeyDown(paramInt, paramKeyEvent))
      return bool;
  }

  public final boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default:
    case 2131231766:
    }
    while (true)
    {
      return true;
      showDialog(0);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.PeopleCallLogActivity
 * JD-Core Version:    0.6.2
 */