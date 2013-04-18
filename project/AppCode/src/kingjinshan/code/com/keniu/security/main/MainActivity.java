package com.keniu.security.main;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.Intent.ShortcutIconResource;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.telephony.TelephonyManager;
import android.text.Html;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.SlidingDrawer;
import android.widget.TextView;
import android.widget.Toast;
import com.ijinshan.bootmanager.activity.AutoBootMangerActivity;
import com.ijinshan.cleaner.MainCleanActivity;
import com.ijinshan.kinghelper.firewall.FireWallSmsAndCallActivity;
import com.ijinshan.kinghelper.firewall.FirewallLogTabActivity;
import com.ijinshan.kinghelper.firewall.dd;
import com.jxphone.mosecurity.activity.BaseActivity;
import com.jxphone.mosecurity.activity.friend.FriendTabActivity;
import com.jxphone.mosecurity.c.c;
import com.keniu.security.e;
import com.keniu.security.main.a.j;
import com.keniu.security.main.a.m;
import com.keniu.security.malware.MalwareMainActivity;
import com.keniu.security.malware.NotificationAdsCheckActivity;
import com.keniu.security.process.ProcessManagerActivity;
import com.keniu.security.protection.ui.PreventTheftFirstVisitActivity;
import com.keniu.security.protection.ui.PreventTheftMainActivity;
import com.keniu.security.software.SoftwareManagerTabActivity;
import com.keniu.security.sync.ui.SyncMainActivity;
import com.keniu.security.traffic.TrafficTabActivity;
import com.keniu.security.traffic.TrafficZiFeiSettingActivity2;
import com.keniu.security.util.i;
import java.io.File;
import java.lang.reflect.Field;
import java.util.List;

