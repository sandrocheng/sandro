package com.keniu.security.protection.ui;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View.OnClickListener;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.SimpleAdapter;
import android.widget.TextView;
import com.keniu.security.main.MainActivity;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class PreventTheftMainActivity extends Activity
{
  private static final String b = "VMAP_ITEM_IMAGE";
  private static final String c = "VMAP_ITEM_TITLE";
  boolean a;
  private List d;
  private ListView e;
  private SimpleAdapter f;
  private TextView g;
  private Button h;
  private ImageView i;
  private RelativeLayout j;
  private RelativeLayout k;
  private LinearLayout l;
  private Button m;
  private Button n;
  private Button o;
  private final AdapterView.OnItemClickListener p = new l(this);
  private View.OnClickListener q = new m(this);
  private View.OnClickListener r = new n(this);

  private void a()
  {
    this.g.setText(2131429228);
    this.j.setVisibility(0);
    this.k.setVisibility(8);
    this.h.setOnClickListener(this.r);
    this.l.setVisibility(8);
  }

  private void b()
  {
    this.j.setVisibility(8);
    this.k.setVisibility(0);
    this.i.setImageResource(2130837768);
  }

  private void c()
  {
    this.j.setVisibility(0);
    this.k.setVisibility(8);
    this.g.setText(2131429229);
    this.g.setTextColor(getResources().getColor(2131296346));
    this.i.setImageResource(2130837767);
    this.h.setOnClickListener(this.r);
  }

  private void d()
  {
    this.g = ((TextView)findViewById(2131231258));
    this.i = ((ImageView)findViewById(2131231254));
    this.k = ((RelativeLayout)findViewById(2131231255));
    this.j = ((RelativeLayout)findViewById(2131231257));
    this.h = ((Button)findViewById(2131231259));
    this.l = ((LinearLayout)findViewById(2131231219));
  }

  private void e()
  {
    HashMap localHashMap1 = new HashMap();
    localHashMap1.put("VMAP_ITEM_IMAGE", Integer.valueOf(2130837766));
    localHashMap1.put("VMAP_ITEM_TITLE", getString(2131429341));
    this.d.add(localHashMap1);
    HashMap localHashMap2 = new HashMap();
    localHashMap2.put("VMAP_ITEM_IMAGE", Integer.valueOf(2130837764));
    localHashMap2.put("VMAP_ITEM_TITLE", getString(2131429339));
    this.d.add(localHashMap2);
    HashMap localHashMap3 = new HashMap();
    localHashMap3.put("VMAP_ITEM_IMAGE", Integer.valueOf(2130837769));
    localHashMap3.put("VMAP_ITEM_TITLE", getString(2131429338));
    this.d.add(localHashMap3);
    HashMap localHashMap4 = new HashMap();
    localHashMap4.put("VMAP_ITEM_IMAGE", Integer.valueOf(2130837770));
    localHashMap4.put("VMAP_ITEM_TITLE", getString(2131429337));
    this.d.add(localHashMap4);
    HashMap localHashMap5 = new HashMap();
    localHashMap5.put("VMAP_ITEM_IMAGE", Integer.valueOf(2130837763));
    localHashMap5.put("VMAP_ITEM_TITLE", getString(2131429340));
    this.d.add(localHashMap5);
  }

  private void f()
  {
    aq localaq = new aq(this, (byte)0);
    localaq.a(getString(2131427865));
    localaq.b(getString(2131429304));
    localaq.b(getString(2131429306), new o(this));
    localaq.a(getString(2131429305), new p(this));
    localaq.c().show();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903163);
    this.e = ((ListView)findViewById(2131231260));
    this.e.setOnItemClickListener(this.p);
    this.g = ((TextView)findViewById(2131231258));
    this.i = ((ImageView)findViewById(2131231254));
    this.k = ((RelativeLayout)findViewById(2131231255));
    this.j = ((RelativeLayout)findViewById(2131231257));
    this.h = ((Button)findViewById(2131231259));
    this.l = ((LinearLayout)findViewById(2131231219));
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0))
    {
      finish();
      startActivity(new Intent(this, MainActivity.class));
    }
    while (true)
      return false;
  }

  public void onStart()
  {
    super.onStart();
    this.d = new ArrayList();
    HashMap localHashMap1 = new HashMap();
    localHashMap1.put("VMAP_ITEM_IMAGE", Integer.valueOf(2130837766));
    localHashMap1.put("VMAP_ITEM_TITLE", getString(2131429341));
    this.d.add(localHashMap1);
    HashMap localHashMap2 = new HashMap();
    localHashMap2.put("VMAP_ITEM_IMAGE", Integer.valueOf(2130837764));
    localHashMap2.put("VMAP_ITEM_TITLE", getString(2131429339));
    this.d.add(localHashMap2);
    HashMap localHashMap3 = new HashMap();
    localHashMap3.put("VMAP_ITEM_IMAGE", Integer.valueOf(2130837769));
    localHashMap3.put("VMAP_ITEM_TITLE", getString(2131429338));
    this.d.add(localHashMap3);
    HashMap localHashMap4 = new HashMap();
    localHashMap4.put("VMAP_ITEM_IMAGE", Integer.valueOf(2130837770));
    localHashMap4.put("VMAP_ITEM_TITLE", getString(2131429337));
    this.d.add(localHashMap4);
    HashMap localHashMap5 = new HashMap();
    localHashMap5.put("VMAP_ITEM_IMAGE", Integer.valueOf(2130837763));
    localHashMap5.put("VMAP_ITEM_TITLE", getString(2131429340));
    this.d.add(localHashMap5);
    this.f = new SimpleAdapter(this, this.d, 2130903164, new String[] { "VMAP_ITEM_TITLE", "VMAP_ITEM_IMAGE" }, new int[] { 2131230854, 2131231025 });
    this.e.setAdapter(this.f);
    boolean bool = ag.g(this);
    this.a = ag.i(this);
    this.m = ((Button)findViewById(2131231250));
    this.n = ((Button)findViewById(2131231251));
    this.o = ((Button)findViewById(2131231252));
    this.m.setOnClickListener(this.q);
    this.n.setOnClickListener(this.q);
    this.o.setOnClickListener(this.q);
    if (!this.a)
    {
      this.g.setText(2131429228);
      this.j.setVisibility(0);
      this.k.setVisibility(8);
      this.h.setOnClickListener(this.r);
      this.l.setVisibility(8);
    }
    while (true)
    {
      if ((getIntent().getStringExtra("type") != null) && (ag.b()))
      {
        aq localaq = new aq(this, (byte)0);
        localaq.a(getString(2131427865));
        localaq.b(getString(2131429304));
        localaq.b(getString(2131429306), new o(this));
        localaq.a(getString(2131429305), new p(this));
        localaq.c().show();
      }
      return;
      if (!bool)
      {
        this.j.setVisibility(0);
        this.k.setVisibility(8);
        this.g.setText(2131429229);
        this.g.setTextColor(getResources().getColor(2131296346));
        this.i.setImageResource(2130837767);
        this.h.setOnClickListener(this.r);
      }
      else
      {
        b();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.ui.PreventTheftMainActivity
 * JD-Core Version:    0.6.2
 */