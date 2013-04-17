import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.BaseAdapter;
import com.tencent.qqpimsecure.ui.activity.market.SoftwareSearchActivity;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.ui.adapter.BasePinnedListAdapter;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.ContextMenuDialog;
import com.tencent.qqpimsecure.uilib.view.imageview.AutoLoadingView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.market.MarketManager;
import com.tencent.tmsecure.module.market.RequestInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class axx extends bmd
  implements AbsListView.OnScrollListener
{
  private boolean b = false;
  private kv d;
  private int e = 0;
  private int f = 15;
  private int g = 0;
  private int h = 0;
  private boolean i = true;
  private int j = 0;
  private View k;
  private View l;
  private View m;
  private jt n;
  private ho o;
  private AutoLoadingView p;
  private AutoLoadingView q;
  private Handler r = new Handler(new axy(this));

  public axx(Context paramContext)
  {
    super(paramContext);
  }

  private void j()
  {
    MarketManager localMarketManager = (MarketManager)ManagerCreator.getManager(MarketManager.class);
    RequestInfo localRequestInfo = new RequestInfo();
    localRequestInfo.type = 15;
    localRequestInfo.fetchOffset = this.e;
    localRequestInfo.fetchSize = this.f;
    localMarketManager.fetchSpecialCategory(localRequestInfo, new aya(this));
  }

  private void k()
  {
    this.e += this.f;
    this.h = (1 + this.h);
    this.j = (1 + this.j);
    new Thread(new ayb(this)).start();
  }

  private void l()
  {
    this.e = 0;
    this.f = 15;
    this.h = 0;
    this.j = 0;
    this.i = true;
    this.mDataList.clear();
    f().setDataList(a());
    f().notifyDataSetChanged();
    setReloadData(true);
    this.b = true;
    this.mHandler.sendEmptyMessage(-1);
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
    f().setDataList(a());
    h();
    setReloadData(false);
    this.b = false;
  }

  public final BasePinnedListAdapter<kv> createAdapter()
  {
    setOnRefreshListener(new axz(this));
    return new alj(this, a());
  }

  protected final List<OperatingModel> createOperatingBarDataList()
  {
    return null;
  }

  public final View getFooterView()
  {
    return LayoutInflater.from(this.mContext).inflate(2130903307, null);
  }

  public final void loadDataList()
  {
    this.mDataList.clear();
    long l1 = this.o.bs();
    if ((System.currentTimeMillis() - l1 < this.o.bq()) && (!this.b))
    {
      jt localjt = this.n;
      List localList1 = localjt.a(localjt.m, null, null, "id ASC");
      if ((localList1 != null) && (localList1.size() > 0))
      {
        List localList2 = this.mDataList;
        ArrayList localArrayList = new ArrayList();
        Iterator localIterator = localList1.iterator();
        while (localIterator.hasNext())
        {
          kw localkw = (kw)localIterator.next();
          if (localkw.o() == 2)
            localArrayList.add(localkw);
        }
        localList2.addAll(a.a(localArrayList, this.a, 15));
        a_();
        this.mHandler.sendEmptyMessage(-2);
      }
    }
    while (true)
    {
      return;
      j();
      continue;
      j();
    }
  }

  protected final void onConfigModelCreate(UIConfigModel paramUIConfigModel)
  {
    super.onConfigModelCreate(paramUIConfigModel);
    paramUIConfigModel.mCreateEmptyTemplateUI = true;
    paramUIConfigModel.mCreateLoadingTemplateUI = false;
  }

  public final void onCreate()
  {
    super.onCreate();
    this.o = ho.a();
    this.n = new jt();
    this.mListView.setOnScrollListener(this);
    this.mListView.setFooterDividersEnabled(false);
    this.k = this.mFooterView.findViewById(2131231590);
    this.l = this.mFooterView.findViewById(2131231592);
    this.m = this.mFooterView.findViewById(2131231594);
    this.p = ((AutoLoadingView)this.mFooterView.findViewById(2131230972));
    this.q = ((AutoLoadingView)this.mFooterView.findViewById(2131230971));
    this.p.startRotationAnimation();
    this.q.startRotationAnimation();
    f().b();
  }

  public final void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    int i1 = ((AdapterView.AdapterContextMenuInfo)paramContextMenuInfo).position;
    if ((isHasRefreshHeader()) && (i1 <= 1));
    while (true)
    {
      return;
      if ((isHasRefreshHeader()) || (i1 != 0))
      {
        kv localkv = (kv)getDataList().get(i1 - 1);
        int i2 = localkv.mState;
        if ((i2 == 0) || (i2 == 1) || (i2 == -1) || (i2 == 2))
        {
          ContextMenuDialog localContextMenuDialog = new ContextMenuDialog((Activity)this.mContext);
          ArrayList localArrayList = new ArrayList();
          localContextMenuDialog.setContextItemPosition(i1);
          ContextMenuModel localContextMenuModel = new ContextMenuModel();
          localContextMenuModel.name = this.mContext.getString(2131428331);
          localContextMenuModel.eventCode = 10;
          localArrayList.add(localContextMenuModel);
          localContextMenuDialog.setDataAdapter(localArrayList);
          localContextMenuDialog.setOnItemClickListener(new ayc(this, localContextMenuDialog));
          localContextMenuDialog.setTitle(localkv.d.getAppName());
          localContextMenuDialog.show();
        }
      }
    }
  }

  public final void onDestroy()
  {
    super.onDestroy();
    this.p.stopRotationAnimation();
    this.q.stopRotationAnimation();
  }

  public final void onHandlerMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      return;
      this.k.setVisibility(0);
      this.l.setVisibility(8);
      this.m.setVisibility(8);
      continue;
      this.l.setVisibility(0);
      this.k.setVisibility(8);
      this.m.setVisibility(8);
      continue;
      this.m.setVisibility(0);
      this.l.setVisibility(8);
      this.k.setVisibility(8);
      continue;
      this.mFooterView.setVisibility(8);
      this.p.setVisibility(8);
      this.q.setVisibility(8);
      this.mListView.removeFooterView(this.mFooterView);
      continue;
      if (this.mFooterView != null)
      {
        this.mFooterView.setVisibility(0);
        this.p.setVisibility(0);
        this.q.setVisibility(0);
        this.mListView.addFooterView(this.mFooterView);
        this.mHandler.sendEmptyMessage(0);
      }
    }
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (isHasRefreshHeader())
      paramInt--;
    if (paramInt == this.mAdapter.getCount())
      if ((this.m.isShown()) || (this.l.isShown()))
      {
        k();
        this.i = true;
        this.j = 0;
        this.mHandler.sendEmptyMessage(0);
      }
    while (true)
    {
      return;
      kv localkv = (kv)getDataList().get(paramInt);
      if ((localkv.mState == -2) || (localkv.mState == -4))
      {
        of.a(localkv);
        this.d = localkv;
      }
      kw localkw = localkv.d;
      a(localkw, -1);
    }
  }

  public final void onOperatingBarClick(OperatingModel paramOperatingModel)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(this.mContext, SoftwareSearchActivity.class);
    this.mContext.startActivity(localIntent);
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
    }
    while (true)
    {
      return true;
      l();
    }
  }

  public final boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.clear();
    if (this.mDataList != null)
      a.b(paramMenu);
    return true;
  }

  public final void onResume()
  {
    super.onResume();
    if ((this.mDataList.size() == 0) && (isReloadData()))
      this.mHandler.sendEmptyMessage(-1);
    while (true)
    {
      nd.a().a(10);
      return;
      this.mHandler.sendEmptyMessage(-2);
    }
  }

  public final void onRetry()
  {
    setReloadData(true);
    this.mHandler.sendEmptyMessage(-1);
  }

  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    getListView().onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
    this.g = (-1 + (paramInt1 + paramInt2));
    if (isHasRefreshHeader())
      this.g = (-1 + this.g);
  }

  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    new StringBuilder().append(this.g).append(" RankingView onScrollStateChanged mAdapter.getCount() ").append(this.mAdapter.getCount()).append(" scrollState ").append(paramInt).toString();
    if ((this.g == this.mAdapter.getCount()) && (paramInt == 0))
    {
      new StringBuilder("RankingView onScrollStateChanged mAutoLoad ").append(this.i).toString();
      if (this.i)
        k();
    }
  }

  public final void onStart()
  {
    super.onStart();
    if (this.d != null)
    {
      of.b(this.d);
      this.d = null;
    }
  }

  public final void refreshListData()
  {
    f().setDataList(a());
    f().notifyDataSetChanged();
    if (this.j >= 3)
    {
      this.i = false;
      this.mHandler.sendEmptyMessage(1);
    }
    if ((this.mDataList == null) || (this.mDataList.size() <= 0))
      setEmptyText(this.mContext.getString(2131429794));
    while (true)
    {
      if (isHasRefreshHeader())
        getListView().onRefreshComplete();
      return;
      hideEmptyView();
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
    paramFrameworkTemplateUI.setTitleTextData(2131427985);
    paramFrameworkTemplateUI.setOptionButtonStyle((byte)19);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     axx
 * JD-Core Version:    0.6.2
 */