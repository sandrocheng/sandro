package com.keniu.security.traffic;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Paint.Align;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.telephony.TelephonyManager;
import android.text.Html;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import android.widget.Toast;
import cn.com.wali.zft.plugin;
import com.keniu.security.main.MainActivity;
import com.keniu.security.malware.bz;
import com.keniu.security.util.ad;
import com.keniu.security.util.ae;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;
import com.keniu.security.util.ax;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import org.achartengine.renderer.XYMultipleSeriesRenderer;

public class TrafficMainActivity extends Activity
  implements View.OnClickListener, com.keniu.security.monitor.b
{
  public static final String a = "extra_num";
  private static final int m = 22;
  private static final int n = 23;
  private static final int o = 24;
  private MultiDirectionSlidingDrawer A;
  private ImageView B;
  private br C;
  private Handler D = new ay(this);
  private Handler E = new bl(this);
  private Runnable F = new bc(this);
  private boolean b = false;
  private final int c = 0;
  private final int d = 288;
  private ap e = null;
  private ap f = null;
  private ap g = null;
  private ap h = null;
  private long i;
  private org.achartengine.b j;
  private PopupWindow k = null;
  private bq l;
  private LinearLayout p;
  private LinearLayout q;
  private TextView r;
  private boolean s = true;
  private boolean t = false;
  private boolean u = false;
  private boolean v = false;
  private boolean w = false;
  private int x = -1;
  private RadioGroup y;
  private Toast z;

  private org.achartengine.b.c a(long[] paramArrayOfLong)
  {
    org.achartengine.b.c localc = new org.achartengine.b.c();
    org.achartengine.b.a locala = new org.achartengine.b.a(getString(2131428175));
    if (paramArrayOfLong != null)
      for (int i2 = 0; i2 < 31; i2++)
        locala.a(Double.valueOf(ax.a(paramArrayOfLong[i2])).doubleValue());
    for (int i1 = 0; i1 < 31; i1++)
      locala.a(0.0D);
    localc.a(locala.a());
    return localc;
  }

  private void a()
  {
    this.p = ((LinearLayout)findViewById(2131231665));
    this.q = ((LinearLayout)findViewById(2131231668));
    this.r = ((TextView)findViewById(2131231670));
    if (at.b)
    {
      this.p.setVisibility(8);
      this.q.setVisibility(0);
      this.r.setTextColor(-1857494);
      this.r.setText(2131428004);
    }
    while (true)
    {
      dd.a(this, null);
      dd.a(this, new bk(this));
      return;
      this.p.setVisibility(0);
      this.q.setVisibility(8);
    }
  }

  private void a(int paramInt)
  {
    this.y.check(paramInt);
    q.a(getApplicationContext());
    f[] arrayOff = e.c(getApplicationContext(), false);
    String str = q.b();
    for (int i1 = 0; i1 < arrayOff.length; i1++)
    {
      f localf = arrayOff[i1];
      if (!str.contains(String.valueOf(localf.a)))
      {
        if ((q.c().contains(String.valueOf(localf.a))) && (localf.d))
        {
          q.b(localf.a, true);
          localf.e = false;
          localf.d = false;
        }
        localf.h.setCallback(null);
      }
    }
    e.b(getApplicationContext(), false);
    try
    {
      if (SaveTrafficModelSettingActivity.b != null)
      {
        SaveTrafficModelSettingActivity.b.getLooper().quit();
        SaveTrafficModelSettingActivity.b = null;
        SaveTrafficModelSettingActivity.c = null;
      }
      label152: return;
    }
    catch (Exception localException)
    {
      break label152;
    }
  }

  private void a(Object paramObject)
  {
    this.C = ((br)paramObject);
    y localy = y.a(this);
    ImageView localImageView = (ImageView)findViewById(2131231666);
    TextView localTextView1 = (TextView)findViewById(2131231667);
    boolean bool1 = y.d(this);
    y.a(this);
    boolean bool2 = y.b();
    if (!localy.a)
    {
      localImageView.setImageDrawable(getResources().getDrawable(2130838051));
      localTextView1.setTextColor(-1857494);
      localTextView1.setText(2131428018);
      localTextView1.setClickable(true);
      bm localbm = new bm(this);
      localTextView1.setOnClickListener(localbm);
    }
    XYMultipleSeriesRenderer localXYMultipleSeriesRenderer;
    long l4;
    label925: 
    while (true)
    {
      org.achartengine.b.c localc = a(this.C.i);
      localXYMultipleSeriesRenderer = new XYMultipleSeriesRenderer();
      org.achartengine.renderer.e locale = new org.achartengine.renderer.e();
      locale.b();
      locale.d();
      locale.a(Paint.Align.CENTER);
      locale.a(true);
      locale.a((float)(13.5D * getResources().getDisplayMetrics().density));
      localXYMultipleSeriesRenderer.addSeriesRenderer(locale);
      a(localXYMultipleSeriesRenderer);
      this.j = org.achartengine.a.a(getApplicationContext(), localc, localXYMultipleSeriesRenderer, org.achartengine.a.c.a);
      this.j.setBackgroundColor(0);
      d1 = 50.0D;
      if (this.C.i == null)
        break label980;
      l4 = 0L;
      for (int i1 = 0; i1 < this.C.i.length; i1++)
        if (this.C.i[i1] > l4)
          l4 = this.C.i[i1];
      if ((!bool1) && (!bool2))
      {
        localImageView.setImageDrawable(getResources().getDrawable(2130838051));
        localTextView1.setTextColor(-1857494);
        localTextView1.setText(2131428017);
        localTextView1.setClickable(true);
        bn localbn = new bn(this);
        localTextView1.setOnClickListener(localbn);
        localTextView1.requestFocus();
      }
      else if ((bool2) && (!bool1))
      {
        localImageView.setImageDrawable(getResources().getDrawable(2130838051));
        localTextView1.setTextColor(-1);
        localTextView1.setText(Html.fromHtml("本月已用" + ax.a(this.C.g) + "MB，" + ad.a("点此设置套餐额度", ae.c)));
        localTextView1.setClickable(true);
        bo localbo = new bo(this);
        localTextView1.setOnClickListener(localbo);
      }
      else if ((!bool2) && (bool1))
      {
        localImageView.setImageDrawable(getResources().getDrawable(2130838051));
        localTextView1.setTextColor(-1);
        localTextView1.setText(Html.fromHtml("本月已用" + ax.a(this.C.g) + "MB，" + ad.a("点此设置运营商", ae.c)));
        localTextView1.setClickable(true);
        bp localbp = new bp(this);
        localTextView1.setOnClickListener(localbp);
      }
      else
      {
        TrafficIcon2.a = false;
        if (this.C.g > localy.d)
        {
          localTextView1.setClickable(false);
          localTextView1.setText(getString(2131428160) + ax.c(this.C.g - localy.d));
          localImageView.setImageDrawable(getResources().getDrawable(2130838050));
          localTextView1.setTextColor(-55001);
        }
        while (true)
        {
          if ((0.25D * localy.d < localy.g) || (this.C.g <= 0.75D * localy.d) || (localy.d - this.C.g <= localy.g))
            break label925;
          TrafficIcon2.a = true;
          localTextView1.setClickable(false);
          localTextView1.setText(getString(2131428159));
          localImageView.setImageDrawable(getResources().getDrawable(2130838051));
          localTextView1.setTextColor(-1857494);
          break;
          if ((localy.g != 0L) && (localy.d - this.C.g <= localy.g))
          {
            TrafficIcon2.a = true;
            localTextView1.setClickable(false);
            Object[] arrayOfObject = new Object[1];
            arrayOfObject[0] = ax.c(localy.d - this.C.g);
            localTextView1.setText(getString(2131428158, arrayOfObject));
            localImageView.setImageDrawable(getResources().getDrawable(2130838051));
            localTextView1.setTextColor(-1857494);
          }
          else
          {
            localTextView1.setClickable(false);
            localTextView1.setText(getString(2131428161));
            localImageView.setImageDrawable(getResources().getDrawable(2130838049));
            localTextView1.setTextColor(-10175726);
          }
        }
      }
    }
    if (l4 != 0L)
      d1 = l4 / 1024.0D / 1024.0D;
    if ((d1 < 0.01D) && (d1 > 0.0D))
      d1 = 0.01D;
    double d1 = d1 * 4.0D / 3.0D;
    label980: localXYMultipleSeriesRenderer.setYAxisMax(d1);
    Date localDate = new Date();
    long l1 = localy.a(localDate);
    long l2 = localy.b(localDate);
    long l3 = (86400000L + (localDate.getTime() - l1) - 1L) / 86400000L;
    TextView localTextView2;
    TextView localTextView3;
    if (l3 >= 7L)
    {
      localXYMultipleSeriesRenderer.setXAxisMin(l3 - 6.5D);
      localXYMultipleSeriesRenderer.setXAxisMax(0.5D + l3);
      double d2 = (l2 - l1) / 86400000L;
      double[] arrayOfDouble = new double[4];
      arrayOfDouble[0] = 0.5D;
      arrayOfDouble[1] = (d2 + 0.5D);
      arrayOfDouble[2] = 0.0D;
      arrayOfDouble[3] = d1;
      localXYMultipleSeriesRenderer.setPanLimits(arrayOfDouble);
      LinearLayout localLinearLayout = (LinearLayout)findViewById(2131231678);
      localLinearLayout.removeAllViews();
      ViewGroup.LayoutParams localLayoutParams = new ViewGroup.LayoutParams(-1, -2);
      localLinearLayout.addView(this.j, localLayoutParams);
      ((TextView)findViewById(2131231673)).setText(ax.a(this.C.f));
      ((TextView)findViewById(2131231675)).setText(ax.a(this.C.g));
      localTextView2 = (TextView)findViewById(2131231676);
      localTextView3 = (TextView)findViewById(2131231677);
      if (this.C.g > localy.d)
        break label1363;
      localTextView2.setText(getString(2131428156));
      localTextView3.setTextColor(-10110444);
      localTextView3.setText(ax.a(localy.d - this.C.g));
      label1282: this.D.postDelayed(this.F, 100L);
      Button localButton = (Button)findViewById(2131231680);
      az localaz = new az(this);
      localButton.setOnClickListener(localaz);
      if (localy.w != 0)
        break label1406;
      this.y.check(2131231492);
    }
    while (true)
    {
      return;
      localXYMultipleSeriesRenderer.setXAxisMin(0.5D);
      localXYMultipleSeriesRenderer.setXAxisMax(7.5D);
      break;
      label1363: localTextView2.setText(getString(2131428157));
      localTextView3.setTextColor(-65536);
      localTextView3.setText(ax.a(this.C.g - localy.d));
      break label1282;
      label1406: if (localy.w == 1)
        this.y.check(2131231493);
      else if (localy.w == 2)
        this.y.check(2131231494);
    }
  }

  private void a(XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer)
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("MM.dd");
    for (int i1 = 0; i1 < 31; i1++)
    {
      String[] arrayOfString = localSimpleDateFormat.format(new Date(this.i + 86400000L * i1)).split("\\.");
      if (arrayOfString[0].startsWith("0"))
        arrayOfString[0] = arrayOfString[0].replaceAll("0", "");
      if (arrayOfString[1].startsWith("0"))
        arrayOfString[1] = arrayOfString[1].replaceAll("0", "");
      String str = arrayOfString[0] + "." + arrayOfString[1];
      paramXYMultipleSeriesRenderer.addXTextLabel(i1 + 1, str);
    }
    paramXYMultipleSeriesRenderer.setLabelsTextSize((float)(13.5D * getResources().getDisplayMetrics().density));
    paramXYMultipleSeriesRenderer.setLabelsColor(-6316129);
    paramXYMultipleSeriesRenderer.setYAxisMin(0.0D);
    paramXYMultipleSeriesRenderer.setYLabels(0);
    paramXYMultipleSeriesRenderer.setBarSpacing(5.0D);
    paramXYMultipleSeriesRenderer.setXLabels(0);
    paramXYMultipleSeriesRenderer.setMargins(new int[] { 0, 0, 0, 0 });
    paramXYMultipleSeriesRenderer.setApplyBackgroundColor(false);
    paramXYMultipleSeriesRenderer.setMarginsColor(16711680);
    paramXYMultipleSeriesRenderer.setShowLegend(false);
    paramXYMultipleSeriesRenderer.setZoomEnabled(false, false);
    paramXYMultipleSeriesRenderer.setPanEnabled(true, false);
  }

  public static boolean a(Date paramDate1, Date paramDate2)
  {
    Calendar localCalendar1 = Calendar.getInstance();
    Calendar localCalendar2 = Calendar.getInstance();
    localCalendar1.setTime(paramDate1);
    localCalendar2.setTime(paramDate2);
    if ((localCalendar1.get(1) == localCalendar2.get(1)) && (localCalendar1.get(2) == localCalendar2.get(2)) && (localCalendar1.get(5) == localCalendar2.get(5)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private void b()
  {
    z localz = z.a(this);
    if (!localz.b(true))
      return;
    Date localDate = new Date();
    br localbr = new br(this);
    y localy = y.a(this);
    long l1 = localy.a(localDate);
    long l2 = localy.b(localDate);
    ac localac1 = localz.b(l1, l2);
    if (localac1 != null)
      localbr.g = (localac1.c + localac1.b);
    localbr.i = localz.a(l1, l2);
    if (a(new Date(l1), localDate))
    {
      localbr.f = localbr.g;
      if (localbr.i != null)
        localbr.i[0] = localbr.f;
    }
    while (true)
    {
      this.i = localy.a(localDate);
      localz.a();
      if (this.b)
        break;
      this.E.obtainMessage(0, localbr).sendToTarget();
      break;
      ac localac2 = localz.a(1000000, localDate.getTime());
      if (localac2 != null)
        localbr.f = (localac2.c + localac2.b);
    }
  }

  private XYMultipleSeriesRenderer c()
  {
    XYMultipleSeriesRenderer localXYMultipleSeriesRenderer = new XYMultipleSeriesRenderer();
    org.achartengine.renderer.e locale = new org.achartengine.renderer.e();
    locale.b();
    locale.d();
    locale.a(Paint.Align.CENTER);
    locale.a(true);
    locale.a((float)(13.5D * getResources().getDisplayMetrics().density));
    localXYMultipleSeriesRenderer.addSeriesRenderer(locale);
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("MM.dd");
    for (int i1 = 0; i1 < 31; i1++)
    {
      String[] arrayOfString = localSimpleDateFormat.format(new Date(this.i + 86400000L * i1)).split("\\.");
      if (arrayOfString[0].startsWith("0"))
        arrayOfString[0] = arrayOfString[0].replaceAll("0", "");
      if (arrayOfString[1].startsWith("0"))
        arrayOfString[1] = arrayOfString[1].replaceAll("0", "");
      String str = arrayOfString[0] + "." + arrayOfString[1];
      localXYMultipleSeriesRenderer.addXTextLabel(i1 + 1, str);
    }
    localXYMultipleSeriesRenderer.setLabelsTextSize((float)(13.5D * getResources().getDisplayMetrics().density));
    localXYMultipleSeriesRenderer.setLabelsColor(-6316129);
    localXYMultipleSeriesRenderer.setYAxisMin(0.0D);
    localXYMultipleSeriesRenderer.setYLabels(0);
    localXYMultipleSeriesRenderer.setBarSpacing(5.0D);
    localXYMultipleSeriesRenderer.setXLabels(0);
    localXYMultipleSeriesRenderer.setMargins(new int[] { 0, 0, 0, 0 });
    localXYMultipleSeriesRenderer.setApplyBackgroundColor(false);
    localXYMultipleSeriesRenderer.setMarginsColor(16711680);
    localXYMultipleSeriesRenderer.setShowLegend(false);
    localXYMultipleSeriesRenderer.setZoomEnabled(false, false);
    localXYMultipleSeriesRenderer.setPanEnabled(true, false);
    return localXYMultipleSeriesRenderer;
  }

  private void d()
  {
    this.s = false;
    if ((this.p != null) && (this.p.getVisibility() == 0))
      this.p.setVisibility(8);
    if ((this.q != null) && (this.q.getVisibility() == 8))
    {
      this.q.setVisibility(0);
      this.r.setTextColor(-1857494);
      this.r.setText(2131428003);
    }
    new bd(this).start();
  }

  private void e()
  {
    at.a = false;
    if (!this.s)
      Toast.makeText(this, 2131428003, 1).show();
    while (true)
    {
      return;
      y localy = y.a(getApplicationContext());
      if ((TextUtils.isEmpty(localy.k)) && (TextUtils.isEmpty(localy.l)) && (TextUtils.isEmpty(localy.n)) && (TextUtils.isEmpty(localy.m)))
      {
        aq localaq3 = new aq(this, (byte)0);
        localaq3.a(getString(2131428031));
        localaq3.b(getString(2131428051));
        localaq3.a(getString(2131428099), new be(this));
        localaq3.b(getString(2131428206), null);
        this.e = localaq3.c();
        this.e.show();
      }
      else if (!y.d(this))
      {
        Intent localIntent = new Intent();
        localIntent.setClass(this, TrafficMonthLimitSettingActivity.class);
        startActivityForResult(localIntent, 22);
      }
      else
      {
        TelephonyManager localTelephonyManager = (TelephonyManager)getSystemService("phone");
        if ((localTelephonyManager.getSubscriberId() != null) && (localy.p != null) && (!localy.p.equals(localTelephonyManager.getSubscriberId())))
        {
          aq localaq2 = new aq(this, (byte)0);
          localaq2.a(getString(2131428031));
          localaq2.b(getString(2131428054));
          localaq2.a(getString(2131428099), new bf(this));
          localaq2.b(getString(2131428298), null);
          this.f = localaq2.c();
          this.f.show();
        }
        else if (TextUtils.isEmpty(localTelephonyManager.getSubscriberId()))
        {
          Toast.makeText(this, 2131428048, 1).show();
        }
        else
        {
          com.keniu.security.a locala = com.keniu.security.a.a(this);
          if (System.currentTimeMillis() - localy.o < 186000.0D)
          {
            Toast.makeText(this, 2131428049, 1).show();
          }
          else if ((plugin.getInstance().available() != 1) || (System.currentTimeMillis() - locala.ab() >= 259200000L))
          {
            if (localy.q)
            {
              d();
            }
            else if (com.keniu.security.util.at.b(getApplicationContext()))
            {
              d();
            }
            else
            {
              aq localaq1 = new aq(this, (byte)0);
              localaq1.a(2131428163);
              localaq1.b(2131428138);
              localaq1.a(2131428346, new bg(this));
              localaq1.b(2131427866, null);
              this.g = localaq1.c();
              this.g.show();
            }
          }
          else
          {
            if ((this.p != null) && (this.p.getVisibility() == 0))
              this.p.setVisibility(8);
            if ((this.q != null) && (this.q.getVisibility() == 8))
            {
              this.q.setVisibility(0);
              this.r.setTextColor(-1857494);
              this.r.setText(2131428004);
            }
            at.a(getApplicationContext(), localy);
          }
        }
      }
    }
  }

  private void f()
  {
    aq localaq = new aq(this, (byte)0);
    localaq.a(2131428163);
    localaq.b(2131428023);
    localaq.b(2131428542, null);
    localaq.a(2131429227, new bh(this));
    this.h = localaq.c();
    this.h.show();
  }

  private static void g()
  {
    try
    {
      if (SaveTrafficModelSettingActivity.b == null)
        SaveTrafficModelSettingActivity.b = new HandlerThread("thread_save_traffic");
      SaveTrafficModelSettingActivity.b.start();
      label25: if (SaveTrafficModelSettingActivity.c == null)
        SaveTrafficModelSettingActivity.c = new Handler(SaveTrafficModelSettingActivity.b.getLooper());
      SaveTrafficModelSettingActivity.c.post(SaveTrafficModelSettingActivity.d);
      return;
    }
    catch (IllegalThreadStateException localIllegalThreadStateException)
    {
      break label25;
    }
  }

  public final int a(int paramInt, Object paramObject1, Object paramObject2)
  {
    if ((paramInt == com.keniu.security.monitor.a.x) && (this.u))
    {
      this.u = false;
      if (!((Boolean)paramObject1).booleanValue())
        break label95;
      if (!this.v)
        break label69;
      this.v = false;
      Intent localIntent = new Intent();
      localIntent.setClass(this, SaveTrafficModelSettingActivity.class);
      startActivityForResult(localIntent, 24);
    }
    while (true)
    {
      return 0;
      label69: if (this.w)
      {
        this.w = false;
        this.E.sendEmptyMessage(288);
        continue;
        label95: if (this.z != null)
          this.z.show();
      }
    }
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt1 == 22) && (paramInt2 == -1))
    {
      a();
      e();
    }
    while (true)
    {
      return;
      if ((paramInt1 == 23) && (paramInt2 == -1))
      {
        at.a = true;
        a();
        d();
      }
      else if ((paramInt1 == 24) && (paramInt2 == -1) && (this.y != null))
      {
        y localy = y.a(this);
        if (localy.w == 0)
          this.y.check(2131231492);
        else if (localy.w == 1)
          this.y.check(2131231493);
        else if (localy.w == 2)
          this.y.check(2131231494);
        else
          this.y.check(-1);
      }
    }
  }

  public void onClick(View paramView)
  {
    if (paramView.getId() == 2131231489)
    {
      bz.a();
      if (!bz.b())
        break label114;
      if (!bz.a().e())
      {
        this.u = true;
        this.v = true;
        bz.a().c();
      }
    }
    else if (paramView.getClass() == RadioButton.class)
    {
      bz.a();
      if (bz.b())
        break label128;
      Toast.makeText(this, "您的手机没有ROOT,无法使用此功能", 1).show();
      this.y.check(-1);
    }
    while (true)
    {
      return;
      Intent localIntent = new Intent();
      localIntent.setClass(this, SaveTrafficModelSettingActivity.class);
      startActivityForResult(localIntent, 24);
      break;
      label114: Toast.makeText(this, "您的手机没有ROOT,无法使用此功能", 1).show();
      break;
      label128: if (!bz.a().e())
      {
        this.u = true;
        this.w = true;
        this.x = paramView.getId();
        bz.a().c();
      }
      else
      {
        if (SaveTrafficModelSettingActivity.a == null)
          SaveTrafficModelSettingActivity.a = new r();
        com.keniu.security.monitor.a locala = com.keniu.security.monitor.a.a();
        locala.a(com.keniu.security.monitor.a.p, SaveTrafficModelSettingActivity.a);
        locala.a(com.keniu.security.monitor.a.o, SaveTrafficModelSettingActivity.a);
        locala.a(com.keniu.security.monitor.a.p, SaveTrafficModelSettingActivity.a, 1342177279);
        locala.a(com.keniu.security.monitor.a.o, SaveTrafficModelSettingActivity.a, 1342177279);
        y localy = y.a(this);
        switch (paramView.getId())
        {
        default:
          break;
        case 2131231492:
          if (localy.w != 0)
          {
            localy.w = 0;
            localy.a(this, 2131428292);
            g();
          }
          else
          {
            localy.w = 3;
            localy.a(this, 2131428292);
            a(-1);
            if (SaveTrafficModelSettingActivity.a != null)
            {
              locala.a(com.keniu.security.monitor.a.p, SaveTrafficModelSettingActivity.a);
              locala.a(com.keniu.security.monitor.a.o, SaveTrafficModelSettingActivity.a);
              SaveTrafficModelSettingActivity.a = null;
            }
          }
          break;
        case 2131231493:
          if (localy.w != 1)
          {
            localy.w = 1;
            localy.a(this, 2131428292);
            a(2131231493);
          }
          else
          {
            localy.w = 3;
            localy.a(this, 2131428292);
            a(-1);
            if (SaveTrafficModelSettingActivity.a != null)
            {
              locala.a(com.keniu.security.monitor.a.p, SaveTrafficModelSettingActivity.a);
              locala.a(com.keniu.security.monitor.a.o, SaveTrafficModelSettingActivity.a);
              SaveTrafficModelSettingActivity.a = null;
            }
          }
          break;
        case 2131231494:
          if (localy.w != 2)
          {
            localy.w = 2;
            localy.a(this, 2131428292);
            g();
          }
          else
          {
            localy.w = 3;
            localy.a(this, 2131428292);
            a(-1);
            if (SaveTrafficModelSettingActivity.a != null)
            {
              locala.a(com.keniu.security.monitor.a.p, SaveTrafficModelSettingActivity.a);
              locala.a(com.keniu.security.monitor.a.o, SaveTrafficModelSettingActivity.a);
              SaveTrafficModelSettingActivity.a = null;
            }
          }
          break;
        }
      }
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903305);
    this.l = new bq(this);
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("updateTrafficMainData");
    registerReceiver(this.l, localIntentFilter);
    findViewById(2131231489).setOnClickListener(this);
    this.y = ((RadioGroup)findViewById(2131231491));
    this.y.findViewById(2131231492).setOnClickListener(this);
    this.y.findViewById(2131231493).setOnClickListener(this);
    this.y.findViewById(2131231494).setOnClickListener(this);
    com.keniu.security.monitor.a.a().a(com.keniu.security.monitor.a.x, this, 1073741823);
    this.z = Toast.makeText(this, "提权失败,暂时无法使用此功能", 1);
    this.B = ((ImageView)findViewById(2131231419));
    this.A = ((MultiDirectionSlidingDrawer)findViewById(2131231679));
    this.A.a(new bi(this));
    this.A.a(new bj(this));
  }

  protected void onDestroy()
  {
    super.onDestroy();
    if ((this.e != null) && (this.e.isShowing()))
    {
      this.e.dismiss();
      this.e = null;
    }
    if ((this.f != null) && (this.f.isShowing()))
    {
      this.f.dismiss();
      this.f = null;
    }
    if ((this.g != null) && (this.g.isShowing()))
    {
      this.g.dismiss();
      this.g = null;
    }
    if ((this.h != null) && (this.h.isShowing()))
    {
      this.h.dismiss();
      this.h = null;
    }
    this.b = true;
    if (this.D != null)
    {
      if (this.F != null)
        this.D.removeCallbacks(this.F);
      this.D.removeMessages(0);
      this.D.removeMessages(1);
    }
    if (this.k != null)
    {
      if (this.k.isShowing())
        this.k.dismiss();
      this.k = null;
    }
    unregisterReceiver(this.l);
    ((TrafficIcon2)findViewById(2131231112)).c();
    com.keniu.security.monitor.a.a().a(com.keniu.security.monitor.a.x, this);
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
      if (this.k != null)
      {
        if (this.k.isShowing())
          this.k.dismiss();
        this.k = null;
      }
    for (boolean bool = true; ; bool = super.onKeyDown(paramInt, paramKeyEvent))
    {
      return bool;
      finish();
      startActivity(new Intent(this, MainActivity.class));
    }
  }

  protected void onPause()
  {
    super.onPause();
    if (this.k != null)
    {
      if (this.k.isShowing())
        this.k.dismiss();
      this.k = null;
    }
    ((TrafficIcon2)findViewById(2131231112)).b();
  }

  protected void onResume()
  {
    super.onResume();
    y localy2;
    if (this.y != null)
    {
      localy2 = y.a(this);
      if (localy2.w != 0)
        break label184;
      this.x = 2131231492;
    }
    while (true)
    {
      this.y.check(this.x);
      if (this.s)
        a();
      if (getIntent().getBooleanExtra("updateZFT", false))
      {
        getIntent().putExtra("updateZFT", false);
        at.a = true;
        d();
      }
      if (getIntent().getBooleanExtra("fromTrafficUsedSettingActivity", false))
      {
        getIntent().putExtra("fromTrafficUsedSettingActivity", false);
        e();
      }
      if (getIntent().getBooleanExtra("autoadjustnotify", false))
      {
        getIntent().putExtra("autoadjustnotify", false);
        e();
        y localy1 = y.a(this);
        if ((y.b()) && (y.d(this)) && (localy1.u.equals("3")))
          f();
      }
      return;
      label184: if (localy2.w == 1)
        this.x = 2131231493;
      else if (localy2.w == 2)
        this.x = 2131231494;
      else
        this.x = -1;
    }
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.k != null)
    {
      if (this.k.isShowing())
        this.k.dismiss();
      this.k = null;
    }
    return super.onTouchEvent(paramMotionEvent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.TrafficMainActivity
 * JD-Core Version:    0.6.2
 */