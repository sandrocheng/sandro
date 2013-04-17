package com.tencent.powermanager.view;

import ab;
import af;
import ag;
import ah;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.wifi.WifiManager;
import android.os.Build.VERSION;
import android.os.Handler;
import android.telephony.TelephonyManager;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import ao;
import ap;
import aq;
import bf;
import bo;
import bx;
import cj;
import cj.a;
import com.tencent.powermanager.service.BatteryEventReceiver;
import com.tencent.powermanager.service.BatteryEventReceiver.a;
import com.tencent.powermanager.service.ModeEventReceiver;
import com.tencent.powermanager.service.ModeEventReceiver.a;
import com.tencent.powermanager.service.NetWorkEventReceiver;
import com.tencent.powermanager.service.NetWorkEventReceiver.a;
import com.tencent.powermanager.ui.DIYSaveModeActivity;
import com.tencent.powermanager.uilib.ExpectTimeView;
import com.tencent.powermanager.uilib.SwitchButtonView;
import com.tencent.powermanager.uilib.view.BaseTabView;
import com.tencent.powermanager.uilib.view.BatteryModeSwitchView;
import com.tencent.powermanager.uilib.view.BatteryModeSwitchView.a;
import com.tencent.powermanager.uilib.view.BatteryModeSwitchView.b;
import com.tencent.powermanager.uilib.view.CircleBatteryView;
import dd;
import de;
import dg;
import di;
import dz;
import ea;
import ec;
import ed;
import ee;
import eg;
import eh;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p;
import r;
import s;
import s.a;
import y;

