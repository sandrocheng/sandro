import QQPIM.FeatureKey;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Html;
import android.text.Spanned;
import android.widget.TextView;
import com.tencent.qqpimsecure.ui.activity.SyncAssistantActivity;
import com.tencent.qqpimsecure.ui.activity.market.WeekRecDialog;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.BaseServiceConnection;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.common.TMSService;
import com.tencent.tmsecure.module.networkload.DownloadServiceBinder;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public final class bos extends BaseView
{
  private Context a;
  private BaseServiceConnection b;
  private DownloadServiceBinder c;
  private kw d = new kw();
  private FeatureKey e;
  private SoftwareManager f;
  private kv g;
  private TextView h;

  public bos(Context paramContext)
  {
    super(paramContext, 2130903256);
    this.a = paramContext;
    this.f = ((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class));
    if (this.b == null)
    {
      this.b = new BaseServiceConnection(WeekRecDialog.class);
      TMSService.startService(new of());
      this.c = ((DownloadServiceBinder)TMSService.bindService(of.class, this.b));
    }
    this.d.setPackageName(this.a.getString(2131427527));
    this.d.setAppName(this.a.getString(2131427526));
    this.d.d("http://fwd.3g.qq.com:8080/forward.jsp?bid=902&g_f=20244&imei=&imsi=");
    String str = this.d.getPackageName();
    if (str == null)
      str = "";
    this.e = new FeatureKey(str, this.d.getAppName(), this.d.d(), this.d.D(), this.d.getCertMD5(), (int)this.d.getSize());
    this.g = of.a(this.e.uniCode, this.c.getAllTasks());
    if (this.g == null)
      this.g = of.a(this.e.uniCode);
    if ((this.g == null) || (this.g.d == null))
      this.g = new kv(this.d);
    Bundle localBundle = getActivity().getIntent().getExtras();
    if ((localBundle != null) && (localBundle.getBoolean("isStartDownloadImmediatly")));
    for (int i = 1; ; i = 0)
    {
      if (i != 0)
      {
        a();
        getActivity().finish();
      }
      return;
    }
  }

  private void a()
  {
    int i = this.g.mState;
    kv localkv = this.g;
    File localFile;
    if ((i == -3) || (i == 3))
    {
      localFile = of.d(localkv);
      if ((localFile == null) || (!localFile.exists()));
    }
    while (true)
    {
      try
      {
        this.f.installApp(localFile);
        return;
      }
      catch (Exception localException)
      {
        ha.b(TMSApplication.getApplicaionContext(), 2131427509);
        continue;
      }
      ha.b(this.a, 2131429518);
      continue;
      if ((i == 1) || (i == 2))
      {
        this.c.continueTask(localkv);
      }
      else if (i != 0)
      {
        of.a(localkv);
        this.c.startTask(localkv);
        ha.b(this.a, 2131427523);
      }
    }
  }

  public final List createOperatingBarDataList()
  {
    ArrayList localArrayList = new ArrayList();
    OperatingModel localOperatingModel1 = new OperatingModel(0, 2131428688);
    localOperatingModel1.setStyle(0);
    localArrayList.add(localOperatingModel1);
    OperatingModel localOperatingModel2 = new OperatingModel(1, 2131427522);
    localOperatingModel2.setStyle(1);
    localArrayList.add(localOperatingModel2);
    return localArrayList;
  }

  public final void onBackClick()
  {
    super.onBackClick();
    Intent localIntent = new Intent(this.a, SyncAssistantActivity.class);
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("isReturnFromDownload", true);
    localIntent.putExtras(localBundle);
    this.a.startActivity(localIntent);
    getActivity().finish();
  }

  public final void onCreate()
  {
    super.onCreate();
    this.h = ((TextView)findViewById(2131231401));
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.a.getString(2131427542));
    localStringBuilder.append("</font>");
    localStringBuilder.append("<font color='#047ecb'>");
    localStringBuilder.append(this.a.getString(2131427543));
    localStringBuilder.append("、");
    localStringBuilder.append(this.a.getString(2131427544));
    localStringBuilder.append("、");
    localStringBuilder.append(this.a.getString(2131427545));
    localStringBuilder.append("</font>");
    localStringBuilder.append(this.a.getString(2131427547));
    Spanned localSpanned = Html.fromHtml(localStringBuilder.toString());
    this.h.setText(localSpanned);
  }

  public final void onDestroy()
  {
    if (this.b != null)
    {
      TMSService.unBindService(of.class, this.b);
      this.b = null;
      if (of.a())
        TMSService.stopService(of.class);
    }
    super.onDestroy();
  }

  public final void onOperatingBarClick(OperatingModel paramOperatingModel)
  {
    nd localnd = nd.a();
    switch (paramOperatingModel.getID())
    {
    default:
    case 0:
    case 1:
    }
    while (true)
    {
      Intent localIntent = new Intent(this.a, SyncAssistantActivity.class);
      Bundle localBundle = new Bundle();
      localBundle.putBoolean("isReturnFromDownload", true);
      localIntent.putExtras(localBundle);
      this.a.startActivity(localIntent);
      getActivity().finish();
      return;
      localnd.a(26278);
      continue;
      a();
      localnd.a(26279);
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
    paramFrameworkTemplateUI.setBackButtonStyle((byte)1);
    paramFrameworkTemplateUI.setTitleTextData(2131428139);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bos
 * JD-Core Version:    0.6.2
 */