import QQPIM.FeatureKey;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.tencent.qqpimsecure.ui.activity.BenchmarkDownloadActivity;
import com.tencent.qqpimsecure.ui.activity.MainActivity;
import com.tencent.qqpimsecure.ui.activity.NotificationAdblockActivity;
import com.tencent.qqpimsecure.ui.activity.SyncAssistantActivity;
import com.tencent.qqpimsecure.ui.activity.WebUIActivity;
import com.tencent.qqpimsecure.ui.activity.commontools.IPCallActivity;
import com.tencent.qqpimsecure.ui.activity.commontools.LocationQueryActivity;
import com.tencent.qqpimsecure.ui.activity.commontools.NumberQueryActivity;
import com.tencent.qqpimsecure.ui.activity.commontools.ScreenShotListActivity;
import com.tencent.qqpimsecure.ui.activity.market.WeekRecDialog;
import com.tencent.qqpimsecure.ui.activity.smscheck.SMSChargeCheckActivity;
import com.tencent.qqpimsecure.uilib.model.TabModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.ui.adapter.TabAdapter;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.BaseServiceConnection;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSService;
import com.tencent.tmsecure.module.networkload.DownloadServiceBinder;
import com.tencent.tmsecure.module.phoneservice.IpDialManager;
import com.tencent.tmsecure.module.phoneservice.IpDialManagerSetting;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.util.List;

