import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Message;
import android.view.Menu;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.TextView;
import com.tencent.qqpimsecure.ui.activity.market.DownloadManagerActivity;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.ui.adapter.BasePinnedListAdapter;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.market.MarketManager;
import com.tencent.tmsecure.module.market.RequestInfo;
import java.util.ArrayList;
import java.util.List;

public final class ayy extends bmd
  implements AbsListView.OnScrollListener
{
  private ho b;
  private jt d;
  private boolean e = false;
  private String f;
  private int g;
  private int h;
  private String i;
  private int j;
  private TextView k;
  private kv l;
  private Handler m = new Handler(new ayz(this));
  private Handler n = new azd(this);

  public ayy(Context paramContext)
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

  public final BasePinnedListAdapter<kv> createAdapter()
  {
    setOnRefreshListener(new aza(this));
    return super.createAdapter();
  }

  public final View getHeaderView()
  {
    TextView localTextView = new TextView(this.mContext);
    localTextView.setBackgroundColor(this.mContext.getResources().getColor(2131296292));
    int i1 = dc.a(this.mContext, 8.0F);
    localTextView.setPadding(i1, i1, i1, i1);
    localTextView.setTextColor(this.mContext.getResources().getColor(2131296286));
    localTextView.setTextSize(dc.a(this.mContext, 9.0F));
    this.i = getActivity().getIntent().getStringExtra("descript");
    localTextView.setText("    " + this.i);
    this.k = localTextView;
    return localTextView;
  }

  public final void loadDataList()
  {
    if (this.j == 1)
    {
      MarketManager localMarketManager2 = (MarketManager)ManagerCreator.getManager(MarketManager.class);
      RequestInfo localRequestInfo2 = new RequestInfo();
      localRequestInfo2.categoryID = -1;
      localRequestInfo2.fetchOffset = 0;
      localRequestInfo2.fetchSize = 1024;
      localRequestInfo2.type = 14;
      localRequestInfo2.sort_type = 0;
      localMarketManager2.fetchSpecialCategory(localRequestInfo2, new azc(this));
      a_();
      this.mHandler.sendEmptyMessage(100);
    }
    while (true)
    {
      return;
      jt localjt = this.d;
      String str = this.f;
      long l1 = Long.parseLong(localjt.a(localjt.g, str));
      if ((System.currentTimeMillis() - l1 < this.b.bq()) && (!this.e))
      {
        this.mDataList = a.a(this.d.a(this.f), this.a, this.g);
        if (this.mDataList.size() != 0);
      }
      else
      {
        MarketManager localMarketManager1 = (MarketManager)ManagerCreator.getManager(MarketManager.class);
        RequestInfo localRequestInfo1 = new RequestInfo();
        localRequestInfo1.categoryID = this.g;
        localRequestInfo1.fetchOffset = 0;
        localRequestInfo1.fetchSize = 1024;
        localRequestInfo1.type = 12;
        localRequestInfo1.sort_type = 0;
        localMarketManager1.fetchSoftwareList(localRequestInfo1, new azb(this));
      }
      a_();
    }
  }

  public final void onCreate()
  {
    super.onCreate();
    this.b = ho.a();
    this.d = new jt();
    this.mListView.setOnScrollListener(this);
    Intent localIntent = getActivity().getIntent();
    this.f = localIntent.getStringExtra("title");
    this.g = localIntent.getIntExtra("id", 0);
    this.h = localIntent.getIntExtra("count", 0);
    this.j = localIntent.getIntExtra("fromWhere", 0);
    if (this.j == 1)
      getListView().setVisibility(4);
  }

  public final void onHandlerMessage(Message paramMessage)
  {
    super.onHandlerMessage(paramMessage);
    switch (paramMessage.what)
    {
    default:
    case 100:
    }
    while (true)
    {
      return;
      if (getFrameworkTemplateUI() != null)
      {
        getFrameworkTemplateUI().setTitleTextData(this.f);
        FrameworkTemplateUI localFrameworkTemplateUI = getFrameworkTemplateUI();
        String str = this.mContext.getString(2131429790);
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(this.h);
        localFrameworkTemplateUI.updateInfoBarText(String.format(str, arrayOfObject));
        if (this.h != 0)
        {
          this.k.setText("    " + this.i);
          getListView().setVisibility(0);
        }
      }
    }
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (isHasRefreshHeader())
      paramInt--;
    if (paramInt == 0);
    while (true)
    {
      return;
      kv localkv = (kv)getDataList().get(paramInt - 1);
      if ((localkv.mState == -2) || (localkv.mState == -4))
      {
        of.a(localkv);
        this.l = localkv;
      }
      a(localkv.d, this.g);
    }
  }

  public final void onOptionClick(int paramInt)
  {
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
      this.e = true;
      this.n.sendEmptyMessage(-3);
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

  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    getListView().onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
  }

  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
  }

  public final void onStart()
  {
    super.onStart();
    if (this.l != null)
    {
      of.b(this.l);
      this.l = null;
    }
  }

  public final void refreshListData()
  {
    super.refreshListData();
    if (isHasRefreshHeader())
      getListView().onRefreshComplete();
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(this.f);
    paramFrameworkTemplateUI.setOptionButtonStyle((byte)0);
    FrameworkTemplateUI localFrameworkTemplateUI = getFrameworkTemplateUI();
    String str = this.mContext.getString(2131429790);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(this.h);
    localFrameworkTemplateUI.updateInfoBarText(String.format(str, arrayOfObject));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ayy
 * JD-Core Version:    0.6.2
 */