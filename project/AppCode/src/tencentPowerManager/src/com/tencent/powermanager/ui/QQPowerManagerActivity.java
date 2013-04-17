package com.tencent.powermanager.ui;

import ab;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import ax;
import bt;
import bu;
import bv;
import bw;
import cc;
import com.tencent.powermanager.service.BatteryEventReceiver;
import com.tencent.powermanager.uilib.TabButtonView;
import com.tencent.powermanager.uilib.view.BaseTabView;
import com.tencent.powermanager.view.DeepSaveView;
import com.tencent.powermanager.view.PowerMaintainView;
import com.tencent.powermanager.view.PowerManagerView;
import com.tencent.tmsecure.common.TMSService;
import cr;
import cs;
import ct;
import de;
import gk;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p;
import s.a;
import z;

public class QQPowerManagerActivity extends Activity
  implements View.OnClickListener
{
  private int a = 0;
  private ViewPager b = null;
  private a c = null;
  private List<BaseTabView> d = null;
  private List<TabButtonView> e = null;
  private ImageView f = null;
  private boolean g;
  private PowerManagerView h;
  private DeepSaveView i;
  private PowerMaintainView j;
  private Handler k = new cr(this);
  private ViewPager.OnPageChangeListener l = new cs(this);

  private void a(int paramInt)
  {
    Iterator localIterator = this.e.iterator();
    while (localIterator.hasNext())
      ((TabButtonView)localIterator.next()).setChecked(false);
    ((TabButtonView)this.e.get(paramInt)).setChecked(true);
  }

  public void onClick(View paramView)
  {
    int m = this.e.indexOf(paramView);
    this.b.setCurrentItem(m);
    a(m);
  }

  public void onCreate(Bundle paramBundle)
  {
    try
    {
      super.onCreate(paramBundle);
      requestWindowFeature(1);
      setContentView(2130903083);
      this.f = ((ImageView)findViewById(2131230781));
      this.f.setOnClickListener(new ct(this));
      this.c = new a((byte)0);
      this.b = ((ViewPager)findViewById(2131230843));
      this.b.setAdapter(this.c);
      this.b.setOnPageChangeListener(this.l);
      this.d = new ArrayList();
      this.h = new PowerManagerView(this);
      this.i = new DeepSaveView(this);
      this.j = new PowerMaintainView(this);
      this.d.add(this.h);
      this.d.add(this.i);
      this.d.add(this.j);
      this.e = new ArrayList();
      this.e.add((TabButtonView)findViewById(2131230855));
      this.e.add((TabButtonView)findViewById(2131230856));
      this.e.add((TabButtonView)findViewById(2131230857));
      Iterator localIterator = this.e.iterator();
      while (localIterator.hasNext())
        ((TabButtonView)localIterator.next()).setOnClickListener(this);
    }
    finally
    {
    }
    z localz = s.a.g();
    bu localbu;
    if ((!localz.h()) && (BatteryEventReceiver.c))
    {
      this.a = 2;
      if (!this.j.c())
        this.j.d();
      this.b.setCurrentItem(this.a);
      a(this.a);
      this.g = false;
      this.k.sendEmptyMessageDelayed(0, 200L);
      localbu = new bu(this);
      String str1 = localbu.b.c();
      String str2 = bt.a().e();
      gk.b("^^ \tString myVersion = ConfigManager.getConfigManager().getSoftVersion(); " + str2);
      if ((str1 == null) || (str2 == null))
        break label647;
      if (str1.equals(str2))
        break label553;
      break label647;
    }
    while (true)
    {
      label443: if (m == 0)
      {
        long l1 = localbu.b.d();
        if (System.currentTimeMillis() - l1 <= 259200000L)
          break label641;
      }
      label641: for (int n = 1; ; n = 0)
      {
        if (n != 0)
          new ax(localbu.a, true, true).c();
        if (bt.a().g())
          p.b(this, 2131099650);
        return;
        if (localz.h())
          localz.i();
        this.a = 0;
        if (this.h.c())
          break;
        this.h.d();
        break;
        label553: de localde = new de(localbu.a);
        localde.setTitle(localbu.a.getString(2131099772));
        localde.a(localbu.b.b());
        localde.a(2131099773, new bv(localbu, localde), 1);
        localde.setOnCancelListener(new bw(localde));
        localde.show();
        m = 1;
        break label443;
      }
      label647: int m = 0;
    }
  }

  protected void onDestroy()
  {
    try
    {
      super.onDestroy();
      this.g = true;
      this.k.removeMessages(0);
      Iterator localIterator = this.d.iterator();
      while (localIterator.hasNext())
        ((BaseTabView)localIterator.next()).f();
    }
    finally
    {
    }
    TMSService.startService(new cc());
    sendBroadcast(new Intent("powermanager_action_report"));
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    Iterator localIterator = this.d.iterator();
    while (localIterator.hasNext())
      ((BaseTabView)localIterator.next()).onKeyDown(paramInt, paramKeyEvent);
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onPause()
  {
    try
    {
      super.onPause();
      ((BaseTabView)this.d.get(this.a)).h();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected void onResume()
  {
    try
    {
      super.onResume();
      ((BaseTabView)this.d.get(this.a)).e();
      e.a = false;
      ab.a(50024);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  final class a extends PagerAdapter
  {
    private a()
    {
    }

    public final void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject)
    {
      paramViewGroup.removeView((View)QQPowerManagerActivity.b(QQPowerManagerActivity.this).get(paramInt));
    }

    public final int getCount()
    {
      if (QQPowerManagerActivity.b(QQPowerManagerActivity.this) != null);
      for (int i = QQPowerManagerActivity.b(QQPowerManagerActivity.this).size(); ; i = 0)
        return i;
    }

    public final Object instantiateItem(ViewGroup paramViewGroup, int paramInt)
    {
      paramViewGroup.addView((View)QQPowerManagerActivity.b(QQPowerManagerActivity.this).get(paramInt), 0);
      return QQPowerManagerActivity.b(QQPowerManagerActivity.this).get(paramInt);
    }

    public final boolean isViewFromObject(View paramView, Object paramObject)
    {
      if (paramView == paramObject);
      for (boolean bool = true; ; bool = false)
        return bool;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.ui.QQPowerManagerActivity
 * JD-Core Version:    0.6.2
 */