public final class aqa extends BaseView
  implements AdapterView.OnItemClickListener
{
  private ListView a;
  private TabAdapter b;
  private SoftwareManager c;
  private BaseServiceConnection d;
  private DownloadServiceBinder e;

  public aqa(Context paramContext)
  {
    super(paramContext, 2130903127);
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

  public final void onCreate()
  {
    super.onCreate();
    this.a = ((ListView)findViewById(2131230930));
    this.c = ((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class));
  }

  public final void onDestroy()
  {
    if (this.d != null)
    {
      TMSService.unBindService(of.class, this.d);
      this.d = null;
      if (of.a())
        TMSService.stopService(of.class);
    }
    super.onDestroy();
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    nd localnd = nd.a();
    TabModel localTabModel = (TabModel)this.b.getDataList().get(paramInt);
    Object localObject;
    kw localkw2;
    FeatureKey localFeatureKey2;
    kv localkv3;
    switch (localTabModel.getID())
    {
    default:
      localObject = null;
    case 11:
    case 47:
    case 12:
    case 13:
    case 14:
    case 43:
    case 44:
    case 42:
    case 41:
      while (true)
      {
        if (localObject != null)
          getActivity().startActivity((Intent)localObject);
        return;
        localnd.a(26077);
        localObject = new Intent(this.mContext, LocationQueryActivity.class);
        continue;
        localnd.a(26461);
        ho localho = ho.a();
        if (!localho.dQ())
          localho.dP();
        if (((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class)).isPackageInstalled("com.tencent.benchmark"))
        {
          this.c.startUpApp("com.tencent.benchmark");
          localObject = null;
        }
        else
        {
          localObject = new Intent(this.mContext, BenchmarkDownloadActivity.class);
          continue;
          localnd.a(26078);
          localObject = new Intent(this.mContext, NumberQueryActivity.class);
          continue;
          localnd.a(26076);
          localObject = new Intent(this.mContext, IPCallActivity.class);
          continue;
          localnd.a(26075);
          localObject = new Intent(this.mContext, ScreenShotListActivity.class);
          continue;
          localnd.a(26115);
          localObject = new Intent(this.mContext, SyncAssistantActivity.class);
          continue;
          localnd.a(26122);
          new xn(this.mContext).a();
          localObject = null;
          continue;
          localnd.a(26119);
          localObject = new Intent(this.mContext, SMSChargeCheckActivity.class);
          continue;
          localnd.a(70);
          if (!((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class)).isPackageInstalled("com.tencent.token"))
            break;
          this.c.startUpApp("com.tencent.token");
          localObject = null;
        }
      }
      if (this.d == null)
      {
        this.d = new BaseServiceConnection(WeekRecDialog.class);
        TMSService.startService(new of());
        this.e = ((DownloadServiceBinder)TMSService.bindService(of.class, this.d));
      }
      localkw2 = new kw();
      localkw2.setPackageName("com.tencent.token");
      localkw2.setAppName(this.mContext.getString(2131428251));
      localkw2.d("http://tools.3g.qq.com/j/MToken.apk");
      String str2 = localkw2.getPackageName();
      if (str2 == null)
        str2 = "";
      localFeatureKey2 = new FeatureKey(str2, localkw2.getAppName(), localkw2.d(), localkw2.D(), localkw2.getCertMD5(), (int)localkw2.getSize());
      localkv3 = of.a(localFeatureKey2.uniCode, this.e.getAllTasks());
      if (localkv3 != null)
        break;
    case 1001:
    case 45:
    case 1002:
    }
    for (kv localkv4 = of.a(localFeatureKey2.uniCode); ; localkv4 = localkv3)
    {
      if ((localkv4 == null) || (localkv4.d == null))
        localkv4 = new kv(localkw2);
      int k = localkv4.mState;
      boolean bool2 = true;
      int m = 2131427429;
      if ((k == -3) || (k == 3))
        m = 2131430186;
      while (true)
      {
        Dialog localDialog2 = new Dialog(this.mContext);
        localDialog2.setTitle(this.mContext.getString(2131428251));
        localDialog2.setMessage(this.mContext.getString(2131428256));
        localDialog2.setPositiveButton(m, new aqd(this, localDialog2, k, localkv4), 1);
        localDialog2.setNegativeButton(2131428688, new aqe(localDialog2), 2);
        localDialog2.setButtonEnable(0, bool2);
        localDialog2.show();
        localObject = null;
        break;
        if ((k == 1) || (k == 0) || (k == -1) || (k == 2))
        {
          m = 2131429077;
          bool2 = false;
        }
      }
      localnd.a(26214);
      if (((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class)).isPackageInstalled("com.wandoujia.phoenix2"))
      {
        localnd.a(26275);
        this.c.startUpApp("com.wandoujia.phoenix2");
        localObject = null;
        break;
      }
      if (this.d == null)
      {
        this.d = new BaseServiceConnection(WeekRecDialog.class);
        TMSService.startService(new of());
        this.e = ((DownloadServiceBinder)TMSService.bindService(of.class, this.d));
      }
      kw localkw1 = new kw();
      localkw1.setPackageName("com.wandoujia.phoenix2");
      localkw1.setAppName(this.mContext.getString(2131428250));
      localkw1.d("http://fwd.3g.qq.com:8080/forward.jsp?bid=898&g_f=18870&imei=&imsi=");
      String str1 = localkw1.getPackageName();
      if (str1 == null)
        str1 = "";
      FeatureKey localFeatureKey1 = new FeatureKey(str1, localkw1.getAppName(), localkw1.d(), localkw1.D(), localkw1.getCertMD5(), (int)localkw1.getSize());
      kv localkv1 = of.a(localFeatureKey1.uniCode, this.e.getAllTasks());
      if (localkv1 == null);
      for (kv localkv2 = of.a(localFeatureKey1.uniCode); ; localkv2 = localkv1)
      {
        if ((localkv2 == null) || (localkv2.d == null))
          localkv2 = new kv(localkw1);
        int i = localkv2.mState;
        boolean bool1 = true;
        int j = 2131427429;
        if ((i == -3) || (i == 3))
          j = 2131430186;
        while (true)
        {
          Dialog localDialog1 = new Dialog(this.mContext);
          localDialog1.setTitle(this.mContext.getString(2131428254));
          localDialog1.setMessage(this.mContext.getString(2131428255));
          localDialog1.setPositiveButton(j, new aqb(this, localDialog1, i, localkv2), 1);
          localDialog1.setNegativeButton(2131428688, new aqc(localDialog1), 2);
          localDialog1.setButtonEnable(0, bool1);
          localDialog1.show();
          localObject = null;
          break;
          if ((i == 1) || (i == 0) || (i == -1) || (i == 2))
          {
            j = 2131429077;
            bool1 = false;
          }
        }
        localnd.a(26291);
        Intent localIntent = new Intent(this.mContext, NotificationAdblockActivity.class);
        if (localTabModel.getmTagImage() != null)
        {
          ho.a().dm();
          localObject = localIntent;
          break;
          localnd.a(26422);
          localObject = new Intent();
          ((Intent)localObject).setClass(this.mContext, WebUIActivity.class);
          ((Intent)localObject).putExtra("extra_url", "http://m.buy.qq.com/t/vb2c/buyMobile.xhtml?gcfa=11910151&_lp=1&icfaId=&o_icfa=&pgid=11-1&t=t&extWrap=1&extLogo=&extTag=doctor");
          ((Intent)localObject).putExtra("extra_title", 2131428257);
          break;
        }
        localObject = localIntent;
        break;
      }
    }
  }

  public final void onResume()
  {
    super.onResume();
    this.b = new TabAdapter(this.mContext, 4, 4);
    this.a.setAdapter(this.b);
    this.a.setOnItemClickListener(this);
    int i;
    String str;
    TabModel localTabModel;
    if ((!di.b().b()) && (!Build.MODEL.toLowerCase().equals("gt-i9100")))
    {
      if (!ii.a().a.getBoolean("set_sdk_flag", false))
        break label138;
      IpDialManagerSetting localIpDialManagerSetting = ((IpDialManager)ManagerCreator.getManager(IpDialManager.class)).getIpDialSetting();
      i = localIpDialManagerSetting.getIpDialMode();
      str = localIpDialManagerSetting.getIpHeader();
      localTabModel = this.b.getItemByModelID(13);
      if (i != 2)
        break label174;
      localTabModel.setContent(this.mContext.getString(2131427491));
    }
    while (true)
    {
      return;
      label138: i = ii.a().a.getInt("auto", 2);
      str = ii.a().a.getString("number", "");
      break;
      label174: if ((str != null) && (!str.equals("")))
        localTabModel.setContent(String.format(this.mContext.getString(2131427492), new Object[] { str }));
    }
  }

  public final void onStart()
  {
    super.onStart();
    a.a(this, 2131427329);
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
    paramFrameworkTemplateUI.setBackButtonStyle((byte)1);
    paramFrameworkTemplateUI.setTitleTextData(2131427466);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aqa
 * JD-Core Version:    0.6.2
 */