package com.ijinshan.kinghelper.firewall;

import android.a.t;
import android.app.Activity;
import android.content.ContentResolver;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import com.keniu.security.util.ac;
import com.keniu.security.util.aq;
import java.text.SimpleDateFormat;
import java.util.List;

public class ServicesSmsDetailActivity extends Activity
  implements View.OnClickListener, AdapterView.OnItemLongClickListener
{
  public static final String a = ServicesSmsDetailActivity.class.getName() + "_extra_sms_param";
  public static final String b = ServicesSmsDetailActivity.class.getName() + "_extra_sms_address";
  public static final String c = ServicesSmsDetailActivity.class.getName() + "_extra_sms_address_owner";
  public static final String d = ServicesSmsDetailActivity.class.getName() + "_extra_sms_array";
  public static final String e = ServicesSmsDetailActivity.class.getName() + "_extra_group_index";
  public static final String f = ServicesSmsDetailActivity.class.getName() + "_extra_number_index";
  private static final SimpleDateFormat g = new SimpleDateFormat("HH:mm MM/dd");
  private ListView h;
  private dx i;
  private ek j = null;
  private int k = -1;
  private int l = -1;
  private boolean m = false;
  private TextView n;
  private int o = -1;
  private DialogInterface.OnClickListener p = new ds(this);
  private int q = -1;

  private void b()
  {
    if (this.o == -1);
    while (true)
    {
      return;
      aq localaq = new aq(this, (byte)0);
      localaq.b(2131427824);
      localaq.a(2131427865);
      localaq.a(2131427541, new dt(this));
      localaq.c(2131427542, null);
      localaq.c();
      localaq.d();
    }
  }

  private void c()
  {
    ej localej = (ej)((ei)this.j.a.get(this.k)).a.get(this.l);
    ((ei)this.j.a.get(this.k)).a.remove(this.l);
    String[] arrayOfString = new String[1];
    arrayOfString[0] = localej.b;
    try
    {
      getContentResolver().delete(t.a, "address = ? and type = 1", arrayOfString);
      label93: setResult(1);
      finish();
      return;
    }
    catch (Exception localException)
    {
      break label93;
    }
  }

  private void d()
  {
    if (this.q == this.k);
    while (true)
    {
      return;
      ei localei1 = (ei)this.j.a.get(this.k);
      ei localei2 = (ei)this.j.a.get(this.q);
      ej localej = (ej)localei1.a.get(this.l);
      localei1.a.remove(this.l);
      localei2.a.add(localej);
      this.i.notifyDataSetChanged();
      this.j.b.a(localej.b, localei2.b);
      this.m = true;
      this.k = this.q;
    }
  }

  public void onClick(View paramView)
  {
    int i1 = 0;
    if (paramView.getId() == 2131230757)
    {
      aq localaq1 = new aq(this, (byte)0);
      localaq1.b(2131427825);
      localaq1.a(2131427865);
      localaq1.a(2131427541, new du(this));
      localaq1.c(2131427542, null);
      localaq1.c();
      localaq1.d();
    }
    while (true)
    {
      return;
      if (paramView.getId() == 2131230756)
      {
        aq localaq2 = new aq(this, (byte)0);
        String[] arrayOfString = new String[this.j.a.size()];
        while (i1 < this.j.a.size())
        {
          arrayOfString[i1] = ((ei)this.j.a.get(i1)).e;
          i1++;
        }
        localaq2.a(2131427816);
        this.q = this.k;
        localaq2.a(arrayOfString, this.k, new dv(this));
        localaq2.a(2131427541, new dw(this));
        localaq2.d();
      }
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    setContentView(2130903051);
    ((TextView)findViewById(2131230727)).setText(2131427344);
    this.h = ((ListView)findViewById(2131230823));
    this.j = ((ek)ac.a().a(getIntent().getStringExtra(a)));
    this.k = getIntent().getIntExtra(e, -1);
    this.l = getIntent().getIntExtra(f, -1);
    this.i = new dx(this, this, ((ej)((ei)this.j.a.get(this.k)).a.get(this.l)).a);
    this.h.setAdapter(this.i);
    this.h.setOnItemLongClickListener(this);
    String str1 = getIntent().getStringExtra(c);
    String str2 = getIntent().getStringExtra(b);
    this.n = ((TextView)findViewById(2131230820));
    if (TextUtils.isEmpty(str1));
    for (String str3 = getString(2131427674); ; str3 = str1)
    {
      this.n.setText(str3 + "   " + str2);
      ((Button)findViewById(2131230757)).setOnClickListener(this);
      ((Button)findViewById(2131230756)).setOnClickListener(this);
      return;
    }
  }

  public boolean onItemLongClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.o = paramInt;
    aq localaq = new aq(this, (byte)0);
    localaq.a(2131427812);
    localaq.d(2131165248, this.p);
    localaq.c();
    localaq.d();
    return true;
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      if (!this.m)
        break label24;
      setResult(1);
    }
    while (true)
    {
      return super.onKeyDown(paramInt, paramKeyEvent);
      label24: setResult(0);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.ServicesSmsDetailActivity
 * JD-Core Version:    0.6.2
 */