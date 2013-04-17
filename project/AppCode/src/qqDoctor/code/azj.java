import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewStub;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.TextView;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.ui.activity.HelpActivity;
import com.tencent.qqpimsecure.ui.activity.MainActivity;
import com.tencent.qqpimsecure.ui.activity.network.NetWorkManageSettingActivity;
import com.tencent.qqpimsecure.ui.activity.network.NetworkAccurateGuideActivity;
import com.tencent.qqpimsecure.ui.activity.network.TrafficFilterAndRankActivity;
import com.tencent.qqpimsecure.uilib.common.ViewUtil;
import com.tencent.qqpimsecure.uilib.model.TabModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.ui.adapter.TabAdapter;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.network.FlowPercentView;
import com.tencent.qqpimsecure.uilib.view.network.GPRSFlowView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.network.INetworkChangeCallBack;
import com.tencent.tmsecure.module.network.INetworkMonitor;
import com.tencent.tmsecure.module.network.NetworkInfoEntity;
import com.tencent.tmsecure.module.network.NetworkManager;
import java.util.Calendar;
import java.util.List;

public final class azj extends BaseView
  implements View.OnClickListener, AdapterView.OnItemClickListener
{
  private ho A;
  private boolean B;
  private INetworkMonitor C;
  private INetworkMonitor D;
  private INetworkChangeCallBack E;
  private INetworkChangeCallBack F;
  private Handler G;
  private int a;
  private TextView b;
  private ViewStub c;
  private LinearLayout d;
  private TextView e;
  private ButtonView f;
  private TextView g;
  private TextView h;
  private TextView i;
  private TextView j;
  private TextView k;
  private TextView l;
  private TextView m;
  private ImageView n;
  private TextView o;
  private GPRSFlowView p;
  private HorizontalScrollView q;
  private LinearLayout r;
  private FlowPercentView s;
  private ListView t;
  private TabAdapter u;
  private int v = 0;
  private boolean w;
  private List<NetworkInfoEntity> x;
  private NetworkManager y;
  private iu z;

  public azj(Context paramContext)
  {
    super(paramContext, 2130903178);
    this.w = bool;
    if (qx.a().h() == qx.a.q);
    while (true)
    {
      this.B = bool;
      this.E = new azk(this);
      this.F = new azm(this);
      this.G = new azn(this);
      this.mContext = paramContext;
      this.z = new iu(QQPimApplication.a());
      this.y = ((NetworkManager)ManagerCreator.getManager(NetworkManager.class));
      this.C = this.y.findMonitor("mobile");
      this.D = this.y.findMonitor("wifi");
      this.A = ho.a();
      return;
      bool = false;
    }
  }

  private boolean a()
  {
    boolean bool;
    if (new iy(QQPimApplication.a()).a.getBoolean("netword_service_status", di.b().f()))
      if (this.z.getTotalForMonth() <= 0L)
      {
        this.d.setVisibility(8);
        this.c.setVisibility(0);
        this.f = ((ButtonView)findViewById(2131230737));
        this.f.setText(this.mContext.getResources().getString(2131427484));
        this.f.setOnClickListener(new azq(this));
        bool = true;
      }
    while (true)
    {
      return bool;
      if (!this.z.j())
      {
        this.d.setVisibility(8);
        this.c.setVisibility(0);
        this.f = ((ButtonView)findViewById(2131230737));
        this.f.setText(this.mContext.getResources().getString(2131429143));
        this.f.setOnClickListener(new azr(this));
        bool = true;
      }
      else
      {
        this.c.setVisibility(8);
        this.d.setVisibility(0);
        bool = false;
        continue;
        this.d.setVisibility(0);
        this.c.setVisibility(8);
        bool = false;
      }
    }
  }

  private void b()
  {
    this.x = this.z.t();
    this.p = new GPRSFlowView(this.mContext, this.x);
    this.a = (1 + this.p.getGPRSFlowColumnWidth() * (1 + this.x.size()));
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(1 + this.a, this.p.getGPRSFlowHeight());
    this.r.removeAllViews();
    this.r.addView(this.p, localLayoutParams);
  }

  public final void onBackClick()
  {
    Intent localIntent = getActivity().getIntent();
    boolean bool = false;
    if (localIntent != null)
      bool = localIntent.getBooleanExtra("extra_back_to_main", false);
    if (bool)
    {
      Context localContext = this.mContext;
      localContext.startActivity(new Intent(localContext, MainActivity.class));
    }
    super.onBackClick();
  }

  public final void onClick(View paramView)
  {
    if (paramView.equals(this.e))
    {
      nd.a().a(26312);
      Intent localIntent = new Intent(this.mContext, NetworkAccurateGuideActivity.class);
      this.mContext.startActivity(localIntent);
    }
  }

  public final void onCreate()
  {
    super.onCreate();
    if (this.B)
    {
      findViewById(2131231166).setVisibility(8);
      findViewById(2131231161).setVisibility(8);
      findViewById(2131231162).setVisibility(8);
      findViewById(2131231176).setVisibility(8);
      this.b = ((TextView)findViewById(2131231165));
      this.o = ((TextView)findViewById(2131231173));
      this.o.setText(2131428891);
      this.j = ((TextView)findViewById(2131231174));
      this.k = ((TextView)findViewById(2131231175));
    }
    while (true)
    {
      this.u = new TabAdapter(this.mContext, 3, 1);
      this.t.setAdapter(this.u);
      this.t.setOnItemClickListener(this);
      ViewUtil.resetListViewHeight(this.t);
      fs.a();
      String str = getActivity().getIntent().getStringExtra("from_where");
      if ((str != null) && (str.equals("messageboxcenter")) && (a()))
        this.f.performClick();
      return;
      this.c = ((ViewStub)findViewById(2131231172));
      this.d = ((LinearLayout)findViewById(2131231170));
      this.e = ((TextView)findViewById(2131231171));
      this.e.setOnClickListener(this);
      this.b = ((TextView)findViewById(2131231165));
      this.g = ((TextView)findViewById(2131231167));
      this.l = ((TextView)findViewById(2131231161));
      this.m = ((TextView)findViewById(2131231162));
      this.n = ((ImageView)findViewById(2131231164));
      this.h = ((TextView)findViewById(2131231169));
      this.i = ((TextView)findViewById(2131231168));
      this.j = ((TextView)findViewById(2131231174));
      this.k = ((TextView)findViewById(2131231175));
      this.q = ((HorizontalScrollView)findViewById(2131231177));
      this.r = ((LinearLayout)findViewById(2131231178));
      this.t = ((ListView)findViewById(2131231179));
      this.s = ((FlowPercentView)findViewById(2131231160));
      this.s.addChangeListener(new azs(this));
    }
  }

  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
    a.e(paramMenu);
    HelpActivity.a(paramMenu);
    return true;
  }

  public final void onDestroy()
  {
    super.onDestroy();
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    switch (((TabModel)this.u.getDataList().get(paramInt)).getID())
    {
    default:
    case 9:
    }
    while (true)
    {
      return;
      nd.a().a(26092);
      Intent localIntent = new Intent(this.mContext, TrafficFilterAndRankActivity.class);
      this.mContext.startActivity(localIntent);
    }
  }

  public final void onOptionClick(int paramInt)
  {
    nd.a().a(26093);
    Intent localIntent = new Intent(this.mContext, NetWorkManageSettingActivity.class);
    getActivity().startActivity(localIntent);
  }

  public final boolean onOptionsItemSelected(TabMenuView.MenuModel paramMenuModel)
  {
    switch (paramMenuModel.getId())
    {
    default:
    case 17:
    }
    while (true)
    {
      return true;
      Dialog localDialog = new Dialog(this.mContext);
      localDialog.setTitle(this.mContext.getResources().getString(2131428563));
      localDialog.setMessage(this.mContext.getResources().getString(2131428569));
      localDialog.setPositiveButton(2131427397, new azt(this, localDialog), 2);
      localDialog.setNegativeButton(2131427379, new azl(localDialog), 2);
      localDialog.show();
    }
  }

  public final void onPause()
  {
    super.onPause();
    this.G.removeMessages(0);
    this.G.removeMessages(4);
    this.G.removeMessages(2);
    if (this.C != null)
      this.C.removeCallback(this.E);
    if (this.D != null)
      this.D.removeCallback(this.F);
  }

  public final boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.clear();
    a.e(paramMenu);
    return false;
  }

  public final void onResume()
  {
    super.onResume();
    if (this.s.getPrePercent() < 0.0F)
      this.s.setPrePercent(100.0F);
    this.s.setReStart(true);
    if (this.C == null)
      this.C = this.y.findMonitor("mobile");
    if (this.D == null)
      this.D = this.y.findMonitor("wifi");
    if (this.C == null)
    {
      this.y.addDefaultMobileMonitor("mobile", new iu(QQPimApplication.a()));
      this.C = this.y.findMonitor("mobile");
    }
    if (this.D == null)
    {
      this.y.addDefaultWifiMonitor("wifi", new iz(QQPimApplication.a()));
      this.D = this.y.findMonitor("wifi");
    }
    if (this.C != null)
      this.C.addCallback(this.E);
    if (this.D != null)
      this.D.addCallback(this.F);
    this.y.notifyConfigChange();
    if (!new iy(QQPimApplication.a()).a.getBoolean("netword_service_status", di.b().f()))
    {
      this.n.setImageResource(2130837906);
      this.b.setText(2131428111);
      this.b.setTextColor(this.mContext.getResources().getColor(2131296307));
    }
    boolean bool = a();
    if ((this.z.g()) && (bool))
      this.f.performClick();
    while (true)
    {
      if (this.y.isSupportTrafficState())
        this.u.notifyDataSetChanged();
      try
      {
        FrameworkTemplateUI localFrameworkTemplateUI1 = getFrameworkTemplateUI();
        int i3;
        label329: FrameworkTemplateUI localFrameworkTemplateUI2;
        if (localFrameworkTemplateUI1 == null)
        {
          i3 = 0;
          if (i3 == 0)
          {
            localFrameworkTemplateUI2 = getFrameworkTemplateUI();
            if (localFrameworkTemplateUI2 != null)
            {
              boolean[] arrayOfBoolean2 = this.z.s();
              int i4 = arrayOfBoolean2[0];
              i5 = arrayOfBoolean2[1];
              if (i4 != 0)
              {
                int i6 = Calendar.getInstance().get(5);
                int i7 = this.z.getClosingDayForMonth();
                if ((i6 + 30 - i7) % 30 >= 3)
                  break label879;
                new StringBuilder("less than 3 days , now = ").append(i6).append(" closeDay = ").append(i7).toString();
              }
            }
          }
        }
        while (true)
        {
          return;
          if (this.A.T())
          {
            this.A.U();
            this.G.sendEmptyMessageDelayed(3, 1500L);
          }
          b();
          Message localMessage = this.G.obtainMessage(2);
          localMessage.arg1 = 0;
          this.G.sendMessage(localMessage);
          ((ScrollView)findViewById(2131231158)).smoothScrollTo(0, 0);
          break;
          boolean[] arrayOfBoolean1 = this.z.r();
          int i1 = arrayOfBoolean1[0];
          int i2 = arrayOfBoolean1[1];
          if (i1 == 0)
          {
            i3 = 0;
            break label329;
          }
          if (i2 == 0)
          {
            int i10 = this.z.a(2);
            new StringBuilder("times in month = ").append(i10).toString();
            if (i10 >= 3)
            {
              i3 = 0;
              break label329;
            }
            List localList = this.z.b(2);
            if ((localList != null) && (localList.size() > 0) && (System.currentTimeMillis() - ((Long)localList.get(0)).longValue() < 604800000L))
            {
              i3 = 0;
              break label329;
            }
          }
          View localView2 = LayoutInflater.from(this.mContext).inflate(2130903272, null);
          ((TextView)localView2.findViewById(2131231203)).setText(2131430270);
          localFrameworkTemplateUI1.setTipsView(localView2);
          this.z.a(2, System.currentTimeMillis());
          this.z.a(false, i2);
          this.G.removeMessages(5);
          this.G.sendEmptyMessageDelayed(5, 8000L);
          i3 = 1;
          break label329;
          label730: View localView1 = LayoutInflater.from(this.mContext).inflate(2130903272, null);
          ((TextView)localView1.findViewById(2131231203)).setText(i9);
          localFrameworkTemplateUI2.setTipsView(localView1);
          this.z.a(1, System.currentTimeMillis());
          this.z.b(false, i5);
          this.G.removeMessages(5);
          this.G.sendEmptyMessageDelayed(5, 8000L);
        }
      }
      catch (Exception localException)
      {
        while (true)
        {
          int i5;
          localException.printStackTrace();
          continue;
          label879: 
          do
          {
            int i8 = this.z.a(1);
            new StringBuilder("times in month = ").append(i8).toString();
            if (i8 >= 2)
              break;
            if (i8 > 0)
            {
              i9 = 2131430269;
              break label730;
            }
            i9 = 2131430268;
            break label730;
          }
          while (i5 == 0);
          int i9 = 2131430269;
        }
      }
    }
  }

  public final void onStart()
  {
    super.onStart();
    a.a(this, 2131427329);
  }

  public final void onStop()
  {
    super.onStop();
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setBackButtonStyle((byte)1);
    paramFrameworkTemplateUI.setTitleTextData(2131428191);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
    paramFrameworkTemplateUI.setOptionButtonStyle((byte)18);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     azj
 * JD-Core Version:    0.6.2
 */