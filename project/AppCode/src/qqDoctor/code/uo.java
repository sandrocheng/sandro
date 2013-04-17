import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Handler;
import android.telephony.TelephonyManager;
import android.text.Html;
import android.view.View;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.tencent.qqpimsecure.service.BatteryEventReceiver;
import com.tencent.qqpimsecure.service.BatteryEventReceiver.a;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.ui.activity.HelpActivity;
import com.tencent.qqpimsecure.ui.activity.InterceptCenterActivity;
import com.tencent.qqpimsecure.ui.activity.MainActivity;
import com.tencent.qqpimsecure.ui.activity.PowerManagerDownloadActivity;
import com.tencent.qqpimsecure.ui.activity.QQPhoneManagerDownloadActivtity;
import com.tencent.qqpimsecure.ui.activity.SecureSpaceActivity;
import com.tencent.qqpimsecure.ui.activity.ShareActivity;
import com.tencent.qqpimsecure.ui.activity.SyncAssistantActivity;
import com.tencent.qqpimsecure.ui.activity.SysSettingActivity;
import com.tencent.qqpimsecure.ui.activity.SystemOptimizeActivity;
import com.tencent.qqpimsecure.ui.activity.WebUIActivity;
import com.tencent.qqpimsecure.ui.activity.commontools.CommonToolsActivity;
import com.tencent.qqpimsecure.ui.activity.commontools.IPCallActivity;
import com.tencent.qqpimsecure.ui.activity.commontools.NumberQueryActivity;
import com.tencent.qqpimsecure.ui.activity.commontools.ScreenShotListActivity;
import com.tencent.qqpimsecure.ui.activity.market.MarketActivity;
import com.tencent.qqpimsecure.ui.activity.network.NetWorkManagerActivity;
import com.tencent.qqpimsecure.ui.activity.software.SoftwareCenterActivity;
import com.tencent.qqpimsecure.ui.activity.virus.VirusScanActivity;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.model.TabModel;
import com.tencent.qqpimsecure.uilib.ui.activity.PluginActivity;
import com.tencent.qqpimsecure.uilib.ui.adapter.DesktopAdapter;
import com.tencent.qqpimsecure.uilib.ui.adapter.DesktopAdapter.FunctionModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.TabAdapter;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.desktop.DesktopLayout;
import com.tencent.qqpimsecure.uilib.view.desktop.DesktopMovingView;
import com.tencent.qqpimsecure.uilib.view.desktop.DesktopPanel;
import com.tencent.qqpimsecure.uilib.view.desktop.DesktopPanel.OnPanelListener;
import com.tencent.qqpimsecure.uilib.view.desktop.DesktopView;
import com.tencent.qqpimsecure.uilib.view.desktop.MainDesktopPanel;
import com.tencent.qqpimsecure.uilib.view.dialog.ContextMenuDialog;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.tccsync.LoginUtil;
import com.tencent.tmsecure.common.BaseServiceConnection;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.common.TMSService;
import com.tencent.tmsecure.module.aresengine.AresEngineManager;
import com.tencent.tmsecure.module.aresengine.DataHandler;
import com.tencent.tmsecure.module.aresengine.DataHandler.DataHandlerCallback;
import com.tencent.tmsecure.module.aresengine.DataIntercepter;
import com.tencent.tmsecure.module.network.NetworkInfoEntity;
import com.tencent.tmsecure.module.plugin.PluginManager;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public final class uo
  implements AdapterView.OnItemClickListener, AdapterView.OnItemLongClickListener, BatteryEventReceiver.a, DesktopPanel.OnPanelListener
{
  private Handler A;
  private DataHandler.DataHandlerCallback B;
  private BroadcastReceiver C;
  private it D;
  private BaseServiceConnection E;
  private Context a;
  private Runnable b;
  private Handler c = new Handler();
  private boolean d;
  private TabAdapter e;
  private ho f;
  private AresEngineManager g;
  private kd h;
  private WindowManager i;
  private DesktopLayout j;
  private LinearLayout k;
  private View l;
  private ImageView m;
  private ImageView n;
  private LinearLayout o;
  private LinearLayout p;
  private MainDesktopPanel q;
  private LinearLayout r;
  private ImageView s;
  private boolean t;
  private int u;
  private int v;
  private kk w;
  private PluginManager x;
  private BaseView y;
  private aaj z;

  public uo(BaseView paramBaseView, TabAdapter paramTabAdapter, aaj paramaaj)
  {
    if (qx.a().h() == qx.a.q);
    for (boolean bool = true; ; bool = false)
    {
      this.d = bool;
      this.t = false;
      this.u = -1;
      this.v = -1;
      this.A = new up(this);
      this.B = new us(this);
      this.C = new uu(this);
      this.a = paramBaseView.getContext();
      this.y = paramBaseView;
      this.e = paramTabAdapter;
      this.f = ho.a();
      this.g = ((AresEngineManager)ManagerCreator.getManager(AresEngineManager.class));
      this.z = paramaaj;
      this.D = new iu(QQPimApplication.a());
      return;
    }
  }

  private void g()
  {
    if (!new iy(QQPimApplication.a()).a.getBoolean("netword_service_status", di.b().f()))
      xb.a(true, true);
    Intent localIntent = new Intent(this.a, NetWorkManagerActivity.class);
    this.a.startActivity(localIntent);
  }

  private void h()
  {
    TabModel localTabModel = this.e.getItemByModelID(23);
    int i1;
    int i2;
    String str2;
    if (localTabModel != null)
    {
      i1 = this.f.G();
      i2 = new jp("smslog", "mms_pdu", "mms_parts").e();
      if (this.f.f())
        break label74;
      str2 = this.a.getString(2131427859);
    }
    label432: 
    while (true)
    {
      localTabModel.setContent(Html.fromHtml(str2));
      return;
      label74: if ((i1 == 0) && (i2 == 0))
      {
        Calendar localCalendar = Calendar.getInstance();
        int i3 = localCalendar.get(2);
        int i4 = this.f.M();
        label232: int i5;
        int i6;
        String str6;
        if (i4 == -2147483648)
        {
          this.f.g(i3);
          localCalendar.set(13, 0);
          localCalendar.set(12, 0);
          localCalendar.set(11, 0);
          localCalendar.set(5, 1);
          long l1 = localCalendar.getTimeInMillis();
          localCalendar.set(2, 1 + localCalendar.get(2));
          long l2 = localCalendar.getTimeInMillis();
          this.f.e(new jp("smslog", "mms_pdu", "mms_parts").a(l1, l2));
          this.f.f(new hi(0).a(l1, l2));
          i5 = this.f.K();
          i6 = this.f.L();
          if ((i5 != 0) || (i6 != 0))
            break label432;
          switch (this.f.b())
          {
          default:
            str6 = "";
          case 0:
          case 1:
          case 2:
          case 3:
          }
        }
        while (true)
        {
          str2 = String.format(this.a.getString(2131428749), new Object[] { str6 }).replace("：", ":");
          break;
          if (i4 == i3)
            break label232;
          this.f.g(i3);
          this.f.e(0);
          this.f.f(0);
          break label232;
          str6 = this.a.getString(2131427964);
          continue;
          str6 = this.a.getString(2131427965);
          continue;
          str6 = this.a.getString(2131427966);
          continue;
          str6 = this.a.getString(2131427967);
        }
        String str5 = this.a.getString(2131427816);
        Object[] arrayOfObject4 = new Object[2];
        arrayOfObject4[0] = Integer.valueOf(i5);
        arrayOfObject4[1] = Integer.valueOf(i6);
        str2 = String.format(str5, arrayOfObject4);
      }
      else if ((i1 == 0) && (i2 > 0))
      {
        String str4 = this.a.getString(2131427814);
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = ("<font color=\"#FF0000\">" + String.valueOf(i2) + "</font>");
        str2 = String.format(str4, arrayOfObject3);
      }
      else if ((i1 > 0) && (i2 == 0))
      {
        String str3 = this.a.getString(2131427813);
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = ("<font color=\"#FF0000\">" + String.valueOf(i1) + "</font>");
        str2 = String.format(str3, arrayOfObject2);
      }
      else
      {
        String str1 = this.a.getString(2131427815);
        Object[] arrayOfObject1 = new Object[2];
        arrayOfObject1[0] = ("<font color=\"#FF0000\">" + String.valueOf(i1) + "</font>");
        arrayOfObject1[1] = ("<font color=\"#FF0000\">" + String.valueOf(i2) + "</font>");
        str2 = String.format(str1, arrayOfObject1);
      }
    }
  }

  private void i()
  {
    TabModel localTabModel = this.e.getItemByModelID(25);
    int i1;
    int i2;
    label68: String str2;
    if (localTabModel != null)
    {
      List localList = ((ActivityManager)this.a.getSystemService("activity")).getRunningAppProcesses();
      i1 = 0;
      if (i1 >= localList.size())
        break label104;
      if (!"com.tencent.powermanager".equals(((ActivityManager.RunningAppProcessInfo)localList.get(i1)).processName))
        break label98;
      i2 = 1;
      if (i2 != 0)
        break label110;
      str2 = this.a.getResources().getString(2131429278);
    }
    while (true)
    {
      localTabModel.setContent(Html.fromHtml(str2));
      return;
      label98: i1++;
      break;
      label104: i2 = 0;
      break label68;
      label110: if (BatteryEventReceiver.b)
      {
        if (BatteryEventReceiver.a == 100)
        {
          String str3 = this.a.getResources().getString(2131429280);
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = Integer.valueOf(100);
          str2 = String.format(str3, arrayOfObject2);
        }
        else
        {
          str2 = this.a.getResources().getString(2131429281);
        }
      }
      else
      {
        int i3 = BatteryEventReceiver.a;
        if (i3 < 20)
        {
          str2 = this.a.getResources().getString(2131429279);
        }
        else
        {
          String str1 = this.a.getResources().getString(2131429280);
          Object[] arrayOfObject1 = new Object[1];
          arrayOfObject1[0] = Integer.valueOf(i3);
          str2 = String.format(str1, arrayOfObject1);
        }
      }
    }
  }

  private static int[] j()
  {
    ArrayList localArrayList = new ArrayList();
    if (new jk(QQPimApplication.a()).a() == jk.b())
      localArrayList.add(Integer.valueOf(0));
    localArrayList.add(Integer.valueOf(15));
    if (!ho.a().dQ())
      localArrayList.add(Integer.valueOf(17));
    int[] arrayOfInt = new int[localArrayList.size()];
    for (int i1 = 0; i1 < arrayOfInt.length; i1++)
      arrayOfInt[i1] = ((Integer)localArrayList.get(i1)).intValue();
    return arrayOfInt;
  }

  private void k()
  {
    if (((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class)).isPackageInstalled("com.tencent.powermanager"))
      ((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class)).startUpApp("com.tencent.powermanager");
    while (true)
    {
      return;
      this.a.startActivity(new Intent(this.a, PowerManagerDownloadActivity.class));
    }
  }

  public final void a()
  {
    i();
  }

  public final void a(int paramInt)
  {
    nd localnd = nd.a();
    switch (((TabModel)this.e.getDataList().get(paramInt)).getID())
    {
    default:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 49:
    }
    while (true)
    {
      return;
      localnd.a(26112);
      g();
      continue;
      localnd.a(2);
      int i2;
      if (this.f.cL())
      {
        qr.a(QQPimApplication.a()).a(120103000);
        boolean bool = this.f.cN();
        String str4 = this.f.cQ();
        if ((bool) && (str4 != null) && (!str4.equals("")))
        {
          i2 = 1;
          label196: if ((i2 == 0) || (((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class)).isPackageInstalled("com.tencent.qqphonebook")))
            break label384;
        }
      }
      label384: for (int i1 = 1; ; i1 = 0)
      {
        if (i1 == 0)
          break label390;
        String str1 = this.f.cQ();
        String str2 = this.f.cO();
        String str3 = this.f.cP();
        Dialog localDialog = new Dialog(this.a);
        localDialog.setTitle(str3);
        localDialog.setMessage(str2);
        localDialog.setPositiveButton(2131427397, new vb(this, localDialog, str1), 1);
        localDialog.setNegativeButton(2131427379, new uq(this, localDialog), 2);
        localDialog.setOnCancelListener(new ur(this));
        localDialog.show();
        this.f.J("");
        this.f.H("");
        this.f.I("");
        this.f.cM();
        break;
        i2 = 0;
        break label196;
      }
      label390: this.a.startActivity(new Intent(this.a, InterceptCenterActivity.class));
      continue;
      localnd.a(26113);
      this.a.startActivity(new Intent(this.a, SystemOptimizeActivity.class));
      continue;
      k();
      continue;
      localnd.a(26057);
      Intent localIntent4 = new Intent(this.a, VirusScanActivity.class);
      localIntent4.setFlags(603979776);
      this.a.startActivity(localIntent4);
      continue;
      localnd.a(8);
      Intent localIntent3 = new Intent(this.a, SoftwareCenterActivity.class);
      localIntent3.putExtra("where", 1);
      this.a.startActivity(localIntent3);
      continue;
      localnd.a(26055);
      this.a.startActivity(new Intent(this.a, MarketActivity.class));
      continue;
      new yj(this.a).a(1, null);
      continue;
      Intent localIntent2 = new Intent();
      localIntent2.setClass(this.a, SysSettingActivity.class);
      this.a.startActivity(localIntent2);
      continue;
      localnd.a(26057);
      Intent localIntent1 = new Intent(this.a, VirusScanActivity.class);
      localIntent1.setFlags(603979776);
      this.a.startActivity(localIntent1);
    }
  }

  public final void a(Context paramContext)
  {
    this.a = paramContext;
  }

  public final void a(BaseView paramBaseView)
  {
    this.w = new kk(QQPimApplication.a());
    this.h = new kd();
    this.x = ((PluginManager)ManagerCreator.getManager(PluginManager.class));
    this.j = ((DesktopLayout)paramBaseView.findViewById(2131231105));
    this.s = ((ImageView)paramBaseView.findViewById(2131231095));
    this.r = ((LinearLayout)paramBaseView.findViewById(2131231096));
    this.k = ((LinearLayout)paramBaseView.findViewById(2131231108));
    this.l = paramBaseView.findViewById(2131231098);
    this.m = ((ImageView)paramBaseView.findViewById(2131231102));
    this.n = ((ImageView)paramBaseView.findViewById(2131231101));
    this.o = ((LinearLayout)paramBaseView.findViewById(2131231103));
    this.p = ((LinearLayout)paramBaseView.findViewById(2131231100));
    this.q = ((MainDesktopPanel)paramBaseView.findViewById(2131231097));
    this.i = ((WindowManager)this.a.getSystemService("window"));
    this.q.setOnPanelListener(this);
    if (this.d)
    {
      this.j.setVisibility(8);
      this.s.setVisibility(8);
      this.r.setVisibility(8);
      this.k.setVisibility(8);
      this.l.setVisibility(8);
      this.q.setVisibility(8);
    }
    while (true)
    {
      this.q.setNineBoxNew(j());
      this.q.setNineBoxHot(new int[0]);
      new ux(this).start();
      Animation localAnimation1 = AnimationUtils.loadAnimation(this.a, 2130968580);
      this.m.startAnimation(localAnimation1);
      localAnimation1.setAnimationListener(new uy(this));
      Animation localAnimation2 = AnimationUtils.loadAnimation(this.a, 2130968579);
      this.n.startAnimation(localAnimation2);
      return;
      this.q.getBottomDesktopView().setOnItemClickListener(this);
      this.q.getTopDesktopView().setOnItemClickListener(this);
      this.j.setBottomGridView(this.q.getBottomDesktopView());
      this.j.setTopGridView(this.q.getTopDesktopView());
      this.j.setCurrentGridView(1);
      this.j.setAnimLayout(this.k);
    }
  }

  public final void b()
  {
    TabModel localTabModel1 = this.e.getItemByModelID(24);
    int i1;
    String str10;
    if (localTabModel1 != null)
    {
      zo localzo = zo.a();
      i1 = vh.g();
      if (!localzo.d())
        break label512;
      String str16 = this.a.getString(2131428134);
      String str17 = str16 + i1;
      str10 = str17 + "%";
    }
    while (true)
    {
      localTabModel1.setContent(Html.fromHtml(str10));
      this.e.notifyDataSetChanged();
      TabModel localTabModel2 = this.e.getItemByModelID(22);
      String[] arrayOfString;
      iz localiz;
      if (localTabModel2 != null)
      {
        if (!this.d)
          break label799;
        arrayOfString = new String[] { "", "" };
        localiz = new iz(QQPimApplication.a());
        if (new iy(QQPimApplication.a()).a.getBoolean("netword_service_status", di.b().f()))
          break label751;
        arrayOfString[0] = (this.a.getString(2131427918) + ",");
        arrayOfString[1] = this.a.getString(2131427919);
        label232: if (arrayOfString.length >= 2)
          localTabModel2.setContent(Html.fromHtml((arrayOfString[0] + arrayOfString[1]).toString()));
      }
      this.q.setNineBoxNumber(3, this.h.a.getInt("update_app_count", 0));
      if (!this.d)
        h();
      TabModel localTabModel3 = this.e.getItemByModelID(49);
      km localkm;
      if (localTabModel3 != null)
      {
        localkm = f.d();
        if (!localkm.b.getBoolean("ever_whole_scan", false))
          localTabModel3.setContent(this.a.getString(2131427929));
      }
      else
      {
        label358: if (this.b == null)
          this.b = new uv(this);
        this.c.postDelayed(this.b, 800L);
        op localop = op.a();
        if (!localop.b())
          localop.c();
      }
      try
      {
        this.g.findIntercepter("incoming_sms").dataHandler().addCallback(this.B);
        this.g.findIntercepter("outing_sms").dataHandler().addCallback(this.B);
        this.g.findIntercepter("incoming_call").dataHandler().addCallback(this.B);
        BatteryEventReceiver.a(this);
        IntentFilter localIntentFilter = new IntentFilter();
        localIntentFilter.addAction("com.tencent.qqpimsecure.function_info_refresh");
        this.a.registerReceiver(this.C, localIntentFilter);
        return;
        label512: if (vh.a(i1))
        {
          String str14 = this.a.getString(2131428134);
          String str15 = str14 + "<font color=\"#FF0000\">" + i1 + "%</font>,";
          str10 = str15 + this.a.getString(2131428135);
          continue;
        }
        if (i1 > 50)
        {
          String str11 = this.a.getString(2131428134);
          String str12 = str11 + i1;
          String str13 = str12 + "%,";
          str10 = str13 + this.a.getString(2131428136);
          continue;
        }
        String str9 = this.a.getString(2131429720);
        Object[] arrayOfObject9 = new Object[1];
        arrayOfObject9[0] = (i1 + "%");
        str10 = String.format(str9, arrayOfObject9);
        continue;
        label751: NetworkInfoEntity localNetworkInfoEntity1 = localiz.getTodayNetworkInfoEntity();
        arrayOfString[0] = (this.a.getString(2131427927) + a.c(localNetworkInfoEntity1.mUsedForMonth));
        break label232;
        label799: arrayOfString = new String[] { "", "" };
        iu localiu = new iu(QQPimApplication.a());
        if (!new iy(QQPimApplication.a()).a.getBoolean("netword_service_status", di.b().f()))
        {
          boolean bool1 = di.b().f();
          boolean bool2 = localiu.e();
          if ((!bool1) && (bool2))
          {
            arrayOfString[0] = ("<font color=\"#FF0000\">" + this.a.getString(2131427925) + "</font>");
            arrayOfString[1] = ("<font color=\"#FF0000\">" + this.a.getString(2131427926) + "</font>");
            break label232;
          }
          arrayOfString[0] = ("<font color=\"#FF0000\">" + this.a.getString(2131427918) + ",</font>");
          arrayOfString[1] = ("<font color=\"#FF0000\">" + this.a.getString(2131427919) + "</font>");
          break label232;
        }
        NetworkInfoEntity localNetworkInfoEntity2 = this.D.getTodayNetworkInfoEntity();
        long l2 = this.D.getTotalForMonth();
        if (l2 <= 0L)
        {
          StringBuilder localStringBuilder = new StringBuilder("<font color=\"#FF0000\">");
          String str2 = this.a.getString(2131427923);
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = a.c(localNetworkInfoEntity2.mUsedForDay);
          arrayOfString[0] = (String.format(str2, arrayOfObject2) + "</font>");
          arrayOfString[1] = ("<font color=\"#FF0000\">" + this.a.getString(2131427924) + "</font>");
          break label232;
        }
        long l3 = this.D.getUsedForMonth();
        float f1 = (float)(100.0D * l3 / l2);
        if (f1 < 90.0F)
        {
          String str7 = this.a.getString(2131427923);
          Object[] arrayOfObject7 = new Object[1];
          arrayOfObject7[0] = a.c(localNetworkInfoEntity2.mUsedForDay);
          arrayOfString[0] = String.format(str7, arrayOfObject7);
          String str8 = this.a.getString(2131427921);
          Object[] arrayOfObject8 = new Object[1];
          arrayOfObject8[0] = a.c(l2 - l3);
          arrayOfString[1] = String.format(str8, arrayOfObject8);
          break label232;
        }
        if ((f1 >= 90.0F) && (f1 <= 100.0F))
        {
          String str5 = this.a.getString(2131427923);
          Object[] arrayOfObject5 = new Object[1];
          arrayOfObject5[0] = a.c(localNetworkInfoEntity2.mUsedForDay);
          arrayOfString[0] = String.format(str5, arrayOfObject5);
          String str6 = this.a.getString(2131427921);
          Object[] arrayOfObject6 = new Object[1];
          arrayOfObject6[0] = ("<font color=\"#FF0000\">" + a.c(l2 - l3) + "</font>");
          arrayOfString[1] = String.format(str6, arrayOfObject6);
          break label232;
        }
        if (f1 <= 100.0F)
          break label232;
        String str3 = this.a.getString(2131427923);
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = a.c(localNetworkInfoEntity2.mUsedForDay);
        arrayOfString[0] = String.format(str3, arrayOfObject3);
        String str4 = this.a.getString(2131427922);
        Object[] arrayOfObject4 = new Object[1];
        arrayOfObject4[0] = ("<font color=\"#FF0000\">" + a.c(l3 - l2) + "</font>");
        arrayOfString[1] = String.format(str4, arrayOfObject4);
        break label232;
        long l1 = (System.currentTimeMillis() - localkm.b.getLong("last_time_of_whole_scan", -1L)) / 86400000L;
        if (l1 > 7L)
        {
          String str1 = this.a.getString(2131427931);
          Object[] arrayOfObject1 = new Object[1];
          arrayOfObject1[0] = Long.valueOf(l1);
          localTabModel3.setContent(String.format(str1, arrayOfObject1));
          break label358;
        }
        localTabModel3.setContent(this.a.getString(2131427930));
      }
      catch (Exception localException)
      {
        while (true)
          localException.printStackTrace();
      }
    }
  }

  public final boolean b(int paramInt)
  {
    Intent localIntent1 = new Intent();
    switch (paramInt)
    {
    case 49:
    default:
    case 32:
    case 50:
    case 20:
    case 0:
    case 2:
    case 99:
    case 100:
    case 57:
    case 65:
    case 79:
    }
    while (true)
    {
      return true;
      localIntent1.setClass(this.a, ShareActivity.class);
      this.a.startActivity(localIntent1);
      continue;
      Intent localIntent3 = new Intent();
      localIntent3.setClass(this.a, SysSettingActivity.class);
      this.a.startActivity(localIntent3);
      continue;
      aai.a().c();
      ((MainActivity)this.a).finish();
      continue;
      ContextMenuDialog localContextMenuDialog = new ContextMenuDialog(this.a);
      ArrayList localArrayList = new ArrayList();
      ContextMenuModel localContextMenuModel1 = new ContextMenuModel();
      localContextMenuModel1.name = this.a.getString(2131428640);
      localContextMenuModel1.eventCode = 21;
      localArrayList.add(localContextMenuModel1);
      if (!this.d)
      {
        ContextMenuModel localContextMenuModel2 = new ContextMenuModel();
        localContextMenuModel2.name = this.a.getString(2131428641);
        localContextMenuModel2.eventCode = 22;
        localArrayList.add(localContextMenuModel2);
      }
      localContextMenuDialog.setDataAdapter(localArrayList);
      localContextMenuDialog.setOnItemClickListener(new va(this, localContextMenuDialog));
      localContextMenuDialog.setTitle(2131428400);
      localContextMenuDialog.show();
      continue;
      new ss(this.a, true, false).c();
      ho localho = ho.a();
      Long.valueOf(System.currentTimeMillis());
      localho.m();
      nd.a().a(26151);
      continue;
      TabMenuView.MenuModel localMenuModel = new TabMenuView.MenuModel();
      localMenuModel.setId(99);
      HelpActivity.a(localMenuModel, this.a);
      continue;
      mx.a(this.a, "http://misc.3g.qq.com/g/s?aid=gqindex&g_f=7279");
      continue;
      ds.a((MainActivity)this.a, "http://ti.3g.qq.com/g/s?aid=h&u=qqsecure", ((MainActivity)this.a).getTaskId());
      continue;
      ds.a((MainActivity)this.a, "http://msm.qq.com", ((MainActivity)this.a).getTaskId());
      continue;
      if (((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class)).isPackageInstalled("com.qq.AppService"))
      {
        Intent localIntent2 = this.a.getPackageManager().getLaunchIntentForPackage("com.qq.AppService");
        if (localIntent2 != null)
        {
          localIntent2.setFlags(270532608);
          this.a.startActivity(localIntent2);
        }
      }
      else
      {
        localIntent1.setClass(this.a, QQPhoneManagerDownloadActivtity.class);
        this.a.startActivity(localIntent1);
      }
    }
  }

  public final void c()
  {
    this.c.removeCallbacks(this.b);
    try
    {
      this.g.findIntercepter("incoming_sms").dataHandler().removeCallback(this.B);
      this.g.findIntercepter("outing_sms").dataHandler().removeCallback(this.B);
      this.g.findIntercepter("incoming_call").dataHandler().removeCallback(this.B);
      if (this.q.getTopDesktopView().getLastSelectedView() != null)
      {
        this.q.getTopDesktopView().getLastSelectedView().onDesktopActionUp();
        BatteryEventReceiver.b(this);
        if (this.C != null)
          this.a.unregisterReceiver(this.C);
        return;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        continue;
        if (this.q.getBottomDesktopView().getLastSelectedView() != null)
          this.q.getBottomDesktopView().getLastSelectedView().onDesktopActionUp();
      }
    }
  }

  public final void d()
  {
    TMSService.unBindService(of.class, this.E);
    this.E = null;
    if (of.a())
      TMSService.stopService(of.class);
    if (this.q.getTopDesktopView().getLastSelectedView() != null)
      this.q.getTopDesktopView().getLastSelectedView().onDesktopActionUp();
    while (true)
    {
      if (this.q != null)
      {
        if (this.q.getBottomDesktopView() != null)
          this.q.getBottomDesktopView().setOnItemClickListener(null);
        if (this.q.getTopDesktopView() != null)
          this.q.getTopDesktopView().setOnItemClickListener(null);
        this.q.setOnPanelListener(null);
        this.q = null;
      }
      this.a = null;
      return;
      if (this.q.getBottomDesktopView().getLastSelectedView() != null)
        this.q.getBottomDesktopView().getLastSelectedView().onDesktopActionUp();
    }
  }

  public final MainDesktopPanel e()
  {
    return this.q;
  }

  public final void f()
  {
    String str1 = "http://pt.3g.qq.com/i/308/";
    String str2 = cw.d().e();
    if (str2 != null)
    {
      new StringBuilder().append(str1).append(str2).toString();
      String str3 = ((TelephonyManager)this.a.getSystemService("phone")).getDeviceId();
      qx localqx = qx.a();
      int i1 = TMSApplication.getIntFromEnvMap("pversion");
      int i2 = Integer.parseInt(TMSApplication.getIntFromEnvMap("cversion") + TMSApplication.getIntFromEnvMap("hotfix"));
      str1 = LoginUtil.makeQQPimSecureAndroidFeekBackUrl(str3, str2, localqx.d(), i1, i2, Integer.parseInt(localqx.b()));
    }
    Intent localIntent = new Intent();
    localIntent.addFlags(268435456);
    localIntent.setClass(this.a, WebUIActivity.class);
    localIntent.putExtra("extra_url", str1);
    this.a.startActivity(localIntent);
  }

  public final void onBeforePanelClosed(DesktopPanel paramDesktopPanel)
  {
  }

  public final void onBeforePanelOpened(DesktopPanel paramDesktopPanel)
  {
    this.s.setVisibility(0);
    this.s.setOnClickListener(new uz(this));
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    nd localnd = nd.a();
    int i1;
    if (paramAdapterView == this.q.getTopDesktopView())
    {
      i1 = ((DesktopAdapter.FunctionModel)this.q.getTopAdapter().getDataList().get(paramInt)).getId();
      switch (i1)
      {
      case 6:
      case 7:
      case 12:
      case 19:
      case 20:
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      default:
      case 1:
      case 5:
      case 10:
      case 4:
      case 3:
      case 9:
      case 0:
      case 2:
      case 11:
      case 8:
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 30:
      }
    }
    while (true)
    {
      if (this.q.isOpen())
        this.q.setOpen(false, true);
      return;
      i1 = ((DesktopAdapter.FunctionModel)this.q.getBottomAdapter().getDataList().get(paramInt)).getId();
      break;
      localnd.a(26116);
      Intent localIntent10 = new Intent(this.a, SystemOptimizeActivity.class);
      localIntent10.putExtra("where", 3);
      this.a.startActivity(localIntent10);
      continue;
      Intent localIntent9 = new Intent(this.a, SystemOptimizeActivity.class);
      localIntent9.putExtra("where", 2);
      this.a.startActivity(localIntent9);
      continue;
      localnd.a(26120);
      Intent localIntent8 = new Intent(this.a, IPCallActivity.class);
      this.a.startActivity(localIntent8);
      continue;
      localnd.a(26055);
      this.a.startActivity(new Intent(this.a, MarketActivity.class));
      continue;
      localnd.a(8);
      Intent localIntent7 = new Intent(this.a, SoftwareCenterActivity.class);
      localIntent7.putExtra("where", 1);
      this.a.startActivity(localIntent7);
      continue;
      localnd.a(26121);
      Intent localIntent6 = new Intent(this.a, NumberQueryActivity.class);
      this.a.startActivity(localIntent6);
      continue;
      localnd.a(26057);
      Intent localIntent5 = new Intent(this.a, VirusScanActivity.class);
      localIntent5.setFlags(603979776);
      this.a.startActivity(localIntent5);
      continue;
      localnd.a(26117);
      localnd.a(8);
      Intent localIntent4 = new Intent(this.a, SoftwareCenterActivity.class);
      localIntent4.putExtra("where", 2);
      this.a.startActivity(localIntent4);
      continue;
      localnd.a(26118);
      new yj(this.a).a(1, null);
      continue;
      localnd.a(5);
      aaj localaaj = this.z;
      if (aai.a().d())
      {
        Intent localIntent3 = new Intent(localaaj.a, SecureSpaceActivity.class);
        localaaj.a.startActivity(localIntent3);
      }
      else
      {
        new yj(localaaj.a).a(3, null);
        continue;
        localnd.a(26115);
        Intent localIntent2 = new Intent(this.a, SyncAssistantActivity.class);
        this.a.startActivity(localIntent2);
        continue;
        localnd.a(26112);
        g();
        continue;
        localnd.a(26122);
        new xn(this.a).a();
        continue;
        localnd.a(26114);
        k();
        continue;
        localnd.a(26124);
        this.a.startActivity(new Intent(this.a, CommonToolsActivity.class));
        continue;
        localnd.a(26123);
        Intent localIntent1 = new Intent(this.a, ScreenShotListActivity.class);
        this.a.startActivity(localIntent1);
        continue;
        Adapter localAdapter = paramAdapterView.getAdapter();
        if ((localAdapter instanceof DesktopAdapter))
        {
          PluginActivity.startPluginMainViews(((DesktopAdapter.FunctionModel)((DesktopAdapter)localAdapter).getDataList().get(paramInt)).getPluginKey());
          localnd.a(26125);
        }
      }
    }
  }

  public final boolean onItemLongClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (!this.t);
    while (true)
    {
      return true;
      if (paramAdapterView.getId() == 2131231106)
      {
        this.j.setCurrentGridView(1);
        DesktopAdapter.FunctionModel localFunctionModel2 = (DesktopAdapter.FunctionModel)this.q.getTopAdapter().getDataList().get(paramInt);
        View localView2 = this.q.getTopDesktopView().createSelectedView(localFunctionModel2.getImageResId(), localFunctionModel2.getTextResId(), paramView, paramInt);
        if (this.v == -1)
          this.v = (this.y.getNotificationHeight() + this.r.getTop() + this.l.getHeight());
        int i3 = paramView.getLeft();
        int i4 = this.v + paramView.getTop();
        this.i.addView(localView2, this.j.getWindowParams(i3, i4));
        this.q.getTopDesktopView().startDragMode(paramInt);
        this.q.getTopAdapter().notifyDataSetChanged();
      }
      else
      {
        this.j.setCurrentGridView(0);
        DesktopAdapter.FunctionModel localFunctionModel1 = (DesktopAdapter.FunctionModel)this.q.getBottomAdapter().getDataList().get(paramInt);
        View localView1 = this.q.getBottomDesktopView().createSelectedView(localFunctionModel1.getImageResId(), localFunctionModel1.getTextResId(), paramView, paramInt);
        if (this.u == -1)
          this.u = (this.y.getNotificationHeight() + this.r.getTop() + this.l.getHeight() + this.j.getOffsetY());
        int i1 = paramView.getLeft();
        int i2 = this.u + paramView.getTop();
        this.i.addView(localView1, this.j.getWindowParams(i1, i2));
        this.q.getBottomDesktopView().startDragMode(paramInt);
        this.q.getBottomAdapter().notifyDataSetChanged();
      }
    }
  }

  public final void onPanelClosed(DesktopPanel paramDesktopPanel)
  {
    this.o.setVisibility(4);
    this.p.setVisibility(0);
    this.s.setVisibility(8);
    this.q.getBottomDesktopView().setOnItemLongClickListener(null);
    this.q.getTopDesktopView().setOnItemLongClickListener(null);
    this.t = false;
  }

  public final void onPanelOpened(DesktopPanel paramDesktopPanel)
  {
    this.o.setVisibility(0);
    this.p.setVisibility(4);
    if (this.w.a.getInt("open_nine_box_count", 0) <= 5)
    {
      this.q.setNineBoxNew(j());
      this.q.setNineBoxHot(new int[0]);
    }
    nd.a().a(38);
    int i1 = this.w.a.getInt("open_nine_box_count", 0);
    if (i1 <= 5)
    {
      kk localkk = this.w;
      int i2 = i1 + 1;
      localkk.b.putInt("open_nine_box_count", i2).commit();
    }
    while (true)
    {
      this.q.getBottomDesktopView().setOnItemLongClickListener(this);
      this.q.getTopDesktopView().setOnItemLongClickListener(this);
      this.t = true;
      return;
      this.q.getHandler().sendEmptyMessage(0);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     uo
 * JD-Core Version:    0.6.2
 */