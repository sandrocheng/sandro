package com.keniu.security.traffic;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.ijinshan.kpref.t;
import com.keniu.security.a;
import com.keniu.security.util.at;
import com.keniu.security.util.ax;
import java.util.List;
import java.util.Vector;

public class TrafficXuanFuChuangStateReceiver extends BroadcastReceiver
{
  private static int S = 0;
  protected static final int a = 0;
  protected static final int b = 2;
  protected static final int c = 1;
  protected static final int d = 3;
  protected static final int e;
  public static int f = 0;
  public static int g = 0;
  public static db h = new db();
  public static LinearLayout j = null;
  public static FrameLayout k = null;
  private long A;
  private long B;
  private long C;
  private long D;
  private long E;
  private long F;
  private LayoutInflater G;
  private ClickableGridView H;
  private TextView I;
  private TextView J;
  private TextView K;
  private TextView L;
  private Vector M;
  private ImageView N;
  private ImageView O;
  private ImageView P;
  private TextView Q;
  private LinearLayout R;
  private Handler T = new dx(this);
  public final int i = 2;
  public dc l = new dv(this);
  private WindowManager m;
  private WindowManager.LayoutParams n = new WindowManager.LayoutParams();
  private final float o = 4.0F;
  private final float p = 60.0F;
  private final float q = 30.0F;
  private float r = 0.0F;
  private float s = 0.0F;
  private float t = 0.0F;
  private float u = 0.0F;
  private float v = 0.0F;
  private float w = 0.0F;
  private volatile Context x;
  private ImageView y;
  private TextView z;

  private void h()
  {
    h.a(2, 1000L, this.l);
    this.l.a(2);
  }

  private void i()
  {
    if (k != null)
      return;
    FrameLayout localFrameLayout = (FrameLayout)this.G.inflate(2130903330, null);
    k = localFrameLayout;
    localFrameLayout.setVisibility(0);
    this.R = ((LinearLayout)k.findViewById(2131231763));
    this.O = ((ImageView)k.findViewById(2131231757));
    this.N = ((ImageView)k.findViewById(2131231758));
    this.H = ((ClickableGridView)k.findViewById(2131231764));
    this.H.setVisibility(8);
    this.I = ((TextView)k.findViewById(2131231096));
    this.Q = ((TextView)k.findViewById(2131231760));
    this.P = ((ImageView)k.findViewById(2131231765));
    this.P.setOnClickListener(new dz(this));
    this.J = ((TextView)k.findViewById(2131231759));
    this.K = ((TextView)k.findViewById(2131231761));
    this.L = ((TextView)k.findViewById(2131231762));
    this.n.type = 2002;
    this.n.format = 1;
    this.n.flags = 40;
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    this.m.getDefaultDisplay().getMetrics(localDisplayMetrics);
    float f1 = localDisplayMetrics.density;
    this.n.x = ((int)(f1 * 12.0F));
    this.n.y = g;
    this.n.width = -2;
    this.n.height = -2;
    this.n.gravity = 49;
    this.m.addView(k, this.n);
    if (at.b(this.x))
    {
      WifiManager localWifiManager = (WifiManager)this.x.getSystemService("wifi");
      this.J.setText("当前网络：" + localWifiManager.getConnectionInfo().getSSID());
      this.K.setText("本次连接：");
      y localy2 = y.a(this.x);
      long l1 = System.currentTimeMillis() - localy2.t;
      String str = l1 / 3600000L + "小时" + l1 % 3600000L / 60000L + "分钟";
      this.L.setText(str);
      this.Q.setVisibility(8);
      this.O.setImageDrawable(this.x.getResources().getDrawable(2130838059));
      this.O.setVisibility(0);
      this.N.setVisibility(8);
    }
    while (true)
    {
      this.C = z.b();
      this.E = z.c();
      h();
      if (z.d())
        break label725;
      this.I.setText("您的手机暂不支持此功能");
      this.R.setOnClickListener(null);
      break;
      if (at.a(this.x))
      {
        this.O.setImageDrawable(this.x.getResources().getDrawable(2130838056));
        this.N.setImageDrawable(this.x.getResources().getDrawable(2130838053));
        this.O.setVisibility(0);
        this.N.setVisibility(0);
        this.J.setText("当前网络：2G/3G");
        this.K.setText("本月已用：");
        this.L.setText(ax.c(dd.a));
        y localy1 = y.a(this.x);
        if (dd.a > localy1.d)
        {
          this.Q.setVisibility(0);
          this.Q.setOnClickListener(new ea(this));
        }
        else
        {
          this.Q.setVisibility(8);
        }
      }
    }
    label725: if (a.a(this.x).L())
      this.I.setText("显示当前运行的可联网程序图标\n点击进入联网监控页面");
    while (true)
    {
      new eb(this).start();
      break;
      this.I.setText("正在获取后台可联网用户进程");
    }
  }

