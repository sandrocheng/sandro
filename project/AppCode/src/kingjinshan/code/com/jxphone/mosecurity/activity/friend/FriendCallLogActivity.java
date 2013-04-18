package com.jxphone.mosecurity.activity.friend;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.jxphone.mosecurity.activity.TabContactActivity;
import com.jxphone.mosecurity.c.b;
import com.jxphone.mosecurity.c.c;
import com.jxphone.mosecurity.c.j;
import com.jxphone.mosecurity.logic.a.g;
import com.jxphone.mosecurity.logic.h;
import com.keniu.security.e.a;
import com.keniu.security.util.aq;
import java.util.List;

public class FriendCallLogActivity extends TabContactActivity
{
  private g l;
  private z m;
  private final Handler n = new n(this);
  private final a o = new a(this.n);
  private ListView p;
  private y q = new y(this);
  private boolean r = false;
  private FrameLayout s;
  private View t;
  private MenuItem u;
  private MenuItem v;
  private View.OnClickListener w = new t(this);

  private Dialog a(b paramb)
  {
    return new aq(this, (byte)0).a(2131428622).d(2131165195, new q(this, paramb)).c();
  }

  private void a(boolean paramBoolean)
  {
    this.r = paramBoolean;
    Log.e("setMultiChoceMode>>>", "mMuiltChoseMode=" + this.r);
    boolean bool1;
    boolean bool2;
    label120: View localView;
    if (!this.r)
    {
      int j = this.m.getCount();
      for (int k = 0; k < j; k++)
        this.m.a(k).a = false;
      MenuItem localMenuItem1 = this.u;
      if (!this.r)
      {
        bool1 = true;
        localMenuItem1.setEnabled(bool1);
        MenuItem localMenuItem2 = this.v;
        if (this.r)
          break label186;
        bool2 = true;
        localMenuItem2.setEnabled(bool2);
      }
    }
    else
    {
      this.m.notifyDataSetChanged();
      this.m.notifyDataSetInvalidated();
      localView = this.t;
      if (!this.r)
        break label192;
    }
    label186: label192: for (int i = 0; ; i = 8)
    {
      localView.setVisibility(i);
      this.s.requestLayout();
      this.s.invalidate();
      return;
      bool1 = false;
      break;
      bool2 = false;
      break label120;
    }
  }

  public static boolean a(Context paramContext)
  {
    j[] arrayOfj = h.b(paramContext, false).a(c.b);
    boolean bool;
    if (arrayOfj == null)
      bool = false;
    while (true)
    {
      return bool;
      if (arrayOfj.length > 0)
        bool = true;
      else
        bool = false;
    }
  }

  private void b(b paramb)
  {
    if (paramb != null)
    {
      List localList = this.m.a(paramb);
      ProgressDialog localProgressDialog = new ProgressDialog(this);
      localProgressDialog.setTitle(2131428622);
      localProgressDialog.setMessage(getString(2131428968));
      localProgressDialog.setProgressStyle(1);
      localProgressDialog.setMax(localList.size());
      localProgressDialog.setCancelable(false);
      localProgressDialog.show();
      new s(this, localList, localProgressDialog).start();
    }
  }

  private void c(b paramb)
  {
    if ((paramb != null) && (!TextUtils.isEmpty(paramb.c())))
      this.l.b(paramb.c(), c.b);
    while (true)
    {
      return;
      g localg = this.l;
      c[] arrayOfc = new c[1];
      arrayOfc[0] = c.b;
      localg.a(arrayOfc);
    }
  }

  private void o()
  {
    this.p = ((ListView)findViewById(2131231095));
    if (this.p != null)
    {
      this.p.setOnItemClickListener(new o(this));
      this.p.setOnItemLongClickListener(new p(this));
    }
    this.s = ((FrameLayout)findViewById(2131231086));
    this.t = LayoutInflater.from(this).inflate(2130903254, this.s, false);
    this.t.setVisibility(8);
    ((Button)this.t.findViewById(2131231511)).setOnClickListener(this.w);
    this.t.findViewById(2131231512).setOnClickListener(this.w);
    this.t.findViewById(2131231513).setOnClickListener(this.w);
    this.s.addView(this.t);
  }

  private void p()
  {
    j[] arrayOfj = this.l.a(c.b);
    if (arrayOfj.length == 0)
      a(getString(2131428425));
    while (true)
    {
      return;
      if (l())
        o();
      this.m = new z(this, this, arrayOfj, this.i);
      this.p.setAdapter(this.m);
      m();
    }
  }

  private Bundle q()
  {
    Bundle localBundle = new Bundle(1);
    localBundle.putBoolean("isDummy", this.i);
    return localBundle;
  }

  private void r()
  {
    this.p.setOnItemClickListener(new o(this));
    this.p.setOnItemLongClickListener(new p(this));
  }

  protected final int b()
  {
    return 2131492871;
  }

  protected final void f()
  {
    this.l = h.b(this, this.i);
    this.l.a(this.o);
    o();
    p();
  }

  protected final int i()
  {
    return 2130903193;
  }

  protected final int n()
  {
    return 2131428939;
  }

  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    ((TextView)findViewById(2131230727)).setText(2131428972);
    this.q.a(this);
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    boolean bool = super.onCreateOptionsMenu(paramMenu);
    this.u = paramMenu.findItem(2131231779);
    this.v = paramMenu.findItem(2131231780);
    return bool;
  }

  protected void onDestroy()
  {
    this.q.b(this);
    super.onDestroy();
    h.b(this, this.i).b(this.o);
  }

  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool1;
    if ((paramInt == 4) && (this.r))
    {
      a(false);
      bool1 = true;
    }
    while (true)
    {
      return bool1;
      try
      {
        boolean bool2 = super.onKeyUp(paramInt, paramKeyEvent);
        bool1 = bool2;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        bool1 = true;
      }
    }
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default:
    case 2131231779:
    case 2131231780:
    }
    while (true)
    {
      return true;
      a(true);
      ((Button)this.t.findViewById(2131231511)).setText(2131428624);
      this.u.setEnabled(false);
      this.v.setEnabled(true);
      continue;
      a(true);
      ((Button)this.t.findViewById(2131231511)).setText(2131428625);
      this.u.setEnabled(true);
      this.v.setEnabled(false);
    }
  }

  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    boolean bool1 = super.onPrepareOptionsMenu(paramMenu);
    int i;
    boolean bool2;
    label45: MenuItem localMenuItem2;
    if ((this.m == null) || ((this.m != null) && (this.m.getCount() <= 0)))
    {
      i = 1;
      MenuItem localMenuItem1 = this.u;
      if (i != 0)
        break label85;
      bool2 = true;
      localMenuItem1.setEnabled(bool2);
      localMenuItem2 = this.v;
      if (i != 0)
        break label91;
    }
    label85: label91: for (boolean bool3 = true; ; bool3 = false)
    {
      localMenuItem2.setEnabled(bool3);
      return bool1;
      i = 0;
      break;
      bool2 = false;
      break label45;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.FriendCallLogActivity
 * JD-Core Version:    0.6.2
 */