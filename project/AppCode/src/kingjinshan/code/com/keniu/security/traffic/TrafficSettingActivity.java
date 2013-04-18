package com.keniu.security.traffic;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.widget.Toast;
import com.hoi.widget.r;
import com.ijinshan.kpref.ListPreference;
import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.PreferenceCategory;
import com.ijinshan.kpref.PreferenceScreen;
import com.ijinshan.kpref.t;
import com.jxphone.mosecurity.d.l;
import com.keniu.security.monitor.a;
import com.keniu.security.util.BasePreferenceActivity;
import com.keniu.security.util.CustomCheckBoxPreference;
import com.keniu.security.util.MyDialogPreference;
import com.keniu.security.util.ax;
import java.lang.reflect.Method;
import java.util.Date;

public class TrafficSettingActivity extends BasePreferenceActivity
  implements com.keniu.security.monitor.b
{
  public static final String a = "com.keniu.security.traffic.XUANFUCHUANG_STATE";
  public static final String b = "com.keniu.security.traffic.UPDATE_XUANFUCHUANG";
  private static final int m = 1;
  private y c;
  private com.ijinshan.kpref.n d;
  private com.ijinshan.kpref.n e;
  private CustomCheckBoxPreference f;
  private CustomCheckBoxPreference g;
  private CustomCheckBoxPreference h;
  private WifiManager i;
  private BroadcastReceiver j;
  private Preference k;
  private long l;
  private CustomCheckBoxPreference n;
  private Preference o;
  private Toast p;
  private boolean q = false;

  public static void a(boolean paramBoolean, Context paramContext)
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    try
    {
      Method localMethod1 = Class.forName(localTelephonyManager.getClass().getName()).getDeclaredMethod("getITelephony", new Class[0]);
      localMethod1.setAccessible(true);
      Object localObject1 = localMethod1.invoke(localTelephonyManager, new Object[0]);
      Class localClass = Class.forName(localObject1.getClass().getName());
      if (!paramBoolean);
      Method localMethod2;
      for (Object localObject2 = localClass.getDeclaredMethod("disableDataConnectivity", new Class[0]); ; localObject2 = localMethod2)
      {
        ((Method)localObject2).setAccessible(true);
        ((Method)localObject2).invoke(localObject1, new Object[0]);
        break;
        localMethod2 = localClass.getDeclaredMethod("enableDataConnectivity", new Class[0]);
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  // ERROR //
  private boolean d()
  {
    // Byte code:
    //   0: ldc 122
    //   2: invokestatic 74	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   5: astore 4
    //   7: aload 4
    //   9: ldc 124
    //   11: invokevirtual 128	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   14: astore 9
    //   16: aload 9
    //   18: iconst_1
    //   19: invokevirtual 131	java/lang/reflect/Field:setAccessible	(Z)V
    //   22: aload 9
    //   24: aload 4
    //   26: invokevirtual 135	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   29: astore 14
    //   31: getstatic 141	java/lang/System:out	Ljava/io/PrintStream;
    //   34: new 143	java/lang/StringBuilder
    //   37: dup
    //   38: invokespecial 144	java/lang/StringBuilder:<init>	()V
    //   41: ldc 146
    //   43: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   46: aload 14
    //   48: checkcast 152	java/lang/String
    //   51: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   54: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   57: invokevirtual 161	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   60: aload_0
    //   61: invokevirtual 165	com/keniu/security/traffic/TrafficSettingActivity:getContentResolver	()Landroid/content/ContentResolver;
    //   64: aload 14
    //   66: checkcast 152	java/lang/String
    //   69: invokestatic 171	android/provider/Settings$Secure:getInt	(Landroid/content/ContentResolver;Ljava/lang/String;)I
    //   72: istore 17
    //   74: iload 17
    //   76: ifne +149 -> 225
    //   79: iconst_0
    //   80: istore_3
    //   81: iload_3
    //   82: ireturn
    //   83: astore_1
    //   84: aload_1
    //   85: invokevirtual 172	java/lang/ClassNotFoundException:printStackTrace	()V
    //   88: aload_0
    //   89: invokevirtual 175	com/keniu/security/traffic/TrafficSettingActivity:b	()Lcom/ijinshan/kpref/PreferenceScreen;
    //   92: aload_0
    //   93: getfield 177	com/keniu/security/traffic/TrafficSettingActivity:g	Lcom/keniu/security/util/CustomCheckBoxPreference;
    //   96: invokevirtual 182	com/ijinshan/kpref/PreferenceScreen:d	(Lcom/ijinshan/kpref/Preference;)Z
    //   99: pop
    //   100: iconst_0
    //   101: istore_3
    //   102: goto -21 -> 81
    //   105: astore 7
    //   107: aload 7
    //   109: invokevirtual 183	java/lang/SecurityException:printStackTrace	()V
    //   112: aload_0
    //   113: invokevirtual 175	com/keniu/security/traffic/TrafficSettingActivity:b	()Lcom/ijinshan/kpref/PreferenceScreen;
    //   116: aload_0
    //   117: getfield 177	com/keniu/security/traffic/TrafficSettingActivity:g	Lcom/keniu/security/util/CustomCheckBoxPreference;
    //   120: invokevirtual 182	com/ijinshan/kpref/PreferenceScreen:d	(Lcom/ijinshan/kpref/Preference;)Z
    //   123: pop
    //   124: iconst_0
    //   125: istore_3
    //   126: goto -45 -> 81
    //   129: astore 5
    //   131: aload 5
    //   133: invokevirtual 184	java/lang/NoSuchFieldException:printStackTrace	()V
    //   136: aload_0
    //   137: invokevirtual 175	com/keniu/security/traffic/TrafficSettingActivity:b	()Lcom/ijinshan/kpref/PreferenceScreen;
    //   140: aload_0
    //   141: getfield 177	com/keniu/security/traffic/TrafficSettingActivity:g	Lcom/keniu/security/util/CustomCheckBoxPreference;
    //   144: invokevirtual 182	com/ijinshan/kpref/PreferenceScreen:d	(Lcom/ijinshan/kpref/Preference;)Z
    //   147: pop
    //   148: iconst_0
    //   149: istore_3
    //   150: goto -69 -> 81
    //   153: astore 12
    //   155: aload_0
    //   156: invokevirtual 175	com/keniu/security/traffic/TrafficSettingActivity:b	()Lcom/ijinshan/kpref/PreferenceScreen;
    //   159: aload_0
    //   160: getfield 177	com/keniu/security/traffic/TrafficSettingActivity:g	Lcom/keniu/security/util/CustomCheckBoxPreference;
    //   163: invokevirtual 182	com/ijinshan/kpref/PreferenceScreen:d	(Lcom/ijinshan/kpref/Preference;)Z
    //   166: pop
    //   167: aload 12
    //   169: invokevirtual 185	java/lang/IllegalArgumentException:printStackTrace	()V
    //   172: iconst_0
    //   173: istore_3
    //   174: goto -93 -> 81
    //   177: astore 10
    //   179: aload_0
    //   180: invokevirtual 175	com/keniu/security/traffic/TrafficSettingActivity:b	()Lcom/ijinshan/kpref/PreferenceScreen;
    //   183: aload_0
    //   184: getfield 177	com/keniu/security/traffic/TrafficSettingActivity:g	Lcom/keniu/security/util/CustomCheckBoxPreference;
    //   187: invokevirtual 182	com/ijinshan/kpref/PreferenceScreen:d	(Lcom/ijinshan/kpref/Preference;)Z
    //   190: pop
    //   191: aload 10
    //   193: invokevirtual 186	java/lang/IllegalAccessException:printStackTrace	()V
    //   196: iconst_0
    //   197: istore_3
    //   198: goto -117 -> 81
    //   201: astore 15
    //   203: aload_0
    //   204: invokevirtual 175	com/keniu/security/traffic/TrafficSettingActivity:b	()Lcom/ijinshan/kpref/PreferenceScreen;
    //   207: aload_0
    //   208: getfield 177	com/keniu/security/traffic/TrafficSettingActivity:g	Lcom/keniu/security/util/CustomCheckBoxPreference;
    //   211: invokevirtual 182	com/ijinshan/kpref/PreferenceScreen:d	(Lcom/ijinshan/kpref/Preference;)Z
    //   214: pop
    //   215: aload 15
    //   217: invokevirtual 187	android/provider/Settings$SettingNotFoundException:printStackTrace	()V
    //   220: iconst_0
    //   221: istore_3
    //   222: goto -141 -> 81
    //   225: iconst_1
    //   226: istore_3
    //   227: goto -146 -> 81
    //
    // Exception table:
    //   from	to	target	type
    //   0	7	83	java/lang/ClassNotFoundException
    //   7	22	105	java/lang/SecurityException
    //   7	22	129	java/lang/NoSuchFieldException
    //   22	60	153	java/lang/IllegalArgumentException
    //   22	60	177	java/lang/IllegalAccessException
    //   60	74	201	android/provider/Settings$SettingNotFoundException
  }

  private void e()
  {
    IntentFilter localIntentFilter = new IntentFilter("android.net.wifi.WIFI_STATE_CHANGED");
    localIntentFilter.addAction("android.net.wifi.supplicant.STATE_CHANGE");
    localIntentFilter.addAction("android.net.wifi.STATE_CHANGE");
    this.j = new bu(this);
    registerReceiver(this.j, localIntentFilter);
  }

  private long f()
  {
    z localz = z.a(this);
    long l2;
    if (!localz.b(true))
    {
      l2 = 0L;
      return l2;
    }
    Date localDate = new Date();
    ac localac = localz.b(this.c.a(localDate), this.c.b(localDate));
    if (localac != null);
    for (long l1 = localac.c + localac.b; ; l1 = 0L)
    {
      localz.a();
      l2 = l1;
      break;
    }
  }

  private void g()
  {
    PreferenceScreen localPreferenceScreen = a().a(this);
    a(localPreferenceScreen);
    PreferenceCategory localPreferenceCategory1 = new PreferenceCategory(this);
    localPreferenceCategory1.e(2131427999);
    localPreferenceScreen.c(localPreferenceCategory1);
    Preference localPreference1 = new Preference(this);
    localPreference1.c(2130903092);
    localPreference1.d(getString(2131428292));
    localPreference1.e(2131428293);
    String str1 = "";
    long l1;
    z localz;
    label211: Preference localPreference2;
    String str2;
    label315: label334: Preference localPreference3;
    String str3;
    label429: r localr1;
    String str4;
    label522: r localr2;
    String str5;
    label606: com.hoi.widget.n localn;
    label939: CustomCheckBoxPreference localCustomCheckBoxPreference2;
    switch (this.c.w)
    {
    default:
      localPreference1.a(str1);
      localPreference1.a(new ci(this));
      localPreferenceScreen.c(localPreference1);
      this.k = new Preference(this);
      this.k.c(2130903092);
      this.k.e(2131428128);
      this.k.a(new cj(this));
      l1 = 0L;
      localz = z.a(this);
      if (!localz.b(true))
      {
        l1 = 0L;
        this.l = l1;
        this.k.a(ax.c(this.l));
        localPreferenceScreen.c(this.k);
        localPreference2 = new Preference(this);
        localPreference2.e(2131428172);
        if ((!TextUtils.isEmpty(this.c.k)) && (!TextUtils.isEmpty(this.c.l)) && (!TextUtils.isEmpty(this.c.n)) && (!TextUtils.isEmpty(this.c.m)))
          break label1926;
        str2 = "";
        if (!str2.equals(""))
          break label2148;
        localPreference2.f(2131428052);
        localPreference2.c(2130903092);
        localPreference2.a(new ck(this));
        if ((!com.keniu.security.h.b.a()) && (!com.keniu.security.h.b.a))
          localPreferenceScreen.c(localPreference2);
        localPreference3 = new Preference(this);
        localPreference3.d(getString(2131428291));
        localPreference3.b(getString(2131428240));
        if (this.c.d != 0L)
          break label2158;
        str3 = getString(2131428052);
        localPreference3.a(str3);
        localPreference3.c(2130903092);
        localPreference3.a(new cl(this));
        localPreferenceScreen.c(localPreference3);
        localr1 = r.a(this, this.c.g);
        localr1.d(getString(2131428307));
        localr1.b(getString(2131428087));
        if (this.c.g != 0L)
          break label2173;
        str4 = getString(2131428052);
        localr1.a(str4);
        localr1.c(getString(2131428090));
        localr1.a(new cm(this));
        localPreferenceScreen.b(localr1);
        localr2 = r.a(this, this.c.h);
        localr2.b(getString(2131428082));
        if (this.c.h != 0L)
          break label2188;
        str5 = getString(2131428052);
        localr2.a(str5);
        localr2.c(getString(2131428086));
        localr2.d(getString(2131428308));
        localr2.a(new cn(this));
        localPreferenceScreen.c(localr2);
        localn = new com.hoi.widget.n(this);
        localn.d(getString(2131428295));
        localn.e(2131428249);
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(this.c.e);
        localn.a(getString(2131428000, arrayOfObject));
        localn.e();
        localn.b();
        localn.a(this.c.e);
        localn.a(new co(this));
        localPreferenceScreen.c(localn);
        ListPreference localListPreference = new ListPreference(this);
        localListPreference.c(2130903092);
        localListPreference.d(getString(2131428032));
        localListPreference.e(2131428024);
        localListPreference.b();
        localListPreference.l();
        localListPreference.n();
        localListPreference.b(this.c.u);
        localListPreference.a(localListPreference.m()[Integer.parseInt(this.c.u)]);
        localListPreference.a(new cp(this));
        localPreferenceScreen.c(localListPreference);
        this.o = new Preference(this);
        this.o.c(2130903092);
        this.o.d(getString(2131428033));
        this.o.b(getString(2131428040));
        if (this.c.v != 0)
          break label2203;
        this.o.f(2131428036);
        this.o.a(new bv(this));
        localPreferenceScreen.c(this.o);
        PreferenceCategory localPreferenceCategory2 = new PreferenceCategory(this);
        localPreferenceCategory2.e(2131428001);
        localPreferenceScreen.c(localPreferenceCategory2);
        CustomCheckBoxPreference localCustomCheckBoxPreference1 = new CustomCheckBoxPreference(this, null);
        localCustomCheckBoxPreference1.d(getString(2131428288));
        localCustomCheckBoxPreference1.e(2131428078);
        localCustomCheckBoxPreference1.a(this.c.a);
        localCustomCheckBoxPreference1.a(2131427935);
        localCustomCheckBoxPreference1.b(2131427936);
        localCustomCheckBoxPreference1.a(new bw(this, localCustomCheckBoxPreference1));
        localPreferenceScreen.c(localCustomCheckBoxPreference1);
        this.h = new CustomCheckBoxPreference(this, null);
        this.h.b(getString(2131428237));
        this.h.d("kn_traffis_xuanfuchuang_key");
        this.h.C();
        this.h.a(this.c.r);
        this.h.a(2131427935);
        this.h.b(2131427936);
        this.h.a(new bz(this));
        localPreferenceScreen.c(this.h);
        this.n = new CustomCheckBoxPreference(this, null);
        this.n.e(2131428081);
        this.n.d(getString(2131428080));
        this.n.a(2131427935);
        this.n.b(2131427936);
        h();
        this.n.a(new ca(this));
        localPreferenceScreen.c(this.n);
        localCustomCheckBoxPreference2 = new CustomCheckBoxPreference(this, null);
        localCustomCheckBoxPreference2.d(getString(2131428309));
        localCustomCheckBoxPreference2.e(2131428085);
        localCustomCheckBoxPreference2.a(this.c.c);
        localCustomCheckBoxPreference2.a(2131427935);
        localCustomCheckBoxPreference2.b(2131427936);
        localCustomCheckBoxPreference2.a(new cb(this));
        localPreferenceScreen.c(localCustomCheckBoxPreference2);
        this.f = new CustomCheckBoxPreference(this, null);
        this.i = ((WifiManager)getSystemService("wifi"));
        this.f.b(getString(2131428254));
        this.f.d(getString(2131428257));
        this.d = new cc(this);
        this.f.a(this.d);
        localPreferenceScreen.c(this.f);
        this.g = new CustomCheckBoxPreference(this, null);
        this.g.b(getString(2131428255));
        this.g.d(getString(2131428260));
        this.g.a(2131427935);
        this.g.b(2131427936);
        this.e = new cd(this);
        this.g.a(this.e);
        if ((!l.a()) && (!com.keniu.security.h.b.b()) && (!com.keniu.security.h.b.c()) && (!com.keniu.security.h.b.d()))
        {
          localPreferenceScreen.c(this.g);
          if (!d())
            break label2216;
          a(true, this);
          this.g.a(true);
        }
      }
      break;
    case 0:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      PreferenceCategory localPreferenceCategory3 = new PreferenceCategory(this);
      localPreferenceCategory3.e(2131428002);
      localPreferenceScreen.c(localPreferenceCategory3);
      cg localcg = new cg(this, this);
      localcg.d("traffic_clear_data");
      localcg.e(2131428107);
      localcg.c(getString(2131427865));
      localcg.d(getString(2131428059));
      localcg.f();
      localPreferenceScreen.c(localcg);
      CustomCheckBoxPreference localCustomCheckBoxPreference3 = new CustomCheckBoxPreference(this, null);
      localCustomCheckBoxPreference3.d(getString(2131428286));
      localCustomCheckBoxPreference3.e(2131428287);
      localCustomCheckBoxPreference3.a(2131427935);
      localCustomCheckBoxPreference3.b(2131427936);
      localCustomCheckBoxPreference3.a(this.c.q);
      localCustomCheckBoxPreference3.a(new ch(this));
      if ((!com.keniu.security.h.b.a()) && (!com.keniu.security.h.b.a))
        localPreferenceScreen.c(localCustomCheckBoxPreference3);
      String str6 = getString(2131428309);
      localr1.e(str6);
      localr2.e(str6);
      String str7 = getString(2131428288);
      localPreference3.e(str7);
      localn.e(str7);
      localCustomCheckBoxPreference2.e(str7);
      localcg.e(str7);
      this.h.e(str7);
      this.n.e("kn_traffis_xuanfuchuang_key");
      return;
      str1 = getString(2131428276);
      break;
      str1 = getString(2131428278);
      break;
      str1 = getString(2131428280);
      break;
      str1 = getString(2131428640);
      break;
      Date localDate = new Date();
      ac localac = localz.b(this.c.a(localDate), this.c.b(localDate));
      if (localac != null)
        l1 = localac.c + localac.b;
      localz.a();
      break label211;
      label1926: if (this.c.k.split(",")[1].equals(this.c.l.split(",")[1]))
      {
        str2 = this.c.k.split(",")[1] + "," + this.c.n.split(",")[1] + "," + this.c.m.split(",")[1];
        break label315;
      }
      str2 = this.c.k.split(",")[1] + "," + this.c.l.split(",")[1] + "," + this.c.n.split(",")[1] + "," + this.c.m.split(",")[1];
      break label315;
      label2148: localPreference2.a(str2);
      break label334;
      label2158: str3 = ax.c(this.c.d);
      break label429;
      label2173: str4 = ax.c(this.c.g);
      break label522;
      label2188: str5 = ax.c(this.c.h);
      break label606;
      label2203: this.o.f(2131428038);
      break label939;
      label2216: this.g.a(false);
    }
  }

  private void h()
  {
    if ((this.n == null) || (this.c == null));
    while (true)
    {
      return;
      if (this.c.r)
        this.n.a(this.c.s);
      else
        this.n.a(false);
    }
  }

  public final int a(int paramInt, Object paramObject1, Object paramObject2)
  {
    if ((paramInt == a.x) && (this.q))
    {
      this.q = false;
      if (!((Boolean)paramObject1).booleanValue())
        break label57;
      Intent localIntent = new Intent();
      localIntent.setClass(this, SaveTrafficModelSettingActivity.class);
      startActivityForResult(localIntent, 1);
    }
    while (true)
    {
      return 0;
      label57: this.p.show();
    }
  }

  protected final void b(int paramInt)
  {
    switch (paramInt)
    {
    default:
      this.f.a(false);
      this.f.a(getString(2131428198));
      this.f.c(true);
    case 2:
    case 3:
    case 0:
    case 1:
    }
    while (true)
    {
      return;
      this.f.a(getString(2131428194));
      this.f.c(false);
      continue;
      this.f.a(true);
      this.f.a(getString(2131428195));
      this.f.c(true);
      continue;
      this.f.a(getString(2131428196));
      this.f.c(false);
      continue;
      this.f.a(false);
      this.f.a(getString(2131428197));
      this.f.c(true);
    }
  }

  public final void c()
  {
    if (this.h != null)
      this.h.a(false);
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt1 == 1) && (paramInt2 == -1))
      g();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.a(paramBundle, 0);
    this.p = Toast.makeText(this, "提权失败,暂时无法使用此功能", 1);
    a.a().a(a.x, this, 1073741823);
    this.c = y.a(this);
    g();
  }

  protected void onDestroy()
  {
    super.onDestroy();
    a.a().a(a.x, this);
  }

  protected void onPause()
  {
    super.onPause();
    unregisterReceiver(this.j);
  }

  protected void onResume()
  {
    super.onResume();
    IntentFilter localIntentFilter = new IntentFilter("android.net.wifi.WIFI_STATE_CHANGED");
    localIntentFilter.addAction("android.net.wifi.supplicant.STATE_CHANGE");
    localIntentFilter.addAction("android.net.wifi.STATE_CHANGE");
    this.j = new bu(this);
    registerReceiver(this.j, localIntentFilter);
    if ((this.c != null) && (this.o != null))
    {
      if (this.c.v != 0)
        break label83;
      this.o.f(2131428036);
    }
    while (true)
    {
      return;
      label83: this.o.f(2131428038);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.TrafficSettingActivity
 * JD-Core Version:    0.6.2
 */