public class MainActivity extends BaseActivity
  implements View.OnClickListener, j
{
  private static final String aA = "notify_enter_root_value";
  private static final String aF = "friend_find_password_check_count";
  private static final String aG = "friend_find_password_check_time";
  private static final int aH = 5;
  private static final String ac = "BaseActivity";
  private static final int ad = 1;
  private static final int ae = 2;
  private static final int af = 4;
  private static final int ag = 5;
  private static final int ah = 6;
  private static final int ai = 8;
  private static final int aj = 9;
  private static final int ak = 10;
  private static final int al = 11;
  private static final int am = 12;
  private static final int an = 13;
  private static a ar = null;
  private static final String ay = "checkStatus";
  private static final String az = "notify_enter_root";
  public static final String b = "from_notify";
  public static boolean c = false;
  public static Toast d;
  public static int h = 100;
  private Button A;
  private Button B;
  private Button C;
  private boolean D = false;
  private Button E;
  private ImageView F;
  private FrameLayout G;
  private TextView H;
  private TextView I;
  private TextView J;// mark 流量内容textview
  private TextView K;
  private ImageView L;
  private ImageView M;
  private int N = 1;
  private int O = 1;
  private Button P;
  private LinearLayout Q;
  private LinearLayout R;
  private Button S;
  private LinearLayout T;
  private LinearLayout U;
  private Button V;
  private LinearLayout W;
  private volatile boolean X = false;
  private volatile boolean Y = false;
  private boolean Z = false;
  private boolean aB = false;
  private int aC = 5;
  private boolean aD = true;
  private boolean aE = false;
  private final Animation.AnimationListener aI = new ay(this);
  private Animation.AnimationListener aJ = new az(this);
  private final int aK = 1;
  private final int aL = 2;
  private final int aM = 3;
  private final int aN = 4;
  private Handler aO = new ba(this);
  private volatile boolean aa = false;
  private bk ab;
  private SlidingDrawer ao;
  private Handler ap;
  private final com.jxphone.mosecurity.c.d aq = new com.jxphone.mosecurity.c.d();
  private int as;
  private boolean at;
  private bq au = new n(this);
  private View.OnClickListener av = new y(this);
  private View.OnClickListener aw = new aj(this);
  private Runnable ax = new bf(this);
  View.OnClickListener e = new o(this);
  boolean f = false;
  boolean g = false;
  private ListView i = null;
  private com.keniu.security.main.a.h j = null;
  private bi k = null;
  private TextView l;
  private ViewGroup m;
  private View n;
  private View o;
  private com.keniu.security.g.a p = null;
  private volatile boolean q = false;
  private ImageView r;
  private TextView s = null;
  private Animation t;
  private PopupWindow u = null;
  private LinearLayout v;
  private Button w;
  private FrameLayout x;
  private Button y;
  private Button z;

  private boolean A()
  {
    SharedPreferences localSharedPreferences = com.ijinshan.kpref.t.b(this);
    Long localLong = Long.valueOf(localSharedPreferences.getLong("friend_find_password_check_time", 0L));
    this.aC = localSharedPreferences.getInt("friend_find_password_check_count", 5);
    Log.i("%%%", String.valueOf(localLong));
    boolean bool;
    if (this.aC <= 0)
      if (i.a(localLong.longValue(), System.currentTimeMillis()))
      {
        this.aC = 5;
        localSharedPreferences.edit().putInt("friend_find_password_check_count", this.aC);
        localSharedPreferences.edit().commit();
        bool = true;
      }
    while (true)
    {
      return bool;
      long l1 = 24L - Math.abs(System.currentTimeMillis() - localLong.longValue()) / 3600000L;
      Toast.makeText(this, "您已验证失败5次，请" + l1 + "小时后再试！", 0).show();
      bool = false;
      continue;
      Toast.makeText(this, "您还有" + this.aC + "次验证机会！", 0).show();
      bool = true;
    }
  }

  private Dialog B()
  {
    View localView = LayoutInflater.from(this).inflate(2130903244, null);
    TextView localTextView1 = (TextView)localView.findViewById(2131231266);
    TextView localTextView2 = (TextView)localView.findViewById(2131231484);
    localTextView2.setVisibility(0);
    localTextView1.setVisibility(0);
    localTextView1.setOnClickListener(new ah(this));
    com.keniu.security.util.aq localaq = new com.keniu.security.util.aq(this, (byte)0).a(2131427865).a(localView);
    localTextView2.setText(2131428912);
    localaq.a(new ai(this));
    EditText localEditText = (EditText)localView.findViewById(2131231485);
    localEditText.setImeOptions(2);
    localEditText.setOnKeyListener(new bm(this));
    a(localView, localEditText);
    localaq.a(2131428994, new ak(this, localEditText));
    localaq.b(2131428995, new al(this));
    com.keniu.security.util.ap localap = localaq.c();
    localap.setOnDismissListener(new am(this));
    return localap;
  }

  private void C()
  {
    SharedPreferences.Editor localEditor = com.ijinshan.kpref.t.b(this).edit();
    localEditor.remove("friend_find_password_check_count");
    localEditor.remove("friend_find_password_check_time");
    localEditor.commit();
  }

  private Dialog D()
  {
    View localView = LayoutInflater.from(this).inflate(2130903244, null);
    com.keniu.security.util.aq localaq = new com.keniu.security.util.aq(this, (byte)0).a(2131427865).a(localView);
    localaq.a(new ao(this));
    TextView localTextView1 = (TextView)localView.findViewById(2131231484);
    localTextView1.setVisibility(0);
    localTextView1.setText(2131429307);
    EditText localEditText = (EditText)localView.findViewById(2131231485);
    localEditText.setImeOptions(2);
    localEditText.setOnKeyListener(new bm(this));
    a(localView, localEditText);
    TextView localTextView2 = (TextView)localView.findViewById(2131231266);
    localTextView2.setVisibility(0);
    localTextView2.setOnClickListener(new ap(this));
    localaq.a(2131428265, new aq(this, localEditText));
    localaq.b(2131428995, new ar(this));
    com.keniu.security.util.ap localap = localaq.c();
    localap.setOnDismissListener(new as(this));
    return localap;
  }

  private Dialog E()
  {
    String str1 = com.keniu.security.protection.ui.ag.a(this);
    String str2 = ((TelephonyManager)getSystemService("phone")).getSubscriberId();
    com.keniu.security.util.aq localaq = new com.keniu.security.util.aq(this, (byte)0);
    if ((str1 == null) || (str1.equals("")))
    {
      localaq.a(getString(2131428590));
      localaq.b(getString(2131429219));
      localaq.b(getString(2131428298), null);
    }
    while (true)
    {
      com.keniu.security.util.ap localap = localaq.c();
      localap.setOnDismissListener(new at(this));
      return localap;
      if ((str2 == null) || (str2.equals("")))
      {
        localaq.a(getString(2131428590));
        localaq.b(getString(2131429220));
        localaq.b(getString(2131428298), null);
      }
      else
      {
        localaq.a(getString(2131427865));
        String str3 = getString(2131429369);
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = str1.substring(0, 3);
        arrayOfObject[1] = str1.substring(7);
        localaq.b(String.format(str3, arrayOfObject));
        localaq.b(2131428298, null);
      }
    }
  }

  private void F()
  {
    removeDialog(11);
    removeDialog(5);
    removeDialog(6);
    com.keniu.security.a locala = com.keniu.security.a.a(this);
    Intent localIntent = new Intent();
    localIntent.putExtra("isDummy", locala.ai());
    localIntent.setClass(this, FriendTabActivity.class);
    startActivity(localIntent);
  }

  private void G()
  {
    if (com.keniu.security.protection.ui.ag.c(this) == null)
      com.jxphone.mosecurity.a.a.b(this, "pt", "4");
    if (com.keniu.security.protection.ui.ag.e(this))
      startActivity(new Intent(this, PreventTheftFirstVisitActivity.class));
    while (true)
    {
      return;
      startActivity(new Intent(this, PreventTheftMainActivity.class));
    }
  }

  private void H()
  {
    c(true);
  }

  private void I()
  {
    bs localbs = bn.a().e();
    this.L.clearAnimation();
    this.L.setVisibility(8);
    switch (localbs.c())
    {
    default:
      String str1 = localbs.a("main");
      this.l.setText(str1);
      String str2 = localbs.a("process_left");
      this.P.setText(str2);
      if (localbs.b() == 1)
      {
        this.P.setVisibility(0);
        this.S.setVisibility(8);
        this.Q.setVisibility(0);
        this.R.setVisibility(0);
      }
      break;
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      this.P.setOnClickListener(this);
      this.S.setOnClickListener(this);
      return;
      this.M.setImageDrawable(getResources().getDrawable(2130837858));
      break;
      this.M.setImageDrawable(getResources().getDrawable(2130837863));
      break;
      this.M.setImageDrawable(getResources().getDrawable(2130837862));
      break;
      this.Q.setVisibility(8);
      this.R.setVisibility(8);
      this.P.setVisibility(0);
      this.S.setVisibility(0);
      String str3 = localbs.a("process_right");
      this.S.setText(str3);
    }
  }

  private void J()
  {
    this.H.setText(Html.fromHtml(bu.a(this)));
    bs localbs1 = bn.a().b(bn.d);
    this.I.setText(Html.fromHtml(localbs1.a("description")));
    bs localbs2 = bn.a().b(bn.e);// mark 流量取值
    this.J.setText(Html.fromHtml(localbs2.a("description")));// mark 主页流量值
    if (com.keniu.security.protection.ui.ag.g(this))
      this.K.setText(2131429602);
    while (true)
    {
      return;
      this.K.setText(Html.fromHtml(com.keniu.security.util.ad.a(getString(2131429603), com.keniu.security.util.ae.c)));
    }
  }

  private void K()
  {
    if (this.N == 1)
    {
      this.ao.setVisibility(8);
      com.jxphone.mosecurity.a.a.i(this, "mg_main_okcheck");
    }
    float f1 = this.m.getWidth() / 2.0F;
    float f2 = this.m.getHeight() / 2.0F;
    cg localcg = new cg(0.0F * this.O, 90.0F * this.O, f1, f2, true);
    localcg.setDuration(250L);
    localcg.setFillAfter(true);
    localcg.setInterpolator(new AccelerateInterpolator());
    localcg.setAnimationListener(this.aI);
    this.m.startAnimation(localcg);
  }

  private void L()
  {
    this.k.b();
    this.k.notifyDataSetChanged();
    K();
    this.aD = false;
    this.s.setText("");
    this.s.setVisibility(0);
    this.i.setVisibility(4);
  }

  private void M()
  {
    this.k.e();
    if (this.aa)
    {
      this.M.setImageDrawable(getResources().getDrawable(2130837862));
      this.aa = false;
      if (this.X)
      {
        this.X = false;
        this.l.setText(2131429436);
        this.P.setVisibility(0);
        this.P.setText(2131429432);
        this.P.setOnClickListener(this.av);
        this.S.setVisibility(0);
        this.S.setText(2131428631);
        this.S.setOnClickListener(this.aw);
        this.Q.setVisibility(8);
        this.R.setVisibility(8);
      }
    }
    while (true)
    {
      return;
      if (this.Y)
      {
        this.Y = false;
        bi.a(this.k);
        this.l.setText(2131429436);
        this.P.setVisibility(8);
        this.S.setVisibility(0);
        this.S.setText(2131428629);
        this.S.setOnClickListener(this.aw);
        this.Q.setVisibility(0);
        this.R.setVisibility(0);
      }
      else
      {
        this.l.setText(2131429434);
        this.S.setVisibility(0);
        this.S.setText(2131428629);
        this.S.setOnClickListener(this.aw);
        this.Q.setVisibility(0);
        this.R.setVisibility(0);
        continue;
        if (this.X)
        {
          this.M.setImageDrawable(getResources().getDrawable(2130837863));
          this.X = false;
          this.l.setText(2131429435);
          this.P.setVisibility(0);
          this.P.setText(2131429432);
          this.P.setOnClickListener(this.av);
          this.S.setVisibility(0);
          this.S.setText(2131428631);
          this.S.setOnClickListener(this.aw);
          this.Q.setVisibility(8);
          this.R.setVisibility(8);
        }
        else
        {
          if (this.Y)
          {
            this.M.setImageDrawable(getResources().getDrawable(2130837863));
            bi.a(this.k);
            this.Y = false;
            if (this.Z)
            {
              this.Z = false;
              this.M.setImageDrawable(getResources().getDrawable(2130837858));
              this.l.setText(2131429438);
            }
            while (true)
            {
              this.P.setVisibility(8);
              this.S.setVisibility(0);
              this.S.setText(2131428629);
              this.S.setOnClickListener(this.aw);
              this.Q.setVisibility(0);
              this.R.setVisibility(0);
              break;
              if (this.D)
              {
                this.D = false;
                this.l.setText(2131429437);
              }
              else
              {
                this.l.setText(2131429436);
              }
            }
          }
          this.M.setImageDrawable(getResources().getDrawable(2130837858));
          this.l.setText(2131429438);
          this.P.setVisibility(8);
          this.S.setVisibility(0);
          this.S.setText(2131428629);
          this.S.setOnClickListener(this.aw);
          this.Q.setVisibility(0);
          this.R.setVisibility(0);
        }
      }
    }
  }

  public static a a(Context paramContext)
  {
    if (ar == null)
      ar = new a(paramContext);
    return ar;
  }

  private void a(Message paramMessage)
  {
    if (paramMessage.arg1 != 1)
    {
      if (paramMessage.arg1 != 3)
        break label128;
      boolean bool = ((Boolean)paramMessage.obj).booleanValue();
      this.L.clearAnimation();
      this.L.setVisibility(8);
      if (!bool)
        break label85;
      i();
      bn localbn = bn.a();
      localbn.a(bn.f, "param2", "false");
      localbn.b();
      this.at = true;
      k();
    }
    while (true)
    {
      return;
      label85: this.s.setVisibility(8);
      this.i.setVisibility(0);
      this.k.d();
      this.k.notifyDataSetChanged();
      M();
      this.aE = true;
      continue;
      label128: if ((paramMessage.arg1 == 4) || (paramMessage.what != h))
        continue;
      try
      {
        dismissDialog(4);
        this.M.setImageDrawable(getResources().getDrawable(2130837803));
        this.L.setVisibility(0);
        this.L.startAnimation(this.t);
        this.S.setVisibility(8);
        this.P.setText(2131428630);
        this.P.setOnClickListener(new bb(this));
        this.Q.setVisibility(0);
        this.R.setVisibility(0);
        this.P.setEnabled(false);
        this.P.setVisibility(0);
        this.l.setText(2131429377);
        this.k.b();
        this.k.notifyDataSetChanged();
        K();
        this.aD = false;
        this.s.setText("");
        this.s.setVisibility(0);
        this.i.setVisibility(4);
      }
      catch (Exception localException)
      {
        while (true)
        {
          localException.printStackTrace();
          removeDialog(4);
        }
      }
    }
  }

  private void a(View paramView, EditText paramEditText)
  {
    ((CheckBox)paramView.findViewById(2131231486)).setOnCheckedChangeListener(new an(this, paramEditText));
  }

  private void a(bn parambn)
  {
    Intent localIntent = getIntent();
    if ((localIntent != null) && (localIntent.getBooleanExtra("RECOMMEND_EXAMINE_NOTIFY", false)))
    {
      localIntent.putExtra("RECOMMEND_EXAMINE_NOTIFY", false);
      parambn.c();
    }
  }

  private Intent b(String paramString)
  {
    try
    {
      Intent localIntent2 = getPackageManager().getLaunchIntentForPackage(paramString);
      localIntent1 = localIntent2;
      return localIntent1;
    }
    catch (Exception localException)
    {
      while (true)
        Intent localIntent1 = null;
    }
  }

  public static void b(Context paramContext)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("android.intent.action.MY_RECEIVER");
    localIntent.putExtra("checkStatus", true);
    paramContext.sendBroadcast(localIntent);
  }

  private static void b(DialogInterface paramDialogInterface, boolean paramBoolean)
  {
    try
    {
      Field localField = paramDialogInterface.getClass().getSuperclass().getDeclaredField("mShowing");
      localField.setAccessible(true);
      localField.set(paramDialogInterface, Boolean.valueOf(paramBoolean));
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Log.e("BaseActivity", localException.getMessage());
    }
  }

  private void c(boolean paramBoolean)
  {
    if (!com.keniu.security.util.at.c(this))
    {
      com.keniu.security.util.aq localaq = new com.keniu.security.util.aq(this, (byte)0);
      localaq.a(getString(2131427865));
      localaq.b(getString(2131428373));
      localaq.a(getString(2131428402), new av(this));
      localaq.b(getString(2131428398), null);
      localaq.c().show();
    }
    while (true)
    {
      return;
      if (this.p == null)
        this.p = new com.keniu.security.g.a(this, false);
      this.p.a(paramBoolean);
      com.keniu.security.a.a(this).e(System.currentTimeMillis());
    }
  }

  private void i()
  {
    this.P.setEnabled(false);
    this.S.setEnabled(false);
    K();
    this.aE = false;
    this.aD = true;
    this.at = true;
  }

  private void j()
  {
    this.Q = ((LinearLayout)findViewById(2131231410));
    this.R = ((LinearLayout)findViewById(2131231413));
    this.E = ((Button)findViewById(2131231436));
    this.E.setOnClickListener(this);
    this.F = ((ImageView)findViewById(2131231433));
    this.G = ((FrameLayout)findViewById(2131231432));
    this.G.setOnClickListener(this);
    if (com.keniu.security.a.a(this).N())
      this.F.setVisibility(0);
    while (true)
    {
      this.L = ((ImageView)findViewById(2131231408));
      this.M = ((ImageView)findViewById(2131231407));
      this.M.setImageDrawable(getResources().getDrawable(2130837858));
      this.t = AnimationUtils.loadAnimation(this, 2130968578);
      LinearInterpolator localLinearInterpolator = new LinearInterpolator();
      this.t.setInterpolator(localLinearInterpolator);
      this.L.setVisibility(8);
      this.H = ((TextView)findViewById(2131231425));
      this.I = ((TextView)findViewById(2131231427));
      this.J = ((TextView)findViewById(2131231429));
      this.K = ((TextView)findViewById(2131231431));
      this.ao = ((SlidingDrawer)findViewById(2131231418));
      this.r = ((ImageView)findViewById(2131231421));
      this.ao.setOnDrawerOpenListener(new au(this));
      this.ao.setOnDrawerScrollListener(new bd(this));
      this.ao.setOnDrawerCloseListener(new be(this));
      this.v = ((LinearLayout)findViewById(2131231420));
      this.v.setOnClickListener(this);
      this.w = ((Button)findViewById(2131231438));
      this.w.setOnClickListener(this);
      this.C = ((Button)findViewById(2131231434));
      this.C.setOnClickListener(this);
      this.x = ((FrameLayout)findViewById(2131231430));
      this.x.setOnClickListener(this);
      this.y = ((Button)findViewById(2131231440));
      this.y.setOnClickListener(this);
      this.z = ((Button)findViewById(2131231437));
      this.z.setOnClickListener(this);
      this.A = ((Button)findViewById(2131231439));
      this.A.setOnClickListener(this);
      this.B = ((Button)findViewById(2131231441));
      this.B.setOnClickListener(this);
      this.i = ((ListView)findViewById(2131230958));
      this.i.setCacheColorHint(0);
      this.n = findViewById(2131231416);
      this.o = findViewById(2131231417);
      this.s = ((TextView)findViewById(2131230957));
      this.m = ((ViewGroup)findViewById(2131231414));
      this.l = ((TextView)findViewById(2131231409));
      this.P = ((Button)findViewById(2131231411));
      this.P.setOnClickListener(this);
      this.S = ((Button)findViewById(2131231412));
      this.S.setOnClickListener(this);
      this.T = ((LinearLayout)findViewById(2131231424));
      this.T.setOnClickListener(this);
      this.U = ((LinearLayout)findViewById(2131231428));
      this.U.setOnClickListener(this);
      this.V = ((Button)findViewById(2131231435));
      this.V.setOnClickListener(this);
      this.W = ((LinearLayout)findViewById(2131231426));
      this.W.setOnClickListener(this);
      return;
      this.F.setVisibility(8);
    }
  }

  private void k()
  {
    if (!this.at);
    while (true)
    {
      return;
      this.as = bn.a().a(this.au);
      this.at = false;
    }
  }

  private void l()
  {
    Context localContext = getApplicationContext();
    if (com.keniu.security.a.a(localContext).E())
    {
      if (com.keniu.security.util.at.c(localContext))
        com.jxphone.mosecurity.a.a.a(localContext);
      ApplicationInfo localApplicationInfo = localContext.getApplicationInfo();
      if ((localApplicationInfo != null) && ((0x40000 & localApplicationInfo.flags) != 0))
      {
        com.keniu.security.util.aq localaq = new com.keniu.security.util.aq(this, (byte)0);
        localaq.a(2131429169);
        localaq.b(2131429170);
        com.keniu.security.util.ap localap = localaq.c();
        localap.a(-2, getString(2131429171), new bg(this));
        localap.show();
      }
    }
  }

  private void m()
  {
    this.ap.postDelayed(new bh(this), 2000L);
  }

  private void n()
  {
    com.keniu.security.a locala = com.keniu.security.a.a(this);
    this.aq.a(locala.aF());
  }

  private void o()
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse("market://search?q=pname:com.jxphone.mosecurity"));
    if (getPackageManager().queryIntentActivities(localIntent, 65536).size() > 0)
      startActivity(localIntent);
    while (true)
    {
      return;
      showDialog(2);
    }
  }

  private Dialog p()
  {
    com.keniu.security.util.aq localaq = new com.keniu.security.util.aq(this, (byte)0);
    localaq.a(2131428931);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = e.a(this);
    localaq.b(getString(2131428932, arrayOfObject));
    localaq.a(2131428994, null);
    return localaq.c();
  }

  private Dialog q()
  {
    com.keniu.security.util.aq localaq = new com.keniu.security.util.aq(this, (byte)0);
    localaq.a(2131427865);
    localaq.b(2131428367);
    localaq.a(2131427913, new p(this));
    localaq.c(2131428266, new q(this));
    localaq.a(new r(this));
    return localaq.c();
  }

  private Dialog r()
  {
    com.jxphone.mosecurity.c.b[] arrayOfb = com.jxphone.mosecurity.logic.h.c(this).b(c.b);
    Object localObject;
    if ((arrayOfb == null) || (arrayOfb.length == 0))
    {
      this.aB = true;
      localObject = z();
    }
    while (true)
    {
      return localObject;
      SharedPreferences localSharedPreferences = com.ijinshan.kpref.t.b(this);
      Long localLong = Long.valueOf(localSharedPreferences.getLong("friend_find_password_check_time", 0L));
      this.aC = localSharedPreferences.getInt("friend_find_password_check_count", 5);
      Log.i("%%%", String.valueOf(localLong));
      int i1;
      if (this.aC <= 0)
        if (i.a(localLong.longValue(), System.currentTimeMillis()))
        {
          this.aC = 5;
          localSharedPreferences.edit().putInt("friend_find_password_check_count", this.aC);
          localSharedPreferences.edit().commit();
          i1 = 1;
        }
      while (true)
      {
        if (i1 != 0)
          break label259;
        removeDialog(11);
        localObject = null;
        break;
        long l1 = 24L - Math.abs(System.currentTimeMillis() - localLong.longValue()) / 3600000L;
        Toast.makeText(this, "您已验证失败5次，请" + l1 + "小时后再试！", 0).show();
        i1 = 0;
        continue;
        Toast.makeText(this, "您还有" + this.aC + "次验证机会！", 0).show();
        i1 = 1;
      }
      label259: View localView = LayoutInflater.from(this).inflate(2130903245, null);
      TextView localTextView = (TextView)localView.findViewById(2131231488);
      com.keniu.security.util.aq localaq = new com.keniu.security.util.aq(this, (byte)0);
      localaq.a(2131428616).a(localView);
      s locals = new s(this, localTextView);
      localaq.a(2131427864, locals);
      localaq.b(2131427866, locals);
      localObject = localaq.c();
    }
  }

  private Dialog s()
  {
    com.keniu.security.util.aq localaq = new com.keniu.security.util.aq(this, (byte)0);
    localaq.a(2131428122);
    localaq.b(2131428110);
    localaq.a(2131428111, new t(this));
    localaq.c(2131428266, new u(this));
    localaq.a(new v(this));
    return localaq.c();
  }

  private Dialog t()
  {
    SharedPreferences localSharedPreferences = getSharedPreferences("db_preferences", 0);
    com.keniu.security.util.aq localaq = new com.keniu.security.util.aq(this, (byte)0);
    localaq.a(localSharedPreferences.getString("dialog_title", getString(2131427865)));
    String[] arrayOfString = localSharedPreferences.getString("dialog_content", "").split("#");
    StringBuilder localStringBuilder = new StringBuilder();
    int i1 = arrayOfString.length;
    for (int i2 = 0; i2 < i1; i2++)
    {
      localStringBuilder.append(arrayOfString[i2]);
      localStringBuilder.append('\n');
    }
    localaq.b(localStringBuilder.substring(0, localStringBuilder.length() - 1));
    localaq.a(localSharedPreferences.getString("dialog_btn_positive", "确定"), new w(this));
    localaq.b(localSharedPreferences.getString("dialog_btn_negetive", "取消"), new x(this));
    localaq.a(false);
    return localaq.c();
  }

  private Dialog u()
  {
    com.keniu.security.f.ab localab = com.keniu.security.f.ab.a();
    String str1 = localab.m();
    String str2 = String.format("%s(%s)", new Object[] { e.b(this), str1 });
    View localView = ((LayoutInflater)getSystemService("layout_inflater")).inflate(2130903231, null);
    TextView localTextView1 = (TextView)localView.findViewById(2131231445);
    String str3 = getString(2131427890);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = str2;
    arrayOfObject[1] = localab.n();
    localTextView1.setText(String.format(str3, arrayOfObject));
    ((TextView)localView.findViewById(2131231446)).setOnClickListener(new z(this));
    ((TextView)localView.findViewById(2131231447)).setOnClickListener(new aa(this));
    TextView localTextView2 = (TextView)localView.findViewById(2131231448);
    localTextView2.setText(Html.fromHtml(getString(2131427908)));
    localTextView2.setOnClickListener(new ab(this));
    TextView localTextView3 = (TextView)localView.findViewById(2131231449);
    localTextView3.setText(Html.fromHtml(getString(2131427909)));
    localTextView3.setOnClickListener(new ac(this));
    TextView localTextView4 = (TextView)localView.findViewById(2131231450);
    localTextView4.setText(Html.fromHtml(getString(2131427910)));
    localTextView4.setOnClickListener(new ad(this));
    com.keniu.security.util.aq localaq = new com.keniu.security.util.aq(this, (byte)0);
    localaq.a(2131427887);
    localaq.a(localView);
    localaq.b(2131427869, null);
    return localaq.c();
  }

  private Dialog v()
  {
    com.keniu.security.util.aq localaq = new com.keniu.security.util.aq(this, (byte)0);
    localaq.a(getString(2131427900));
    localaq.a(LayoutInflater.from(this).inflate(2130903071, null));
    localaq.b(getString(2131427947), null);
    return localaq.c();
  }

  private static Dialog w()
  {
    return null;
  }

  private void x()
  {
    if (!com.jxphone.mosecurity.d.k.a(this).a())
      showDialog(6);
    while (true)
    {
      return;
      showDialog(5);
    }
  }

  private void y()
  {
    if (com.keniu.security.protection.ui.ag.a(this) == null)
      G();
    while (true)
    {
      return;
      showDialog(8);
    }
  }

  private Dialog z()
  {
    View localView = LayoutInflater.from(this).inflate(2130903280, null);
    localView.findViewById(2131231573).setVisibility(8);
    localView.findViewById(2131231574).setVisibility(8);
    TextView localTextView1 = (TextView)localView.findViewById(2131231568);
    TextView localTextView2 = (TextView)localView.findViewById(2131231569);
    TextView localTextView3 = (TextView)localView.findViewById(2131231571);
    ((TextView)localView.findViewById(2131231567)).setVisibility(8);
    localTextView1.setVisibility(8);
    localTextView2.setText(2131428883);
    localTextView2.setTextColor(-16777216);
    localTextView3.setText(2131428863);
    localTextView3.setTextColor(-16777216);
    TextView localTextView4 = (TextView)localView.findViewById(2131231570);
    TextView localTextView5 = (TextView)localView.findViewById(2131231572);
    localTextView4.setOnKeyListener(new bm(this));
    localTextView5.setOnKeyListener(new bm(this));
    com.keniu.security.util.aq localaq = new com.keniu.security.util.aq(this, (byte)0).a(2131428860).a(localView);
    localaq.a(false);
    localaq.a(2131428994, new ae(this, localView));
    if (this.aB)
    {
      localTextView2.setText(2131428615);
      this.aB = false;
    }
    localaq.b(2131428995, new af(this));
    com.keniu.security.util.ap localap = localaq.c();
    localap.setOnDismissListener(new ag(this));
    return localap;
  }

  public final void a(m paramm)
  {
    Message localMessage = this.aO.obtainMessage();
    localMessage.arg1 = 4;
    localMessage.obj = paramm;
    this.aO.sendMessage(localMessage);
  }

  public final void a(String paramString)
  {
    Intent localIntent1 = new Intent(this, SplashActivity.class);
    localIntent1.setAction("android.intent.action.MAIN");
    localIntent1.addCategory("android.intent.category.LAUNCHER");
    Intent.ShortcutIconResource localShortcutIconResource = Intent.ShortcutIconResource.fromContext(getApplicationContext(), 2130837821);
    Intent localIntent2 = new Intent("com.android.launcher.action.INSTALL_SHORTCUT");
    localIntent2.putExtra("android.intent.extra.shortcut.NAME", paramString);
    localIntent2.putExtra("duplicate", false);
    localIntent2.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", localShortcutIconResource);
    localIntent2.putExtra("android.intent.extra.shortcut.INTENT", localIntent1);
    sendBroadcast(localIntent2);
  }

  public final void a(String paramString, int paramInt)
  {
    Message localMessage = this.aO.obtainMessage();
    localMessage.arg1 = 2;
    localMessage.arg2 = paramInt;
    localMessage.obj = paramString;
    this.aO.sendMessage(localMessage);
  }

  public final void a(boolean paramBoolean)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("android.intent.action.MY_RECEIVER");
    localIntent.putExtra("notify_enter_root", true);
    localIntent.putExtra("notify_enter_root_value", paramBoolean);
    sendBroadcast(localIntent);
  }

  public final void b(m paramm)
  {
    runOnUiThread(new bc(this, paramm));
  }

  public final void b(boolean paramBoolean)
  {
    Message localMessage = this.aO.obtainMessage();
    localMessage.arg1 = 3;
    localMessage.obj = Boolean.valueOf(paramBoolean);
    this.aO.sendMessage(localMessage);
  }

  public final boolean e()
  {
    return this.aE;
  }

  public final boolean f()
  {
    return this.aD;
  }

  public final void g()
  {
    if (!this.j.d())
    {
      this.j.a();
      this.j.a(this);
      this.j.a(this);
      this.P.setEnabled(true);
      this.S.setEnabled(true);
    }
  }

  public final void h()
  {
    Message localMessage = this.aO.obtainMessage();
    localMessage.arg1 = 1;
    this.aO.sendMessage(localMessage);
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 == com.keniu.security.main.a.ag.a)
      this.k.a(paramInt2, paramIntent);
  }

  public void onClick(View paramView)
  {
    if (this.u != null)
    {
      if (this.u.isShowing())
        this.u.dismiss();
      this.u = null;
    }
    Intent localIntent1 = new Intent();
    bn localbn = bn.a();
    switch (paramView.getId())
    {
    case 2131231413:
    case 2131231414:
    case 2131231415:
    case 2131231416:
    case 2131231417:
    case 2131231418:
    case 2131231419:
    case 2131231421:
    case 2131231422:
    case 2131231423:
    case 2131231425:
    case 2131231427:
    case 2131231429:
    case 2131231431:
    case 2131231433:
    default:
      startActivity(localIntent1);
    case 2131231420:
    case 2131231411:
    case 2131231412:
    case 2131231424:
    case 2131231432:
    case 2131231428:
    case 2131231435:
    case 2131231426:
    case 2131231438:
    case 2131231430:
    case 2131231440:
    case 2131231437:
    case 2131231439:
    case 2131231434:
    case 2131231441:
    case 2131231436:
    }
    while (true)
    {
      return;
      localbn.e().a(this, 0);
      I();
      continue;
      localbn.e().a(this, 1);
      I();
      continue;
      localIntent1.setClass(this, MalwareMainActivity.class);
      break;
      com.keniu.security.a locala2 = com.keniu.security.a.a(this);
      if (locala2.N())
      {
        locala2.O();
        this.F.setVisibility(8);
      }
      localIntent1.setClass(this, NotificationAdsCheckActivity.class);
      break;
      com.jxphone.mosecurity.a.a.c(this, "1");
      com.keniu.security.a locala1 = com.keniu.security.a.a(this);
      if (locala1.X())
      {
        locala1.aa();
        com.keniu.security.traffic.y localy = com.keniu.security.traffic.y.a(this);
        if ((TextUtils.isEmpty(localy.k)) && (TextUtils.isEmpty(localy.l)) && (TextUtils.isEmpty(localy.n)) && (TextUtils.isEmpty(localy.m)))
        {
          Intent localIntent4 = new Intent();
          localIntent4.setClass(this, TrafficZiFeiSettingActivity2.class);
          localIntent4.putExtra("context", "Traffic");
          localIntent4.putExtra("fromMain", true);
          localIntent4.putExtra("first", true);
          startActivity(localIntent4);
        }
      }
      else
      {
        localIntent1.setClass(this, TrafficTabActivity.class);
        break;
        localIntent1.setClass(this, ProcessManagerActivity.class);
        break;
        localIntent1.setClass(this, FirewallLogTabActivity.class);
        com.ijinshan.kinghelper.firewall.a.a.a(this);
        if (com.ijinshan.kinghelper.firewall.a.a.a() > 0)
        {
          localIntent1.putExtra("FirewallLogTabActivity_current_tab", "FirewallLogTabActivity_current_tab_sms");
          break;
        }
        if (com.ijinshan.kinghelper.firewall.a.a.b() <= 0)
          break;
        localIntent1.putExtra("FirewallLogTabActivity_current_tab", "FirewallLogTabActivity_current_tab_call");
        break;
        if (!com.jxphone.mosecurity.d.k.a(this).a())
        {
          showDialog(6);
        }
        else
        {
          showDialog(5);
          continue;
          if (com.keniu.security.protection.ui.ag.a(this) == null)
          {
            G();
          }
          else
          {
            showDialog(8);
            continue;
            localIntent1.setClass(this, FireWallSmsAndCallActivity.class);
            break;
            localIntent1.setClass(this, SoftwareManagerTabActivity.class);
            break;
            localIntent1.setClass(this, SyncMainActivity.class);
            break;
            localIntent1.setClass(this, AutoBootMangerActivity.class);
            break;
            com.jxphone.mosecurity.a.a.i(this, "mg_main_battery");
            Intent localIntent2 = b("com.ijinshan.kbatterydoctor");
            if (localIntent2 == null)
            {
              if (new File(com.keniu.security.main.a.d.b).exists())
              {
                Uri localUri = Uri.fromFile(new File(com.keniu.security.main.a.d.b));
                Intent localIntent3 = new Intent("android.intent.action.VIEW");
                localIntent3.setDataAndType(localUri, "application/vnd.android.package-archive");
                startActivity(localIntent3);
              }
              else if (a(this).d())
              {
                a(this).c();
              }
              else
              {
                com.keniu.security.util.aq localaq = new com.keniu.security.util.aq(this, (byte)0);
                localaq.a(2131427865);
                localaq.b(2131429428);
                localaq.b(2131429430, null);
                localaq.a(2131429429, new aw(this));
                localaq.c().show();
              }
            }
            else
            {
              startActivity(localIntent2);
              continue;
              localIntent1.setClass(this, MainCleanActivity.class);
              startActivity(localIntent1);
            }
          }
        }
      }
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    d = Toast.makeText(this, "提权失败，无法优化开机启动项", 1);
    com.keniu.security.a locala1 = com.keniu.security.a.a(this);
    this.ab = new bk(this);
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.intent.action.MY_RECEIVER");
    registerReceiver(this.ab, localIntentFilter);
    Intent localIntent = getIntent();
    localIntent.putExtra("actionname", "start");
    localIntent.putExtra("type", (byte)0);
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    setContentView(2130903225);
    this.j = new com.keniu.security.main.a.h();
    this.j.a(this);
    this.Q = ((LinearLayout)findViewById(2131231410));
    this.R = ((LinearLayout)findViewById(2131231413));
    this.E = ((Button)findViewById(2131231436));
    this.E.setOnClickListener(this);
    this.F = ((ImageView)findViewById(2131231433));
    this.G = ((FrameLayout)findViewById(2131231432));
    this.G.setOnClickListener(this);
    Bundle localBundle;
    label1058: boolean bool2;
    if (com.keniu.security.a.a(this).N())
    {
      this.F.setVisibility(0);
      this.L = ((ImageView)findViewById(2131231408));
      this.M = ((ImageView)findViewById(2131231407));
      this.M.setImageDrawable(getResources().getDrawable(2130837858));
      this.t = AnimationUtils.loadAnimation(this, 2130968578);
      LinearInterpolator localLinearInterpolator = new LinearInterpolator();
      this.t.setInterpolator(localLinearInterpolator);
      this.L.setVisibility(8);
      this.H = ((TextView)findViewById(2131231425));
      this.I = ((TextView)findViewById(2131231427));
      this.J = ((TextView)findViewById(2131231429));
      this.K = ((TextView)findViewById(2131231431));
      this.ao = ((SlidingDrawer)findViewById(2131231418));
      this.r = ((ImageView)findViewById(2131231421));
      this.ao.setOnDrawerOpenListener(new au(this));
      this.ao.setOnDrawerScrollListener(new bd(this));
      this.ao.setOnDrawerCloseListener(new be(this));
      this.v = ((LinearLayout)findViewById(2131231420));
      this.v.setOnClickListener(this);
      this.w = ((Button)findViewById(2131231438));
      this.w.setOnClickListener(this);
      this.C = ((Button)findViewById(2131231434));
      this.C.setOnClickListener(this);
      this.x = ((FrameLayout)findViewById(2131231430));
      this.x.setOnClickListener(this);
      this.y = ((Button)findViewById(2131231440));
      this.y.setOnClickListener(this);
      this.z = ((Button)findViewById(2131231437));
      this.z.setOnClickListener(this);
      this.A = ((Button)findViewById(2131231439));
      this.A.setOnClickListener(this);
      this.B = ((Button)findViewById(2131231441));
      this.B.setOnClickListener(this);
      this.i = ((ListView)findViewById(2131230958));
      this.i.setCacheColorHint(0);
      this.n = findViewById(2131231416);
      this.o = findViewById(2131231417);
      this.s = ((TextView)findViewById(2131230957));
      this.m = ((ViewGroup)findViewById(2131231414));
      this.l = ((TextView)findViewById(2131231409));
      this.P = ((Button)findViewById(2131231411));
      this.P.setOnClickListener(this);
      this.S = ((Button)findViewById(2131231412));
      this.S.setOnClickListener(this);
      this.T = ((LinearLayout)findViewById(2131231424));
      this.T.setOnClickListener(this);
      this.U = ((LinearLayout)findViewById(2131231428));
      this.U.setOnClickListener(this);
      this.V = ((Button)findViewById(2131231435));
      this.V.setOnClickListener(this);
      this.W = ((LinearLayout)findViewById(2131231426));
      this.W.setOnClickListener(this);
      this.k = new bi(this, this, this.j);
      this.i.setAdapter(this.k);
      this.ap = new Handler();
      com.ijinshan.kinghelper.firewall.a.n.a(this);
      if (com.keniu.security.h.b.a)
      {
        dd.a(this);
        dd.a(false);
      }
      com.keniu.security.a locala2 = com.keniu.security.a.a(this);
      this.aq.a(locala2.aF());
      Context localContext = getApplicationContext();
      if (com.keniu.security.a.a(localContext).E())
      {
        if (com.keniu.security.util.at.c(localContext))
          com.jxphone.mosecurity.a.a.a(localContext);
        ApplicationInfo localApplicationInfo = localContext.getApplicationInfo();
        if ((localApplicationInfo != null) && ((0x40000 & localApplicationInfo.flags) != 0))
        {
          com.keniu.security.util.aq localaq = new com.keniu.security.util.aq(this, (byte)0);
          localaq.a(2131429169);
          localaq.b(2131429170);
          com.keniu.security.util.ap localap = localaq.c();
          localap.a(-2, getString(2131429171), new bg(this));
          localap.show();
        }
      }
      this.ap.postDelayed(new bh(this), 2000L);
      dd.a(this);
      if (localIntent.getExtras() == null)
        break label1177;
      localBundle = localIntent.getExtras();
      boolean bool1 = localBundle.getBoolean("notifylowbattery", false);
      bool2 = localIntent.getBooleanExtra("dbupdate", false);
      if (!bool1)
        break label1183;
      localIntent.putExtra("notifylowbattery", false);
      showDialog(12);
    }
    while (true)
    {
      this.at = true;
      ViewGroup.LayoutParams localLayoutParams = this.o.getLayoutParams();
      localLayoutParams.height = this.n.getLayoutParams().height;
      this.o.setLayoutParams(localLayoutParams);
      if (com.keniu.security.a.a(this).w())
        this.ap.postDelayed(this.ax, 100L);
      return;
      this.F.setVisibility(8);
      break;
      label1177: localBundle = null;
      break label1058;
      label1183: if (bool2)
      {
        showDialog(13);
      }
      else if (locala1.b())
      {
        locala1.c();
        showDialog(4);
      }
      else if (com.keniu.security.f.ab.a().f())
      {
        showDialog(10);
      }
    }
  }

  protected Dialog onCreateDialog(int paramInt)
  {
    Object localObject;
    switch (paramInt)
    {
    case 3:
    case 7:
    default:
      localObject = super.onCreateDialog(paramInt);
    case 4:
    case 1:
    case 2:
    case 5:
    case 8:
    case 9:
    case 6:
    case 10:
    case 11:
    case 12:
    case 13:
    }
    while (true)
    {
      return localObject;
      com.keniu.security.util.aq localaq8 = new com.keniu.security.util.aq(this, (byte)0);
      localaq8.a(getString(2131427900));
      localaq8.a(LayoutInflater.from(this).inflate(2130903071, null));
      localaq8.b(getString(2131427947), null);
      localObject = localaq8.c();
      continue;
      localObject = null;
      continue;
      com.keniu.security.util.aq localaq7 = new com.keniu.security.util.aq(this, (byte)0);
      localaq7.a(2131428931);
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = e.a(this);
      localaq7.b(getString(2131428932, arrayOfObject2));
      localaq7.a(2131428994, null);
      localObject = localaq7.c();
      continue;
      View localView3 = LayoutInflater.from(this).inflate(2130903244, null);
      TextView localTextView4 = (TextView)localView3.findViewById(2131231266);
      TextView localTextView5 = (TextView)localView3.findViewById(2131231484);
      localTextView5.setVisibility(0);
      localTextView4.setVisibility(0);
      localTextView4.setOnClickListener(new ah(this));
      com.keniu.security.util.aq localaq6 = new com.keniu.security.util.aq(this, (byte)0).a(2131427865).a(localView3);
      localTextView5.setText(2131428912);
      localaq6.a(new ai(this));
      EditText localEditText2 = (EditText)localView3.findViewById(2131231485);
      localEditText2.setImeOptions(2);
      localEditText2.setOnKeyListener(new bm(this));
      a(localView3, localEditText2);
      localaq6.a(2131428994, new ak(this, localEditText2));
      localaq6.b(2131428995, new al(this));
      localObject = localaq6.c();
      ((Dialog)localObject).setOnDismissListener(new am(this));
      continue;
      View localView2 = LayoutInflater.from(this).inflate(2130903244, null);
      com.keniu.security.util.aq localaq5 = new com.keniu.security.util.aq(this, (byte)0).a(2131427865).a(localView2);
      localaq5.a(new ao(this));
      TextView localTextView2 = (TextView)localView2.findViewById(2131231484);
      localTextView2.setVisibility(0);
      localTextView2.setText(2131429307);
      EditText localEditText1 = (EditText)localView2.findViewById(2131231485);
      localEditText1.setImeOptions(2);
      localEditText1.setOnKeyListener(new bm(this));
      a(localView2, localEditText1);
      TextView localTextView3 = (TextView)localView2.findViewById(2131231266);
      localTextView3.setVisibility(0);
      localTextView3.setOnClickListener(new ap(this));
      localaq5.a(2131428265, new aq(this, localEditText1));
      localaq5.b(2131428995, new ar(this));
      localObject = localaq5.c();
      ((Dialog)localObject).setOnDismissListener(new as(this));
      continue;
      String str1 = com.keniu.security.protection.ui.ag.a(this);
      String str2 = ((TelephonyManager)getSystemService("phone")).getSubscriberId();
      com.keniu.security.util.aq localaq4 = new com.keniu.security.util.aq(this, (byte)0);
      if ((str1 == null) || (str1.equals("")))
      {
        localaq4.a(getString(2131428590));
        localaq4.b(getString(2131429219));
        localaq4.b(getString(2131428298), null);
      }
      while (true)
      {
        localObject = localaq4.c();
        ((Dialog)localObject).setOnDismissListener(new at(this));
        break;
        if ((str2 == null) || (str2.equals("")))
        {
          localaq4.a(getString(2131428590));
          localaq4.b(getString(2131429220));
          localaq4.b(getString(2131428298), null);
        }
        else
        {
          localaq4.a(getString(2131427865));
          String str3 = getString(2131429369);
          Object[] arrayOfObject1 = new Object[2];
          arrayOfObject1[0] = str1.substring(0, 3);
          arrayOfObject1[1] = str1.substring(7);
          localaq4.b(String.format(str3, arrayOfObject1));
          localaq4.b(2131428298, null);
        }
      }
      localObject = z();
      continue;
      com.keniu.security.util.aq localaq3 = new com.keniu.security.util.aq(this, (byte)0);
      localaq3.a(2131427865);
      localaq3.b(2131428367);
      localaq3.a(2131427913, new p(this));
      localaq3.c(2131428266, new q(this));
      localaq3.a(new r(this));
      localObject = localaq3.c();
      continue;
      com.jxphone.mosecurity.c.b[] arrayOfb = com.jxphone.mosecurity.logic.h.c(this).b(c.b);
      if ((arrayOfb == null) || (arrayOfb.length == 0))
      {
        this.aB = true;
        localObject = z();
      }
      else
      {
        SharedPreferences localSharedPreferences = com.ijinshan.kpref.t.b(this);
        Long localLong = Long.valueOf(localSharedPreferences.getLong("friend_find_password_check_time", 0L));
        this.aC = localSharedPreferences.getInt("friend_find_password_check_count", 5);
        Log.i("%%%", String.valueOf(localLong));
        int i1;
        if (this.aC <= 0)
          if (i.a(localLong.longValue(), System.currentTimeMillis()))
          {
            this.aC = 5;
            localSharedPreferences.edit().putInt("friend_find_password_check_count", this.aC);
            localSharedPreferences.edit().commit();
            i1 = 1;
          }
        while (true)
        {
          if (i1 != 0)
            break label1229;
          removeDialog(11);
          localObject = null;
          break;
          long l1 = 24L - Math.abs(System.currentTimeMillis() - localLong.longValue()) / 3600000L;
          Toast.makeText(this, "您已验证失败5次，请" + l1 + "小时后再试！", 0).show();
          i1 = 0;
          continue;
          Toast.makeText(this, "您还有" + this.aC + "次验证机会！", 0).show();
          i1 = 1;
        }
        label1229: View localView1 = LayoutInflater.from(this).inflate(2130903245, null);
        TextView localTextView1 = (TextView)localView1.findViewById(2131231488);
        com.keniu.security.util.aq localaq2 = new com.keniu.security.util.aq(this, (byte)0);
        localaq2.a(2131428616).a(localView1);
        s locals = new s(this, localTextView1);
        localaq2.a(2131427864, locals);
        localaq2.b(2131427866, locals);
        localObject = localaq2.c();
        continue;
        com.keniu.security.util.aq localaq1 = new com.keniu.security.util.aq(this, (byte)0);
        localaq1.a(2131428122);
        localaq1.b(2131428110);
        localaq1.a(2131428111, new t(this));
        localaq1.c(2131428266, new u(this));
        localaq1.a(new v(this));
        localObject = localaq1.c();
        continue;
        localObject = t();
      }
    }
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131492868, paramMenu);
    return true;
  }

  protected void onDestroy()
  {
    unregisterReceiver(this.ab);
    if (!this.j.d())
      this.j.a();
    if (ar != null)
    {
      ar.a();
      ar = null;
    }
    if (this.u != null)
    {
      if (this.u.isShowing())
        this.u.dismiss();
      this.u = null;
    }
    if ((this.ap != null) && (this.ax != null))
      this.ap.removeCallbacks(this.ax);
    if (this.p != null)
    {
      this.p.b();
      this.p = null;
    }
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool;
    if ((paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0))
      if (this.j.d())
      {
        this.j.c();
        bool = true;
      }
    while (true)
    {
      return bool;
      if (this.N == 2)
      {
        i();
        bool = true;
      }
      else if (this.ao.isOpened())
      {
        this.ao.close();
        bool = true;
      }
      else
      {
        bool = super.onKeyDown(paramInt, paramKeyEvent);
      }
    }
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    Bundle localBundle;
    boolean bool2;
    boolean bool3;
    if (paramIntent.getExtras() != null)
    {
      localBundle = paramIntent.getExtras();
      if (localBundle != null)
      {
        boolean bool1 = localBundle.getBoolean("autoupdateservice", false);
        bool2 = localBundle.getBoolean("notifylowbattery", false);
        bool3 = localBundle.getBoolean("RECOMMEND_EXAMINE_NOTIFY", false);
        if (!bool1)
          break label143;
        paramIntent.putExtra("autoupdateservice", false);
        if (!com.keniu.security.f.ab.a().f())
          break label135;
        showDialog(10);
      }
    }
    while (true)
    {
      if (localBundle.getBoolean("autoupdateapk", false))
      {
        paramIntent.putExtra("autoupdateapk", false);
        com.keniu.security.f.ab.a().k();
      }
      if (bool3)
      {
        bn localbn = bn.a();
        paramIntent.putExtra("RECOMMEND_EXAMINE_NOTIFY", false);
        localbn.c();
      }
      return;
      localBundle = null;
      break;
      label135: c(false);
      continue;
      label143: if (bool2)
      {
        paramIntent.putExtra("notifylowbattery", false);
        showDialog(12);
      }
      else if (paramIntent.getBooleanExtra("dbupdate", false))
      {
        showDialog(13);
      }
    }
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    boolean bool;
    switch (paramMenuItem.getItemId())
    {
    default:
      bool = false;
      return bool;
    case 2131231769:
      com.keniu.security.util.af.a(this, SettingActivity.class);
    case 2131231770:
    case 2131231774:
    case 2131231771:
    case 2131231772:
    case 2131231773:
    }
    while (true)
    {
      bool = true;
      break;
      com.jxphone.mosecurity.a.a.i(this, "menu_up");
      c(true);
      continue;
      u().show();
      continue;
      com.jxphone.mosecurity.a.a.i(this, "menu_seccenter");
      Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse("http://bbs.duba.net/forum.php?mod=forumdisplay&fid=6421&mobile=yes"));
      if (getPackageManager().queryIntentActivities(localIntent, 65536).size() != 0)
      {
        startActivity(localIntent);
        continue;
        com.jxphone.mosecurity.a.a.i(this, "menu_share");
        new cd(this).a();
        continue;
        new k(this).a();
      }
    }
  }

  protected void onPause()
  {
    if (this.u != null)
    {
      if (this.u.isShowing())
        this.u.dismiss();
      this.u = null;
    }
    super.onPause();
  }

  protected void onResume()
  {
    super.onResume();
    if (this.aE)
    {
      this.k.c();
      M();
      if (this.q)
        this.q = false;
    }
    while (true)
    {
      return;
      bn localbn = bn.a();
      localbn.b();
      k();
      Intent localIntent = getIntent();
      if ((localIntent != null) && (localIntent.getBooleanExtra("RECOMMEND_EXAMINE_NOTIFY", false)))
      {
        localIntent.putExtra("RECOMMEND_EXAMINE_NOTIFY", false);
        localbn.c();
      }
    }
  }

  protected void onStart()
  {
    super.onStart();
    com.keniu.security.monitor.a.a().a(com.keniu.security.monitor.a.x, this.k, 1073741823);
    String str = com.keniu.security.a.a(this).aF();
    int i1;
    switch (com.keniu.security.a.a(this).aA())
    {
    default:
      i1 = 2130837830;
      if (this.w == null)
        this.w = ((Button)findViewById(2131231438));
      this.w.setText(str);
      this.w.setCompoundDrawablesWithIntrinsicBounds(0, i1, 0, 0);
      if (getIntent().getExtras() == null)
        break;
    case 0:
    case 1:
    case 2:
    }
    for (Bundle localBundle = getIntent().getExtras(); ; localBundle = null)
    {
      if (localBundle != null)
      {
        if (localBundle.getBoolean("autoupdateservice", false))
        {
          getIntent().putExtra("autoupdateservice", false);
          if (!com.keniu.security.f.ab.a().f())
            c(false);
        }
        if (localBundle.getBoolean("autoupdateapk", false))
        {
          getIntent().putExtra("autoupdateapk", false);
          com.keniu.security.f.ab.a().k();
        }
      }
      return;
      i1 = 2130837830;
      break;
      i1 = 2130837815;
      break;
      i1 = 2130837816;
      break;
    }
  }

  protected void onStop()
  {
    super.onStop();
    com.keniu.security.monitor.a.a().a(com.keniu.security.monitor.a.x, this.k);
    this.at = true;
    bn.a().a(this.as);
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.u != null)
    {
      if (this.u.isShowing())
        this.u.dismiss();
      this.u = null;
    }
    return super.onTouchEvent(paramMotionEvent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.MainActivity
 * JD-Core Version:    0.6.2
 */