public class PowerManagerView extends BaseTabView
  implements View.OnClickListener, bx, cj.a, BatteryEventReceiver.a, ModeEventReceiver.a, NetWorkEventReceiver.a, BatteryModeSwitchView.a, BatteryModeSwitchView.b
{
  private BatteryModeSwitchView b = null;
  private List<dg> c = null;
  private SwitchButtonView d = null;
  private SwitchButtonView e = null;
  private SwitchButtonView f = null;
  private SwitchButtonView g = null;
  private SwitchButtonView h = null;
  private ap i = null;
  private aq j = null;
  private r k = null;
  private int[] l = { 5, 50, 100, -1 };
  private int m;
  private boolean n = false;
  private s o;
  private ArrayList<dg> p;
  private List<bf> q;
  private ag r;
  private ExpectTimeView s;
  private CircleBatteryView t;
  private Handler u = new ec(this);

  public PowerManagerView(Context paramContext)
  {
    super(paramContext);
  }

  private static void b(Intent paramIntent, bf parambf)
  {
    paramIntent.putExtra("_id", parambf.a);
    paramIntent.putExtra("mode_name", parambf.b);
    paramIntent.putExtra("brightness", parambf.c);
    paramIntent.putExtra("screen_time", parambf.d);
    paramIntent.putExtra("animation", parambf.e);
    paramIntent.putExtra("wifi_state", parambf.f);
    paramIntent.putExtra("network_state", parambf.g);
    paramIntent.putExtra("bluetooth_state", parambf.h);
    paramIntent.putExtra("auto_sync", parambf.i);
    paramIntent.putExtra("vibrate", parambf.j);
    paramIntent.putExtra("haptic_feedback", parambf.k);
    paramIntent.putExtra("airplane_state", parambf.l);
  }

  private bf c(int paramInt)
  {
    bf localbf;
    if (this.q == null)
      localbf = null;
    while (true)
    {
      return localbf;
      Iterator localIterator = this.q.iterator();
      while (true)
        if (localIterator.hasNext())
        {
          localbf = (bf)localIterator.next();
          if (localbf.a == paramInt)
            break;
        }
      localbf = null;
    }
  }

  private void d(int paramInt)
  {
    if (paramInt == 0)
    {
      this.g.setIcon(2130837850);
      this.g.setNameText(this.a.getString(2131099688));
    }
    while (true)
    {
      return;
      if (paramInt == 1)
      {
        this.g.setIcon(2130837849);
        this.g.setNameText(this.a.getString(2131099689));
      }
      else if (paramInt == 2)
      {
        this.g.setIcon(2130837851);
        this.g.setNameText(this.a.getString(2131099690));
      }
      else if (paramInt == 3)
      {
        this.g.setIcon(2130837848);
        this.g.setNameText(this.a.getString(2131099691));
      }
    }
  }

  private void e(int paramInt)
  {
    if (paramInt == -1)
    {
      this.h.setIcon(2130837845);
      this.m = 3;
    }
    while (true)
    {
      return;
      int i1 = paramInt * 100 / 255;
      if ((i1 >= 0) && (i1 < 20))
      {
        this.h.setIcon(2130837842);
        this.m = 0;
      }
      else if ((i1 >= 20) && (i1 < 80))
      {
        this.h.setIcon(2130837844);
        this.m = 1;
      }
      else if (i1 >= 80)
      {
        this.h.setIcon(2130837843);
        this.m = 2;
      }
    }
  }

  private void i()
  {
    WifiManager localWifiManager = (WifiManager)this.a.getSystemService("wifi");
    int i1;
    if ((this.i.b()) || (localWifiManager.getWifiState() == 2))
    {
      this.d.setIcon(2130837853);
      if (!this.i.c())
        break label148;
      if (((TelephonyManager)this.a.getSystemService("phone")).getSubscriberId() == null)
        break label143;
      i1 = 1;
      label70: if ((i1 == 0) || (this.k.g()))
        break label148;
      this.e.setIcon(2130837841);
      label94: if (!this.k.g())
        break label170;
      this.f.setIcon(2130837847);
    }
    while (true)
    {
      d(this.k.l());
      l();
      return;
      this.d.setIcon(2130837852);
      break;
      label143: i1 = 0;
      break label70;
      label148: this.e.setIcon(2130837840);
      this.i.b(false);
      break label94;
      label170: this.f.setIcon(2130837846);
    }
  }

  private void j()
  {
    try
    {
      new Thread(new ea(this)).start();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void k()
  {
    int i1 = s.a.d().c();
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
    {
      dg localdg = (dg)localIterator.next();
      if (localdg.a == i1)
        localdg.b = true;
      else
        localdg.b = false;
    }
  }

  private void l()
  {
    if (this.j.c());
    for (int i1 = -1; ; i1 = this.j.a(this.a.getContentResolver()))
    {
      e(i1);
      return;
    }
  }

  private int m()
  {
    Iterator localIterator = this.q.iterator();
    int i1 = 0;
    bf localbf;
    if (localIterator.hasNext())
    {
      localbf = (bf)localIterator.next();
      if (i1 >= localbf.a)
        break label82;
    }
    label82: for (int i3 = localbf.a; ; i3 = i1)
    {
      i1 = i3;
      break;
      if (i1 <= 10);
      for (int i2 = 10 + this.q.size(); ; i2 = i1 + 1)
        return i2;
    }
  }

  public final void a()
  {
    i();
  }

  public final void a(double paramDouble)
  {
    ao localao = ao.a();
    this.s.setTimeText(localao.b(), localao.c(), (int)paramDouble, (int)(60.0D * paramDouble) % 60);
    localao.a(paramDouble);
  }

  public final void a(int paramInt)
  {
    if (paramInt == 255)
    {
      localbf = new bf();
      localbf.a = m();
      str1 = this.a.getString(2131099741);
      arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(1 + this.q.size());
      localbf.b = String.format(str1, arrayOfObject);
      localIntent = new Intent(this.a, DIYSaveModeActivity.class);
      b(localIntent, localbf);
      this.a.startActivity(localIntent);
      ab.a(50015);
    }
    while (s.a.d().c() == paramInt)
    {
      bf localbf;
      String str1;
      Object[] arrayOfObject;
      Intent localIntent;
      return;
    }
    String str2;
    String str3;
    switch (paramInt)
    {
    default:
      str2 = c(paramInt).b;
      str3 = String.format(this.a.getString(2131099669), new Object[] { str2 });
    case 1:
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      de localde = new de(this.a);
      localde.setTitle(str2);
      localde.a(str3);
      localde.c();
      localde.a(2131099652, new eg(this, paramInt, localde), 8);
      localde.a(new eh(localde));
      localde.show();
      break;
      str2 = s.b;
      str3 = this.a.getString(2131099666);
      continue;
      str2 = s.c;
      str3 = this.a.getString(2131099667);
      continue;
      str2 = s.d;
      str3 = this.a.getString(2131099668);
      continue;
      str2 = s.a;
      str3 = String.format(this.a.getString(2131099669), new Object[] { str2 });
      ab.a(50027);
    }
  }

  public final void a(Intent paramIntent)
  {
    if (paramIntent.getAction().equals("android.intent.action.BATTERY_CHANGED"))
    {
      this.t.setBatteryLevel(BatteryEventReceiver.a);
      this.t.setIsCharging(BatteryEventReceiver.c);
    }
  }

  public final void b()
  {
    d(this.k.l());
    l();
    if (this.j.c());
    for (int i1 = -1; ; i1 = this.j.a(this.a.getContentResolver()))
    {
      if ((this.a instanceof Activity))
        this.j.a(i1, (Activity)this.a);
      return;
    }
  }

  public final void b(int paramInt)
  {
    dd localdd = new dd(this.a);
    if ((paramInt == 255) || (paramInt == 4) || (paramInt == s.a.d().c()));
    while (true)
    {
      return;
      if (paramInt < 4)
      {
        ArrayList localArrayList1 = new ArrayList();
        dd.a();
        di localdi1 = new di();
        localdi1.a = this.a.getString(2131099658);
        localdi1.b = 1;
        localArrayList1.add(localdi1);
        localdd.a(localArrayList1);
        localdd.a(new ed(this, paramInt, localdd));
        localdd.show();
      }
      else
      {
        ArrayList localArrayList2 = new ArrayList();
        bf localbf = c(paramInt);
        dd.a();
        di localdi2 = new di();
        localdi2.a = this.a.getString(2131099657);
        localdi2.b = 0;
        localArrayList2.add(localdi2);
        di localdi3 = new di();
        localdi3.a = this.a.getString(2131099658);
        localdi3.b = 1;
        localArrayList2.add(localdi3);
        localdd.a(localArrayList2);
        localdd.a(new ee(this, localdd, localbf));
        localdd.a(localbf.b);
        localdd.show();
      }
    }
  }

  public final void b(Intent paramIntent)
  {
    int i1 = paramIntent.getIntExtra("extra_gprs_status", -1);
    int i2 = paramIntent.getIntExtra("extra_screen_light", -1);
    WifiManager localWifiManager = (WifiManager)this.a.getSystemService("wifi");
    int i3;
    if ((localWifiManager.isWifiEnabled()) || (localWifiManager.getWifiState() == 2))
    {
      this.d.setIcon(2130837853);
      if (i1 != 1)
        break label187;
      if (((TelephonyManager)this.a.getSystemService("phone")).getSubscriberId() == null)
        break label181;
      i3 = 1;
      label84: if ((i3 == 0) || (this.k.g()))
        break label187;
      this.e.setIcon(2130837841);
      label109: if (!this.k.g())
        break label213;
      this.f.setIcon(2130837847);
    }
    while (true)
    {
      d(this.k.l());
      e(i2);
      k();
      this.b.setDataList(this.c);
      this.b.a();
      return;
      this.d.setIcon(2130837852);
      break;
      label181: i3 = 0;
      break label84;
      label187: if (i1 != 0)
        break label109;
      this.e.setIcon(2130837840);
      this.i.b(false);
      break label109;
      label213: this.f.setIcon(2130837846);
    }
  }

  public final void d()
  {
    super.d();
    this.p = new ArrayList();
    this.r = new ag();
    this.o = s.a();
    this.c = new ArrayList();
    this.c.add(new dg(1, s.b, this.a.getString(2131099679)));
    this.c.add(new dg(2, s.c, this.a.getString(2131099680)));
    this.c.add(new dg(3, s.d, this.a.getString(2131099681)));
    this.c.add(new dg(4, s.a, this.a.getString(2131099678)));
    this.c.add(new dg(255, this.a.getString(2131099677), null));
    this.b = ((BatteryModeSwitchView)findViewById(2131230877));
    this.b.setDataList(this.c);
    this.b.setClickListener(this);
    this.b.setLongClickListener(this);
    this.b.a();
    this.s = ((ExpectTimeView)findViewById(2131230755));
    this.d = ((SwitchButtonView)findViewById(2131230872));
    this.e = ((SwitchButtonView)findViewById(2131230873));
    this.f = ((SwitchButtonView)findViewById(2131230874));
    this.g = ((SwitchButtonView)findViewById(2131230875));
    this.h = ((SwitchButtonView)findViewById(2131230876));
    this.t = ((CircleBatteryView)findViewById(2131230871));
    this.d.setOnClickListener(this);
    this.f.setOnClickListener(this);
    this.e.setOnClickListener(this);
    this.h.setOnClickListener(this);
    this.g.setOnClickListener(this);
    cj.a(this);
    this.i = ap.a();
    this.j = aq.a();
    this.k = s.a.d();
    Context localContext;
    y localy;
    ap localap;
    r localr;
    if (!s.a.e().k())
    {
      localContext = this.a;
      localy = s.a.e();
      localap = ap.a();
      localr = s.a.d();
      if (!aq.a().c())
        break label592;
      localy.a(-1);
    }
    while (true)
    {
      localy.b(localr.f());
      localy.b(localap.b());
      localy.c(localap.c());
      localy.c(r.j());
      localy.f(localr.i());
      localy.d(localr.k());
      localy.e(r.m());
      localy.a(ah.a().d());
      localy.g(localr.g());
      s.a.e().l();
      if (!s.a.e().u())
        this.r.a(this.a, 1, c(1));
      i();
      j();
      this.n = true;
      af.a(this);
      return;
      label592: localy.a(aq.a().a(localContext.getContentResolver()));
    }
  }

  public final void e()
  {
    super.e();
    if (!this.n)
    {
      i();
      j();
    }
    while (true)
    {
      NetWorkEventReceiver.a(this);
      ModeEventReceiver.a(this);
      BatteryEventReceiver.a(this);
      this.t.a();
      this.t.setOnClickListener(new dz(this));
      return;
      this.n = false;
    }
  }

  public final void f()
  {
    super.f();
    cj.b(this);
    af.b(this);
  }

  public final int g()
  {
    return 2130903085;
  }

  public final void h()
  {
    ModeEventReceiver.b(this);
    BatteryEventReceiver.b(this);
    NetWorkEventReceiver.b(this);
  }

  public void onClick(View paramView)
  {
    boolean bool1 = true;
    switch (paramView.getId())
    {
    default:
    case 2131230872:
    case 2131230873:
    case 2131230874:
    case 2131230875:
      while (true)
      {
        return;
        if (!this.i.b())
        {
          label51: this.i.a(bool1);
          WifiManager localWifiManager = (WifiManager)this.a.getSystemService("wifi");
          if ((!bool1) && (localWifiManager.getWifiState() != 2))
            break label120;
          p.b(this.a, 2131099812);
          this.d.setIcon(2130837853);
        }
        while (true)
        {
          ab.a(50010);
          break;
          bool1 = false;
          break label51;
          label120: p.a(this.a, 2131099813);
          this.d.setIcon(2130837852);
        }
        int i3 = Integer.parseInt(Build.VERSION.SDK);
        boolean bool2 = ap.a().b();
        boolean bool3;
        label174: boolean bool4;
        if ((i3 >= 9) || (!bool2))
        {
          bool3 = bool1;
          if (((TelephonyManager)this.a.getSystemService("phone")).getSubscriberId() == null)
            break label241;
          bool4 = bool1;
          label195: if ((!bool4) || (!bool3) || (s.a.d().g()))
            break label247;
        }
        label241: label247: for (boolean bool5 = bool1; ; bool5 = false)
        {
          if (bool5)
            break label253;
          this.e.setIcon(2130837840);
          break;
          bool3 = false;
          break label174;
          bool4 = false;
          break label195;
        }
        label253: if (!this.i.c())
        {
          if (!bool1)
            break label310;
          p.a(this.a, 2131099814);
          this.e.setIcon(2130837841);
        }
        while (true)
        {
          label263: this.i.b(bool1);
          ab.a(50011);
          break;
          bool1 = false;
          break label263;
          label310: p.a(this.a, 2131099815);
          this.e.setIcon(2130837840);
        }
        if (!this.k.g())
        {
          label343: if (!bool1)
            break label393;
          p.a(this.a, 2131099816);
          this.f.setIcon(2130837847);
        }
        while (true)
        {
          this.k.a(bool1);
          i();
          ab.a(50012);
          break;
          bool1 = false;
          break label343;
          label393: p.a(this.a, 2131099817);
          this.f.setIcon(2130837846);
        }
        int i2 = (1 + this.k.l()) % 4;
        d(i2);
        this.k.f(i2);
        ab.a(50013);
      }
    case 2131230876:
    }
    int i1 = this.l[((1 + this.m) % 4)];
    if (i1 == -1)
      this.j.e();
    while (true)
    {
      e(i1);
      bo.a().a(af.a().c());
      af.b();
      ab.a(50014);
      break;
      i1 = i1 * 255 / 100;
      this.j.d();
      this.j.a(i1, this.a);
    }
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 25) || (paramInt == 24))
      d(this.k.l());
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.view.PowerManagerView
 * JD-Core Version:    0.6.2
 */