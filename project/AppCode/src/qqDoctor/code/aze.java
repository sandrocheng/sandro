import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import com.tencent.qqpimsecure.ui.activity.market.SoftwareSearchActivity;
import com.tencent.qqpimsecure.ui.activity.market.SpecialCategoryDetailActivity;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.ui.adapter.BasePinnedListAdapter;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.market.MarketManager;
import com.tencent.tmsecure.module.market.RequestInfo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public final class aze extends blt<la>
  implements AbsListView.OnScrollListener
{
  private jt a;
  private ho b;
  private boolean d = false;
  private View e;
  private Handler f = new Handler(new azf(this));
  private Handler g = new azi(this);

  public aze(Context paramContext)
  {
    super(paramContext);
  }

  private ajs d()
  {
    setOnRefreshListener(new azg(this));
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 1, false));
    return new aka(this, localArrayList);
  }

  public final List<ListModel<la>> a()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 1, false));
    return localArrayList;
  }

  protected final List<OperatingModel> createOperatingBarDataList()
  {
    return null;
  }

  public final View getFooterView()
  {
    return LayoutInflater.from(this.mContext).inflate(2130903320, null);
  }

  public final void loadDataList()
  {
    this.mHandler.sendEmptyMessage(201);
    long l = this.b.bm();
    if ((System.currentTimeMillis() - l < this.b.bq()) && (!this.d))
    {
      this.mDataList = this.a.c();
      if (this.mDataList.size() != 0);
    }
    else
    {
      MarketManager localMarketManager = (MarketManager)ManagerCreator.getManager(MarketManager.class);
      RequestInfo localRequestInfo = new RequestInfo();
      localRequestInfo.type = 11;
      localRequestInfo.time = String.valueOf(this.b.bn());
      localMarketManager.fetchCategoryList(localRequestInfo, new azh(this));
    }
    Collections.sort(this.mDataList, new aze.a());
    this.mHandler.sendEmptyMessage(-2);
  }

  public final void onCreate()
  {
    super.onCreate();
    this.b = ho.a();
    this.a = new jt();
    this.e = this.mFooterView.findViewById(2131231589);
    this.e.setVisibility(8);
    this.mListView.setOnScrollListener(this);
  }

  public final void onHandlerMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 200:
    case 201:
    }
    while (true)
    {
      return;
      this.e.setVisibility(0);
      if (this.mFooterView != null)
      {
        this.mFooterView.setVisibility(0);
        this.mListView.addFooterView(this.mFooterView);
        continue;
        this.e.setVisibility(8);
        this.mFooterView.setVisibility(8);
        this.mListView.removeFooterView(this.mFooterView);
      }
    }
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (isHasRefreshHeader())
      paramInt--;
    if (paramInt == this.mAdapter.getCount())
      if (this.e.isShown())
        this.mHandler.sendEmptyMessage(-1);
    while (true)
    {
      return;
      Intent localIntent = new Intent(this.mContext, SpecialCategoryDetailActivity.class);
      la localla = (la)this.mDataList.get(paramInt);
      localIntent.putExtra("title", localla.c());
      localIntent.putExtra("count", localla.e());
      localIntent.putExtra("id", localla.b());
      localIntent.putExtra("descript", localla.g());
      this.mContext.startActivity(localIntent);
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
    }
    while (true)
    {
      return true;
      this.d = true;
      this.g.sendEmptyMessage(-3);
      this.mHandler.sendEmptyMessage(-1);
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
    setReloadData(true);
    this.mHandler.sendEmptyMessage(-1);
  }

  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    getListView().onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
  }

  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
  }

  public final void refreshListData()
  {
    BasePinnedListAdapter localBasePinnedListAdapter = getAdapter();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 1, false));
    localBasePinnedListAdapter.setDataList(localArrayList);
    getAdapter().notifyDataSetChanged();
    if (getFrameworkTemplateUI() != null)
    {
      FrameworkTemplateUI localFrameworkTemplateUI = getFrameworkTemplateUI();
      String str = this.mContext.getString(2131429786);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(this.mDataList.size());
      localFrameworkTemplateUI.updateInfoBarText(String.format(str, arrayOfObject));
    }
    if (this.mDataList.size() > 0)
    {
      hideEmptyView();
      setReloadData(false);
    }
    if (isHasRefreshHeader())
      getListView().onRefreshComplete();
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131427996);
    paramFrameworkTemplateUI.setOptionButtonStyle((byte)19);
    getFrameworkTemplateUI().updateInfoBarText(this.mContext.getString(2131429787));
  }

  final class a
    implements Comparator<Object>
  {
    public final int compare(Object paramObject1, Object paramObject2)
    {
      la localla1 = (la)paramObject1;
      la localla2 = (la)paramObject2;
      int i;
      if (localla1.l() > localla2.l())
        i = -1;
      while (true)
      {
        return i;
        if (localla1.l() < localla2.l())
          i = 1;
        else
          i = 0;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aze
 * JD-Core Version:    0.6.2
 */