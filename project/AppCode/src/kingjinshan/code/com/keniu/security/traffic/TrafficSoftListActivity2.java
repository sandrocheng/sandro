package com.keniu.security.traffic;

import android.app.ListActivity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.KeyEvent;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.keniu.security.main.MainActivity;
import java.text.DateFormat;
import java.util.Date;
import java.util.Vector;

public class TrafficSoftListActivity2 extends ListActivity
{
  public static boolean a = false;
  private static final int b = 0;
  private static final int c = 1;
  private static final int d = 2;
  private static final int e = 3;
  private RadioGroup f;
  private LinearLayout g = null;
  private ListView h;
  private TextView i;
  private cz j;
  private Vector k;
  private Vector l;
  private TextView m;
  private TextView n;
  private RelativeLayout o;
  private ImageView p;
  private AdapterView.OnItemClickListener q = new cw(this);
  private Handler r = new cy(this);

  private void a()
  {
    if (this.h == null)
      this.h = getListView();
    this.h.setVisibility(8);
    if (this.n == null)
      this.n = ((TextView)findViewById(2131231716));
    this.n.setVisibility(8);
    if (this.m == null)
      this.m = ((TextView)findViewById(2131231717));
    this.m.setVisibility(8);
    if (this.o == null)
      this.o = ((RelativeLayout)findViewById(2131231718));
    this.o.setVisibility(8);
    if (this.p == null)
      this.p = ((ImageView)findViewById(2131231185));
    this.p.setVisibility(8);
    if (this.f == null)
      this.f = ((RadioGroup)findViewById(2131231713));
    this.f.setVisibility(8);
    this.i.setVisibility(8);
    this.g.setVisibility(0);
    dd.a(getApplicationContext(), new cx(this));
  }

  private void a(boolean paramBoolean)
  {
    if (this.o == null)
      this.o = ((RelativeLayout)findViewById(2131231718));
    this.o.setVisibility(0);
    if (this.p == null)
      this.p = ((ImageView)findViewById(2131231185));
    this.p.setVisibility(0);
    if (this.f == null)
      this.f = ((RadioGroup)findViewById(2131231713));
    this.f.setVisibility(0);
    if (this.i == null)
      this.i = ((TextView)findViewById(2131231719));
    this.i.setVisibility(8);
    if (this.h == null)
      this.h = getListView();
    this.h.setVisibility(0);
    if (this.n == null)
      this.n = ((TextView)findViewById(2131231716));
    this.n.setVisibility(0);
    Object localObject1;
    Object localObject2;
    if (paramBoolean)
    {
      y localy = y.a(getApplicationContext());
      if (localy.j <= System.currentTimeMillis())
      {
        Date localDate = new Date(localy.j);
        String str1 = DateFormat.getDateInstance(2).format(localDate);
        String str2 = DateFormat.getDateInstance(2).format(new Date());
        localObject1 = str1;
        localObject2 = str2;
        this.n.setText((String)localObject1 + "至" + (String)localObject2);
      }
    }
    while (true)
    {
      if (this.m == null)
        this.m = ((TextView)findViewById(2131231717));
      this.m.setVisibility(0);
      return;
      String str3 = DateFormat.getDateInstance(2).format(new Date());
      String str4 = DateFormat.getDateInstance(2).format(new Date());
      localObject1 = str3;
      localObject2 = str4;
      break;
      this.n.setText(DateFormat.getDateInstance(2).format(new Date()));
    }
  }

  private void b()
  {
    z localz = z.a(getBaseContext());
    if (!localz.b(false))
      return;
    new Vector();
    new Vector();
    Vector localVector1 = localz.f(getApplicationContext());
    Vector localVector2 = localz.a(getApplicationContext(), System.currentTimeMillis());
    localz.a();
    Message localMessage;
    if ((localVector1 == null) || (localVector1.size() == 0))
      localMessage = this.r.obtainMessage(2);
    while (true)
    {
      localMessage.sendToTarget();
      break;
      this.r.obtainMessage(0, localVector1).sendToTarget();
      if ((localVector2 == null) || (localVector2.size() == 0))
        localMessage = this.r.obtainMessage(3);
      else
        localMessage = this.r.obtainMessage(1, localVector2);
    }
  }

