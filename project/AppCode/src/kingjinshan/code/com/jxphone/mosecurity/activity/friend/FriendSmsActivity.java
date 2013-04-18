package com.jxphone.mosecurity.activity.friend;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
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
import com.ijinshan.kinghelper.a.i;
import com.jxphone.mosecurity.activity.TabContactActivity;
import com.jxphone.mosecurity.c.b;
import com.jxphone.mosecurity.c.c;
import com.jxphone.mosecurity.c.l;
import com.jxphone.mosecurity.logic.a.j;
import com.jxphone.mosecurity.logic.h;
import com.keniu.security.e.e;
import com.keniu.security.util.aq;
import java.util.List;

public class FriendSmsActivity extends TabContactActivity
{
  private j l;
  private final Handler m = new aj(this);
  private final e n = new e(this.m);
  private au o;
  private ListView p;
  private ax q = new ax(this);
  private boolean r = false;
  private FrameLayout s;
  private View t;
  private MenuItem u;
  private MenuItem v;
  private View.OnClickListener w = new ap(this);

  private Dialog a(b paramb)
  {
    return new aq(this, (byte)0).a(2131428622).d(2131165194, new am(this, paramb)).c();
  }

  private void a(boolean paramBoolean)
  {
    this.r = paramBoolean;
    boolean bool1;
    boolean bool2;
    label92: View localView;
    if (!this.r)
    {
      int j = this.o.getCount();
      for (int k = 0; k < j; k++)
        this.o.a(k).a = false;
      MenuItem localMenuItem1 = this.u;
      if (!this.r)
      {
        bool1 = true;
        localMenuItem1.setEnabled(bool1);
        MenuItem localMenuItem2 = this.v;
        if (this.r)
          break label156;
        bool2 = true;
        localMenuItem2.setEnabled(bool2);
      }
    }
    else
    {
      this.o.notifyDataSetChanged();
      this.o.notifyDataSetInvalidated();
      localView = this.t;
      if (!this.r)
        break label162;
    }
    label156: label162: for (int i = 0; ; i = 8)
    {
      localView.setVisibility(i);
      this.s.requestLayout();
      this.s.invalidate();
      return;
      bool1 = false;
      break;
      bool2 = false;
      break label92;
    }
  }

  public static boolean a(Context paramContext)
  {
    l[] arrayOfl = h.a(paramContext, false).a(c.b);
    boolean bool;
    if (arrayOfl == null)
      bool = false;
    while (true)
    {
      return bool;
      if (arrayOfl.length > 0)
        bool = true;
      else
        bool = false;
    }
  }

  private void b(b paramb)
  {
    String str = paramb.c();
    if ((paramb != null) && (!TextUtils.isEmpty(str)))
      if (str.startsWith("+86"))
      {
        this.l.a(str, c.b);
        this.l.a(i.a(str), c.b);
      }
    while (true)
    {
      return;
      this.l.a(str, c.b);
      this.l.a("+86" + str, c.b);
      continue;
      j localj = this.l;
      c[] arrayOfc = new c[1];
      arrayOfc[0] = c.b;
      localj.a(arrayOfc);
    }
  }

  private void c(b paramb)
  {
    if (paramb != null)
    {
      List localList = this.o.a(paramb);
      ProgressDialog localProgressDialog = new ProgressDialog(this);
      localProgressDialog.setTitle(2131428622);
      localProgressDialog.setMessage(getString(2131428968));
      localProgressDialog.setProgressStyle(1);
      localProgressDialog.setMax(localList.size());
      localProgressDialog.setCancelable(false);
      localProgressDialog.show();
      new ao(this, localList, localProgressDialog).start();
    }
  }

  private void o()
  {
    this.p = ((ListView)findViewById(2131231095));
    if (this.p != null)
    {
      this.p.setOnItemClickListener(new ak(this));
      this.p.setOnItemLongClickListener(new al(this));
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
    l[] arrayOfl = this.l.a(c.b);
    if (arrayOfl.length == 0)
      a(getString(2131428426));
    while (true)
    {
      return;
      if (l())
        o();
      this.o = new au(this, this, arrayOfl, this.i);
      this.p.setAdapter(this.o);
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
    this.p.setOnItemClickListener(new ak(this));
    this.p.setOnItemLongClickListener(new al(this));
  }

  protected final int b()
  {
    return 2131492871;
  }

  protected final void f()
  {
    this.l = h.a(this, this.i);
    this.l.a(this.n);
    o();
    p();
  }

  protected final int n()
  {
    return 2131428953;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    ((TextView)findViewById(2131230727)).setText(2131428973);
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
    h.a(this, this.i).b(this.n);
  }

  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (this.r))
      a(false);
    for (boolean bool = true; ; bool = super.onKeyUp(paramInt, paramKeyEvent))
      return bool;
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
    if ((this.o == null) || ((this.o != null) && (this.o.getCount() <= 0)))
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
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.FriendSmsActivity
 * JD-Core Version:    0.6.2
 */