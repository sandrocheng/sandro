import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.view.Menu;
import android.view.View;
import android.widget.AdapterView;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.ui.activity.market.DownloadManagerActivity;
import com.tencent.qqpimsecure.ui.activity.market.SoftwareSearchActivity;
import com.tencent.qqpimsecure.ui.activity.virus.VirusScanActivity;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.market.MarketManager;
import com.tencent.tmsecure.module.market.RequestInfo;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.util.ArrayList;
import java.util.List;

public final class brf extends bmd
{
  protected Handler b = new brg(this);
  private jt d;
  private jk e;
  private String f;
  private kv g;
  private Handler h = new brj(this);

  public brf(Context paramContext)
  {
    super(paramContext);
  }

  public final List<ListModel<kv>> a()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 0, false));
    return localArrayList;
  }

  public final void a_()
  {
    g();
    this.mDataList = b(this.mDataList);
    f().setDataList(a());
    h();
    if (this.mDataList.size() > 0)
      setReloadData(false);
  }

  public final View getHeaderView()
  {
    return null;
  }

  public final void loadDataList()
  {
    MarketManager localMarketManager = (MarketManager)ManagerCreator.getManager(MarketManager.class);
    RequestInfo localRequestInfo = new RequestInfo();
    localRequestInfo.categoryID = -1;
    localRequestInfo.fetchOffset = 0;
    localRequestInfo.fetchSize = 1024;
    localRequestInfo.type = 13;
    localRequestInfo.sort_type = 0;
    localMarketManager.fetchSpecialCategory(localRequestInfo, new bri(this));
    if ((this.mDataList == null) || (this.mDataList.size() == 0))
      this.mDataList = a.a(this.d.a(this.f), this.a, -1);
    a_();
  }

  public final void onBackClick()
  {
    Intent localIntent1 = getActivity().getIntent();
    boolean bool = false;
    if (localIntent1 != null)
      bool = localIntent1.getBooleanExtra("extra_back_to_main", false);
    if (bool)
    {
      Context localContext = this.mContext;
      Intent localIntent2 = new Intent(localContext, VirusScanActivity.class);
      localIntent2.putExtra("extra_back_to_main", true);
      localContext.startActivity(localIntent2);
    }
    super.onBackClick();
  }

  public final void onCreate()
  {
    super.onCreate();
    ho.a();
    this.d = new jt();
    this.e = new jk(QQPimApplication.a());
    this.f = this.mContext.getString(2131428020);
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    kv localkv = (kv)getDataList().get(paramInt);
    if (localkv.d.o() == 1)
      nd.a().a(12);
    if ((localkv.mState == -2) || (localkv.mState == -4))
    {
      of.a(localkv);
      this.g = localkv;
    }
    if (localkv.mState == -3)
      if (!((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class)).startUpApp(localkv.d.getPackageName()))
      {
        ha.b(this.mContext, this.mContext.getString(2131429039));
        a(localkv.d, -1);
      }
    while (true)
    {
      return;
      a(localkv.d, -1);
    }
  }

  public final void onOptionClick(int paramInt)
  {
    Intent localIntent = new Intent(this.mContext, SoftwareSearchActivity.class);
    getActivity().startActivity(localIntent);
  }

  public final boolean onOptionsItemSelected(TabMenuView.MenuModel paramMenuModel)
  {
    switch (paramMenuModel.getId())
    {
    default:
    case 44:
    case 54:
    }
    while (true)
    {
      return true;
      this.h.sendEmptyMessage(-3);
      this.mHandler.sendEmptyMessage(-1);
      continue;
      this.mContext.startActivity(new Intent(this.mContext, DownloadManagerActivity.class));
    }
  }

  public final boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.clear();
    if (this.mDataList != null)
      a.a(paramMenu);
    return true;
  }

  public final void onResume()
  {
    super.onResume();
    if (isReloadData())
      this.mHandler.sendEmptyMessage(-1);
    while (true)
    {
      return;
      this.mHandler.sendEmptyMessage(-2);
    }
  }

  public final void onRetry()
  {
    this.mHandler.sendEmptyMessage(-1);
  }

  public final void onStart()
  {
    super.onStart();
    if (this.g != null)
    {
      of.b(this.g);
      this.g = null;
    }
    a.a(this, 2131427440);
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(this.f);
    getFrameworkTemplateUI().setInfoBarStyle((byte)49);
    paramFrameworkTemplateUI.setOptionButtonStyle((byte)16);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     brf
 * JD-Core Version:    0.6.2
 */