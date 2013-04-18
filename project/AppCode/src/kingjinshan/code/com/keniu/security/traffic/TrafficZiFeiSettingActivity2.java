package com.keniu.security.traffic;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import cn.com.wali.zft.plugin;
import com.ijinshan.kinghelper.firewall.dc;
import com.jxphone.mosecurity.a.a;
import com.keniu.security.util.SafeViewFlipper;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;
import java.util.ArrayList;
import java.util.Iterator;

public class TrafficZiFeiSettingActivity2 extends Activity
  implements View.OnClickListener, AdapterView.OnItemSelectedListener
{
  private static final int r = 300;
  private Spinner a;
  private Spinner b;
  private Spinner c;
  private Spinner d;
  private ArrayList e;
  private String f;
  private ArrayList g;
  private String h;
  private ArrayList i;
  private String j;
  private ArrayList k;
  private String l;
  private y m;
  private SafeViewFlipper n;
  private String o;
  private boolean p;
  private boolean q;
  private EditText s;
  private TextView t;
  private boolean u = false;
  private boolean v = false;
  private boolean w = false;
  private boolean x = false;
  private boolean y = false;

  private void a()
  {
    this.t = ((TextView)findViewById(2131231684));
    findViewById(2131231742).setOnClickListener(this);
    findViewById(2131231741).setOnClickListener(this);
    findViewById(2131231686).setOnClickListener(this);
    findViewById(2131231685).setOnClickListener(this);
    findViewById(2131231687).setOnClickListener(this);
    this.a = ((Spinner)findViewById(2131231737));
    if ((this.e != null) && (this.e.size() > 0))
    {
      ArrayList localArrayList4 = new ArrayList();
      Iterator localIterator4 = this.e.iterator();
      while (localIterator4.hasNext())
        localArrayList4.add(((String)localIterator4.next()).split(",")[1]);
      ArrayAdapter localArrayAdapter4 = new ArrayAdapter(this, 2130903310, localArrayList4);
      localArrayAdapter4.setDropDownViewResource(2130837601);
      this.a.setAdapter(localArrayAdapter4);
      if (!TextUtils.isEmpty(this.m.k))
      {
        int i4 = this.e.indexOf(this.m.k);
        this.a.setSelection(i4);
        this.f = ((String)this.e.get(i4));
        this.u = true;
      }
    }
    this.a.setOnItemSelectedListener(this);
    this.b = ((Spinner)findViewById(2131231738));
    if ((!TextUtils.isEmpty(this.m.k)) && (!TextUtils.isEmpty(this.m.l)))
    {
      this.g = plugin.getcities(Integer.valueOf(this.m.k.split(",")[0]).intValue());
      ArrayList localArrayList3 = new ArrayList();
      Iterator localIterator3 = this.g.iterator();
      while (localIterator3.hasNext())
        localArrayList3.add(((String)localIterator3.next()).split(",")[1]);
      ArrayAdapter localArrayAdapter3 = new ArrayAdapter(this, 2130903310, localArrayList3);
      localArrayAdapter3.setDropDownViewResource(2130837601);
      this.b.setAdapter(localArrayAdapter3);
      int i3 = this.g.indexOf(this.m.l);
      this.b.setSelection(i3);
      this.h = ((String)this.g.get(i3));
      this.v = true;
    }
    this.b.setOnItemSelectedListener(this);
    this.c = ((Spinner)findViewById(2131231739));
    if ((this.i != null) && (this.i.size() > 0))
    {
      ArrayList localArrayList2 = new ArrayList();
      Iterator localIterator2 = this.i.iterator();
      while (localIterator2.hasNext())
        localArrayList2.add(((String)localIterator2.next()).split(",")[1]);
      ArrayAdapter localArrayAdapter2 = new ArrayAdapter(this, 2130903310, localArrayList2);
      localArrayAdapter2.setDropDownViewResource(2130837601);
      this.c.setAdapter(localArrayAdapter2);
      if (!TextUtils.isEmpty(this.m.n))
      {
        int i2 = this.i.indexOf(this.m.n);
        this.c.setSelection(i2);
        this.j = ((String)this.i.get(i2));
        this.w = true;
      }
    }
    this.c.setOnItemSelectedListener(this);
    this.d = ((Spinner)findViewById(2131231740));
    if ((!TextUtils.isEmpty(this.m.n)) && (!TextUtils.isEmpty(this.m.m)))
    {
      this.k = plugin.getbrands(this.m.n.split(",")[0]);
      ArrayList localArrayList1 = new ArrayList();
      Iterator localIterator1 = this.k.iterator();
      while (localIterator1.hasNext())
        localArrayList1.add(((String)localIterator1.next()).split(",")[1]);
      ArrayAdapter localArrayAdapter1 = new ArrayAdapter(this, 2130903310, localArrayList1);
      localArrayAdapter1.setDropDownViewResource(2130837601);
      this.d.setAdapter(localArrayAdapter1);
      int i1 = this.k.indexOf(this.m.m);
      this.d.setSelection(i1);
      this.l = ((String)this.k.get(i1));
      this.x = true;
    }
    this.d.setOnItemSelectedListener(this);
    this.s = ((EditText)findViewById(2131231683));
    if (y.d(this))
    {
      y localy = y.a(this);
      this.s.setText(String.valueOf(localy.d / 1024L / 1024L));
    }
    RadioGroup localRadioGroup = (RadioGroup)findViewById(2131231077);
    TextView localTextView = (TextView)findViewById(2131231684);
    localTextView.setText("M");
    localRadioGroup.check(localRadioGroup.getChildAt(0).getId());
    localRadioGroup.setOnCheckedChangeListener(new eq(this, localTextView));
  }

  private void b()
  {
    if (this.y)
      a.d(getApplicationContext(), "18");
    y localy = y.a(this);
    String str = ((TelephonyManager)getSystemService("phone")).getSubscriberId();
    localy.p = str;
    if ((str != null) && (!str.equals("")))
      localy.a(this, 2131428297);
    if (!TextUtils.isEmpty(this.f))
    {
      dc.a(this);
      if (this.f.equals(this.h))
        dc.e(this.f.split(",")[1].toString());
    }
    else
    {
      localy.k = this.f;
      localy.a(this, 2131428299);
      localy.l = this.h;
      localy.a(this, 2131428300);
      localy.n = this.j;
      localy.a(this, 2131428301);
      localy.m = this.l;
      localy.a(this, 2131428302);
      if ((this.q) && (dc.b()))
        new aq(this, (byte)0).a(2131427865).b(2131429624).a(2131429625, new et(this)).b(2131429626, new es(this)).d();
      if (!TextUtils.isEmpty(this.o))
      {
        if (!this.o.equals("RatesRequest"))
          break label321;
        setResult(-1);
        finish();
      }
    }
    while (true)
    {
      return;
      dc.e(this.f.split(",")[1].toString() + this.h.split(",")[1].toString());
      break;
      label321: c();
    }
  }

  private void c()
  {
    SafeViewFlipper localSafeViewFlipper1 = this.n;
    TranslateAnimation localTranslateAnimation1 = new TranslateAnimation(2, 1.0F, 2, 0.0F, 2, 0.0F, 2, 0.0F);
    localTranslateAnimation1.setDuration(300L);
    localTranslateAnimation1.setInterpolator(new AccelerateInterpolator());
    localSafeViewFlipper1.setInAnimation(localTranslateAnimation1);
    SafeViewFlipper localSafeViewFlipper2 = this.n;
    TranslateAnimation localTranslateAnimation2 = new TranslateAnimation(2, 0.0F, 2, -1.0F, 2, 0.0F, 2, 0.0F);
    localTranslateAnimation2.setDuration(300L);
    localTranslateAnimation2.setInterpolator(new AccelerateInterpolator());
    localSafeViewFlipper2.setOutAnimation(localTranslateAnimation2);
    this.n.showNext();
  }

  private static Animation d()
  {
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(2, 1.0F, 2, 0.0F, 2, 0.0F, 2, 0.0F);
    localTranslateAnimation.setDuration(300L);
    localTranslateAnimation.setInterpolator(new AccelerateInterpolator());
    return localTranslateAnimation;
  }

  private static Animation e()
  {
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(2, 0.0F, 2, -1.0F, 2, 0.0F, 2, 0.0F);
    localTranslateAnimation.setDuration(300L);
    localTranslateAnimation.setInterpolator(new AccelerateInterpolator());
    return localTranslateAnimation;
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
    case 2131231742:
    case 2131231741:
    case 2131231686:
    case 2131231687:
    case 2131231685:
    }
    while (true)
    {
      return;
      if (TextUtils.isEmpty(this.f))
      {
        Toast.makeText(this, "请选择所在省市", 1).show();
      }
      else if (TextUtils.isEmpty(this.h))
      {
        Toast.makeText(this, "请选择所在市", 1).show();
      }
      else if (TextUtils.isEmpty(this.j))
      {
        Toast.makeText(this, "请选择运营商", 1).show();
      }
      else if (TextUtils.isEmpty(this.l))
      {
        Toast.makeText(this, "请选择品牌", 1).show();
      }
      else
      {
        if (this.y)
          a.d(getApplicationContext(), "18");
        y localy2 = y.a(this);
        String str = ((TelephonyManager)getSystemService("phone")).getSubscriberId();
        localy2.p = str;
        if ((str != null) && (!str.equals("")))
          localy2.a(this, 2131428297);
        if (!TextUtils.isEmpty(this.f))
        {
          dc.a(this);
          if (!this.f.equals(this.h))
            break label441;
          dc.e(this.f.split(",")[1].toString());
        }
        while (true)
        {
          localy2.k = this.f;
          localy2.a(this, 2131428299);
          localy2.l = this.h;
          localy2.a(this, 2131428300);
          localy2.n = this.j;
          localy2.a(this, 2131428301);
          localy2.m = this.l;
          localy2.a(this, 2131428302);
          if ((this.q) && (dc.b()))
            new aq(this, (byte)0).a(2131427865).b(2131429624).a(2131429625, new et(this)).b(2131429626, new es(this)).d();
          if (TextUtils.isEmpty(this.o))
            break;
          if (!this.o.equals("RatesRequest"))
            break label491;
          setResult(-1);
          finish();
          break;
          label441: dc.e(this.f.split(",")[1].toString() + this.h.split(",")[1].toString());
        }
        label491: c();
        continue;
        if (this.y)
          a.d(getApplicationContext(), "19");
        if (!TextUtils.isEmpty(this.o))
          if (this.o.equals("RatesRequest"))
          {
            setResult(0);
            finish();
          }
          else
          {
            c();
            continue;
            if (TextUtils.isEmpty(this.s.getText().toString()))
            {
              Toast.makeText(this, "请输入流量套餐额度", 1).show();
            }
            else
            {
              if (this.y)
                a.d(getApplicationContext(), "21");
              long l1 = Long.valueOf(this.s.getText().toString()).longValue();
              y localy1 = y.a(this);
              if (this.t.getText().equals("M"));
              for (long l2 = 1024L * (l1 * 1024L); ; l2 = 1024L * (1024L * (l1 * 1024L)))
              {
                localy1.d = l2;
                localy1.a(this, 2131428291);
                dd.a(this, null);
                if (this.p)
                {
                  Intent localIntent2 = new Intent();
                  localIntent2.setClass(this, TrafficTabActivity.class);
                  if ((!TextUtils.isEmpty(localy1.k)) && (!TextUtils.isEmpty(localy1.l)) && (!TextUtils.isEmpty(localy1.n)) && (!TextUtils.isEmpty(localy1.m)))
                    localIntent2.putExtra("updateZFT", true);
                  startActivity(localIntent2);
                }
                setResult(-1);
                finish();
                break;
              }
              if (this.y)
                a.d(getApplicationContext(), "22");
              setResult(0);
              finish();
              if (this.p)
              {
                Intent localIntent1 = new Intent();
                localIntent1.setClass(this, TrafficTabActivity.class);
                if ((!TextUtils.isEmpty(this.m.k)) && (!TextUtils.isEmpty(this.m.l)) && (!TextUtils.isEmpty(this.m.n)) && (!TextUtils.isEmpty(this.m.m)))
                  localIntent1.putExtra("updateZFT", true);
                startActivity(localIntent1);
                continue;
                View localView = getLayoutInflater().inflate(2130903080, null);
                EditText localEditText = (EditText)localView.findViewById(2131230956);
                localEditText.setText(as.a(this));
                aq localaq = new aq(this, (byte)0);
                localaq.a(2131428020);
                localaq.a(localView);
                localaq.a(2131428022, new er(this, localEditText));
                localaq.b(2131428266, null);
                localaq.c().show();
              }
            }
          }
      }
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    setContentView(2130903323);
    Intent localIntent = getIntent();
    this.o = localIntent.getStringExtra("context");
    this.p = localIntent.getBooleanExtra("fromMain", false);
    this.q = localIntent.getBooleanExtra("fromSIMChange", false);
    this.y = localIntent.getBooleanExtra("first", false);
    if (this.y)
    {
      getIntent().putExtra("first", false);
      a.d(getApplicationContext(), "17");
    }
    this.n = ((SafeViewFlipper)findViewById(2131231743));
    this.m = y.a(this);
    this.e = plugin.getprovinces();
    this.i = plugin.getcarries();
    this.t = ((TextView)findViewById(2131231684));
    findViewById(2131231742).setOnClickListener(this);
    findViewById(2131231741).setOnClickListener(this);
    findViewById(2131231686).setOnClickListener(this);
    findViewById(2131231685).setOnClickListener(this);
    findViewById(2131231687).setOnClickListener(this);
    this.a = ((Spinner)findViewById(2131231737));
    if ((this.e != null) && (this.e.size() > 0))
    {
      ArrayList localArrayList4 = new ArrayList();
      Iterator localIterator4 = this.e.iterator();
      while (localIterator4.hasNext())
        localArrayList4.add(((String)localIterator4.next()).split(",")[1]);
      ArrayAdapter localArrayAdapter4 = new ArrayAdapter(this, 2130903310, localArrayList4);
      localArrayAdapter4.setDropDownViewResource(2130837601);
      this.a.setAdapter(localArrayAdapter4);
      if (!TextUtils.isEmpty(this.m.k))
      {
        int i4 = this.e.indexOf(this.m.k);
        this.a.setSelection(i4);
        this.f = ((String)this.e.get(i4));
        this.u = true;
      }
    }
    this.a.setOnItemSelectedListener(this);
    this.b = ((Spinner)findViewById(2131231738));
    if ((!TextUtils.isEmpty(this.m.k)) && (!TextUtils.isEmpty(this.m.l)))
    {
      this.g = plugin.getcities(Integer.valueOf(this.m.k.split(",")[0]).intValue());
      ArrayList localArrayList3 = new ArrayList();
      Iterator localIterator3 = this.g.iterator();
      while (localIterator3.hasNext())
        localArrayList3.add(((String)localIterator3.next()).split(",")[1]);
      ArrayAdapter localArrayAdapter3 = new ArrayAdapter(this, 2130903310, localArrayList3);
      localArrayAdapter3.setDropDownViewResource(2130837601);
      this.b.setAdapter(localArrayAdapter3);
      int i3 = this.g.indexOf(this.m.l);
      this.b.setSelection(i3);
      this.h = ((String)this.g.get(i3));
      this.v = true;
    }
    this.b.setOnItemSelectedListener(this);
    this.c = ((Spinner)findViewById(2131231739));
    if ((this.i != null) && (this.i.size() > 0))
    {
      ArrayList localArrayList2 = new ArrayList();
      Iterator localIterator2 = this.i.iterator();
      while (localIterator2.hasNext())
        localArrayList2.add(((String)localIterator2.next()).split(",")[1]);
      ArrayAdapter localArrayAdapter2 = new ArrayAdapter(this, 2130903310, localArrayList2);
      localArrayAdapter2.setDropDownViewResource(2130837601);
      this.c.setAdapter(localArrayAdapter2);
      if (!TextUtils.isEmpty(this.m.n))
      {
        int i2 = this.i.indexOf(this.m.n);
        this.c.setSelection(i2);
        this.j = ((String)this.i.get(i2));
        this.w = true;
      }
    }
    this.c.setOnItemSelectedListener(this);
    this.d = ((Spinner)findViewById(2131231740));
    if ((!TextUtils.isEmpty(this.m.n)) && (!TextUtils.isEmpty(this.m.m)))
    {
      this.k = plugin.getbrands(this.m.n.split(",")[0]);
      ArrayList localArrayList1 = new ArrayList();
      Iterator localIterator1 = this.k.iterator();
      while (localIterator1.hasNext())
        localArrayList1.add(((String)localIterator1.next()).split(",")[1]);
      ArrayAdapter localArrayAdapter1 = new ArrayAdapter(this, 2130903310, localArrayList1);
      localArrayAdapter1.setDropDownViewResource(2130837601);
      this.d.setAdapter(localArrayAdapter1);
      int i1 = this.k.indexOf(this.m.m);
      this.d.setSelection(i1);
      this.l = ((String)this.k.get(i1));
      this.x = true;
    }
    this.d.setOnItemSelectedListener(this);
    this.s = ((EditText)findViewById(2131231683));
    if (y.d(this))
    {
      y localy = y.a(this);
      this.s.setText(String.valueOf(localy.d / 1024L / 1024L));
    }
    RadioGroup localRadioGroup = (RadioGroup)findViewById(2131231077);
    TextView localTextView = (TextView)findViewById(2131231684);
    localTextView.setText("M");
    localRadioGroup.check(localRadioGroup.getChildAt(0).getId());
    localRadioGroup.setOnCheckedChangeListener(new eq(this, localTextView));
  }

  public void onItemSelected(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    switch (paramAdapterView.getId())
    {
    default:
    case 2131231737:
    case 2131231738:
    case 2131231739:
    case 2131231740:
    }
    while (true)
    {
      return;
      if (!this.u)
      {
        this.a.setSelection(paramInt);
        this.f = ((String)this.e.get(paramInt));
        this.g = plugin.getcities(Integer.valueOf(((String)this.e.get(paramInt)).split(",")[0]).intValue());
        ArrayList localArrayList2 = new ArrayList();
        Iterator localIterator2 = this.g.iterator();
        while (localIterator2.hasNext())
          localArrayList2.add(((String)localIterator2.next()).split(",")[1]);
        ArrayAdapter localArrayAdapter2 = new ArrayAdapter(this, 2130903310, localArrayList2);
        localArrayAdapter2.setDropDownViewResource(2130837601);
        this.b.setAdapter(localArrayAdapter2);
        if (this.g.size() == 1)
        {
          this.b.setSelection(0);
          this.h = ((String)this.g.get(0));
        }
      }
      else
      {
        this.u = false;
        continue;
        if (!this.v)
        {
          this.b.setSelection(paramInt);
          this.h = ((String)this.g.get(paramInt));
        }
        else
        {
          this.v = false;
          continue;
          if (!this.w)
          {
            this.c.setSelection(paramInt);
            this.j = ((String)this.i.get(paramInt));
            this.k = plugin.getbrands(((String)this.i.get(paramInt)).split(",")[0]);
            ArrayList localArrayList1 = new ArrayList();
            Iterator localIterator1 = this.k.iterator();
            while (localIterator1.hasNext())
              localArrayList1.add(((String)localIterator1.next()).split(",")[1]);
            ArrayAdapter localArrayAdapter1 = new ArrayAdapter(this, 2130903310, localArrayList1);
            localArrayAdapter1.setDropDownViewResource(2130837601);
            this.d.setAdapter(localArrayAdapter1);
          }
          else
          {
            this.w = false;
            continue;
            if (!this.x)
            {
              this.d.setSelection(paramInt);
              this.l = ((String)this.k.get(paramInt));
            }
            else
            {
              this.x = false;
            }
          }
        }
      }
    }
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (this.y))
      a.d(getApplicationContext(), "20");
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public void onNothingSelected(AdapterView paramAdapterView)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.TrafficZiFeiSettingActivity2
 * JD-Core Version:    0.6.2
 */