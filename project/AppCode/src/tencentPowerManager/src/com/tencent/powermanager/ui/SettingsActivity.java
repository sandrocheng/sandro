package com.tencent.powermanager.ui;

import android.app.ListActivity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.ListView;
import b;
import bg;
import cu;
import java.util.ArrayList;
import java.util.List;
import r;
import s.a;

public class SettingsActivity extends ListActivity
  implements View.OnClickListener
{
  private r a = null;
  private Button b = null;
  private List<bg> c = null;
  private b d = null;
  private bg e;
  private bg f;
  private bg g;
  private bg h;
  private bg i;
  private bg j;
  private bg k;
  private bg l;
  private bg m;
  private AdapterView.OnItemClickListener n = new cu(this);

  private void b()
  {
    this.e.e = this.a.u();
    this.f.e = this.a.t();
    this.g.e = this.a.q();
    this.h.e = this.a.p();
    this.i.d = this.a.p();
    this.j.e = this.a.r();
    this.d.notifyDataSetChanged();
  }

  public final void a()
  {
    String str = "http://pt.3g.qq.com/i/308/";
    if (!str.startsWith("http://"))
      str = "http://" + str;
    Uri localUri = Uri.parse(str);
    try
    {
      startActivity(new Intent("android.intent.action.VIEW", localUri));
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public void onClick(View paramView)
  {
    finish();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903086);
    this.b = ((Button)findViewById(2131230720));
    this.b.setOnClickListener(this);
    this.a = s.a.d();
    this.c = new ArrayList();
    this.j = new bg();
    this.j.b = getResources().getString(2131099769);
    this.j.a = 2;
    this.c.add(this.j);
    this.e = new bg();
    this.e.b = getResources().getString(2131099764);
    this.e.a = 2;
    this.c.add(this.e);
    this.f = new bg();
    this.f.b = getResources().getString(2131099765);
    this.f.a = 2;
    this.c.add(this.f);
    this.g = new bg();
    this.g.b = getResources().getString(2131099766);
    this.g.a = 2;
    this.c.add(this.g);
    this.h = new bg();
    this.h.b = getResources().getString(2131099767);
    this.h.a = 2;
    this.c.add(this.h);
    this.i = new bg();
    this.i.b = getResources().getString(2131099768);
    this.i.a = 1;
    this.c.add(this.i);
    this.k = new bg();
    this.k.b = getResources().getString(2131099820);
    this.k.a = 1;
    this.c.add(this.k);
    this.l = new bg();
    this.l.b = getResources().getString(2131099785);
    this.l.a = 1;
    this.c.add(this.l);
    this.m = new bg();
    this.m.b = getResources().getString(2131099770);
    this.m.a = 1;
    this.c.add(this.m);
    this.d = new b(this, this.c);
    getListView().setAdapter(this.d);
    getListView().setOnItemClickListener(this.n);
    b();
  }

  protected void onResume()
  {
    super.onResume();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.ui.SettingsActivity
 * JD-Core Version:    0.6.2
 */