  protected final void a()
  {
    a.a(this.x).a(f);
    a.a(this.x).b(g);
    h.a();
    if (j != null)
    {
      this.m.removeView(j);
      j = null;
    }
  }

  protected final void a(float paramFloat1, float paramFloat2)
  {
    WindowManager.LayoutParams localLayoutParams1 = this.n;
    localLayoutParams1.x += (int)paramFloat1;
    WindowManager.LayoutParams localLayoutParams2 = this.n;
    localLayoutParams2.y += (int)paramFloat2;
    f = this.n.x;
    g = this.n.y;
    if (j != null)
      this.m.updateViewLayout(j, this.n);
  }

  protected final void b()
  {
    h.a();
    if (k != null)
    {
      this.m.removeView(k);
      k = null;
      d();
    }
  }

  protected final boolean c()
  {
    if (((ActivityManager.RunningTaskInfo)((ActivityManager)this.x.getSystemService("activity")).getRunningTasks(1).get(0)).topActivity.getClassName().equals("com.keniu.security.traffic.TrafficTabActivity"));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  protected final void d()
  {
    if (j != null);
    while (true)
    {
      return;
      S = 0;
      LinearLayout localLinearLayout = (LinearLayout)this.G.inflate(2130903186, null);
      j = localLinearLayout;
      localLinearLayout.setVisibility(0);
      if (j != null)
      {
        this.y = ((ImageView)j.findViewById(2131231328));
        this.z = ((TextView)j.findViewById(2131231329));
      }
      f = a.a(this.x).aq();
      g = a.a(this.x).ar();
      j.setOnLongClickListener(new ds(this));
      j.setOnClickListener(new dt(this));
      j.setOnTouchListener(new du(this));
      this.n.type = 2002;
      this.n.format = 1;
      this.n.flags = 40;
      this.n.x = f;
      this.n.y = g;
      this.n.width = -2;
      this.n.height = -2;
      this.n.gravity = 51;
      this.m.addView(j, this.n);
      long l1 = z.c();
      this.A = (l1 + z.b());
      h();
    }
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    this.x = paramContext;
    this.m = ((WindowManager)paramContext.getSystemService("window"));
    this.G = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    if (paramIntent.getAction().equals("com.keniu.security.traffic.XUANFUCHUANG_STATE"))
      if (paramIntent.getBooleanExtra("com.keniu.security.traffic.XUANFUCHUANG_STATE", false))
        d();
    while (true)
    {
      return;
      b();
      do
      {
        a();
        break;
        if (paramIntent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE"))
        {
          if (j != null)
          {
            this.y = ((ImageView)j.findViewById(2131231328));
            this.z = ((TextView)j.findViewById(2131231329));
            this.l.a(2);
          }
          if (k == null)
            break;
          if (this.O == null)
            this.O = ((ImageView)k.findViewById(2131231757));
          this.O.setImageDrawable(paramContext.getResources().getDrawable(2130838059));
          this.O.setVisibility(8);
          if (this.N == null)
            this.N = ((ImageView)k.findViewById(2131231758));
          this.N.setVisibility(8);
          this.l.a(2);
          break;
        }
        if (paramIntent.getAction().equals("android.intent.action.ACTION_SHUTDOWN"))
        {
          a.a(paramContext).a(f);
          a.a(paramContext).b(g);
          break;
        }
        if (!paramIntent.getAction().equals("com.keniu.security.traffic.UPDATE_XUANFUCHUANG"))
          break;
      }
      while (!t.b(paramContext).getBoolean("kn_traffis_xuanfuchuang_key", false));
      d();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.TrafficXuanFuChuangStateReceiver
 * JD-Core Version:    0.6.2
 */