  private void c()
  {
    a = true;
    if (this.o == null)
      this.o = ((RelativeLayout)findViewById(2131231718));
    this.o.setVisibility(8);
    if (this.p == null)
      this.p = ((ImageView)findViewById(2131231185));
    this.p.setVisibility(8);
    if (this.i == null)
      this.i = ((TextView)findViewById(2131231719));
    this.i.setVisibility(0);
    this.i.setText("暂无流量排行数据");
    if (this.h == null)
      this.h = getListView();
    this.h.setVisibility(8);
    if (this.n == null)
      this.n = ((TextView)findViewById(2131231716));
    this.n.setVisibility(8);
    if (this.m == null)
      this.m = ((TextView)findViewById(2131231717));
    this.m.setVisibility(8);
  }

  private void d()
  {
    a = true;
    if (this.o == null)
      this.o = ((RelativeLayout)findViewById(2131231718));
    this.o.setVisibility(8);
    if (this.p == null)
      this.p = ((ImageView)findViewById(2131231185));
    this.p.setVisibility(8);
    if (this.f == null)
      this.f = ((RadioGroup)findViewById(2131231713));
    this.f.setVisibility(8);
    if (this.i == null)
      this.i = ((TextView)findViewById(2131231719));
    this.i.setVisibility(0);
    this.i.setText("暂无流量排行数据");
    if (this.h == null)
      this.h = getListView();
    this.h.setVisibility(8);
    if (this.n == null)
      this.n = ((TextView)findViewById(2131231716));
    this.n.setVisibility(8);
    if (this.m == null)
      this.m = ((TextView)findViewById(2131231717));
    this.m.setVisibility(8);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903314);
    this.h = getListView();
    this.o = ((RelativeLayout)findViewById(2131231718));
    this.p = ((ImageView)findViewById(2131231185));
    this.f = ((RadioGroup)findViewById(2131231713));
    this.i = ((TextView)findViewById(2131231719));
    this.n = ((TextView)findViewById(2131231716));
    this.m = ((TextView)findViewById(2131231717));
    this.g = ((LinearLayout)findViewById(2131231712));
    this.f.check(2131231714);
    this.f.setOnCheckedChangeListener(new cv(this));
    if (!z.d())
    {
      this.i.setVisibility(0);
      this.h.setVisibility(8);
    }
    this.h.setOnItemClickListener(this.q);
  }

  protected void onDestroy()
  {
    super.onDestroy();
    if (this.j != null)
      this.j = null;
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      finish();
      startActivity(new Intent(this, MainActivity.class));
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onPause()
  {
    super.onPause();
    this.g.setVisibility(8);
  }

  protected void onResume()
  {
    super.onResume();
    if (this.i == null)
      this.i = ((TextView)findViewById(2131231719));
    if (z.d())
      if ((this.k == null) || (this.k.size() == 0) || (a))
      {
        if (this.h == null)
          this.h = getListView();
        this.h.setVisibility(8);
        if (this.n == null)
          this.n = ((TextView)findViewById(2131231716));
        this.n.setVisibility(8);
        if (this.m == null)
          this.m = ((TextView)findViewById(2131231717));
        this.m.setVisibility(8);
        if (this.o == null)
          this.o = ((RelativeLayout)findViewById(2131231718));
        this.o.setVisibility(8);
        if (this.p == null)
          this.p = ((ImageView)findViewById(2131231185));
        this.p.setVisibility(8);
        if (this.f == null)
          this.f = ((RadioGroup)findViewById(2131231713));
        this.f.setVisibility(8);
        this.i.setVisibility(8);
        this.g.setVisibility(0);
        dd.a(getApplicationContext(), new cx(this));
        if (a)
          a = false;
      }
    while (true)
    {
      return;
      this.i.setText(2131428220);
      this.i.setVisibility(0);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.TrafficSoftListActivity2
 * JD-Core Version:    0.6.2
 */