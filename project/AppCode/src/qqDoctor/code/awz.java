import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.os.Handler;
import android.view.Menu;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import com.tencent.qqpimsecure.ui.activity.market.DownloadManagerActivity;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.ui.adapter.BasePinnedListAdapter;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.market.MarketManager;
import com.tencent.tmsecure.module.market.RequestInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class awz extends awy<kw>
  implements AbsListView.OnScrollListener
{
  private int d;
  private String e;
  private int f;
  private int g = 0;
  private int h = 15;
  private int i = 0;
  private int j = 0;
  private boolean k = true;
  private int l = 0;
  private jt m;
  private ho n;
  private boolean o;
  private Handler p = new Handler(new axa(this));

  public awz(Context paramContext)
  {
    super(paramContext);
  }

  private ajw a()
  {
    setOnRefreshListener(new axb(this));
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 1, false));
    return new ajw(this, localArrayList);
  }

  private void d()
  {
    MarketManager localMarketManager = (MarketManager)ManagerCreator.getManager(MarketManager.class);
    RequestInfo localRequestInfo = new RequestInfo();
    localRequestInfo.categoryID = this.d;
    localRequestInfo.fetchOffset = this.g;
    localRequestInfo.fetchSize = this.h;
    localRequestInfo.type = 4;
    localRequestInfo.sort_type = 0;
    localMarketManager.fetchSoftwareList(localRequestInfo, new axc(this));
  }

  private void e()
  {
    this.g += this.h;
    this.j = (1 + this.j);
    this.l = (1 + this.l);
    new Thread(new axd(this)).start();
  }

  protected final List<OperatingModel> createOperatingBarDataList()
  {
    return null;
  }

  public final void loadDataList()
  {
    jt localjt1 = this.m;
    String str1 = this.e;
    long l1 = Long.parseLong(localjt1.a(localjt1.l, str1));
    if (System.currentTimeMillis() - l1 < this.n.bq())
    {
      jt localjt2 = this.m;
      String str2 = this.e;
      Cursor localCursor = localjt2.a.a(localjt2.l, null, "ctyName=?", new String[] { str2 }, null, null, "id ASC");
      ArrayList localArrayList = new ArrayList();
      while ((localCursor != null) && (localCursor.moveToNext()))
      {
        kw localkw = new kw();
        localkw.setPackageName(localCursor.getString(localCursor.getColumnIndex("pkgName")));
        localkw.setAppName(localCursor.getString(localCursor.getColumnIndex("appName")));
        localkw.setVersion(localCursor.getString(localCursor.getColumnIndex("version")));
        localkw.setVersionCode(Integer.parseInt(localCursor.getString(localCursor.getColumnIndex("versionCode"))));
        localkw.setSize(Long.parseLong(localCursor.getString(localCursor.getColumnIndex("size"))));
        localkw.setCertMD5(localCursor.getString(localCursor.getColumnIndex("certMD5")));
        localkw.setApkPath(localCursor.getString(localCursor.getColumnIndex("appPath")));
        localkw.b(localCursor.getString(localCursor.getColumnIndex("logoUrl")));
        localkw.f(localCursor.getString(localCursor.getColumnIndex("ctyName")));
        localkw.g(localCursor.getString(localCursor.getColumnIndex("expirationTime")));
        localkw.a(localCursor.getFloat(localCursor.getColumnIndex("score")));
        localArrayList.add(localkw);
      }
      if (localCursor != null)
        localCursor.close();
      localjt2.a.b();
      this.mDataList = localArrayList;
      Iterator localIterator = this.mDataList.iterator();
      while (localIterator.hasNext())
        ((kw)localIterator.next()).b(1);
      if (this.mDataList.size() < this.h)
      {
        this.k = false;
        this.mHandler.sendEmptyMessage(3);
      }
      if ((this.mDataList != null) && (this.mDataList.size() > 0))
        this.mHandler.sendEmptyMessage(-2);
    }
    while (true)
    {
      return;
      d();
      continue;
      d();
    }
  }

  protected final void onConfigModelCreate(UIConfigModel paramUIConfigModel)
  {
    super.onConfigModelCreate(paramUIConfigModel);
    paramUIConfigModel.mCreateEmptyTemplateUI = false;
    paramUIConfigModel.mCreateLoadingTemplateUI = false;
  }

  public final void onCreate()
  {
    super.onCreate();
    this.n = ho.a();
    this.m = new jt();
    Intent localIntent = getActivity().getIntent();
    this.d = localIntent.getIntExtra("id", 0);
    this.e = localIntent.getStringExtra("title");
    this.f = localIntent.getIntExtra("count", 0);
    this.mListView.setOnScrollListener(this);
    this.mListView.setFooterDividersEnabled(false);
    this.mHandler.sendEmptyMessage(-1);
    this.o = true;
  }

  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
    if (this.mDataList != null)
    {
      a.d(paramMenu);
      a.b(paramMenu);
    }
    return true;
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (isHasRefreshHeader())
      paramInt--;
    if (paramInt == this.mAdapter.getCount())
      if ((this.b.isShown()) || (this.a.isShown()))
      {
        e();
        this.k = true;
        this.l = 0;
        this.mHandler.sendEmptyMessage(0);
      }
    while (true)
    {
      return;
      kw localkw = (kw)this.mDataList.get(paramInt);
      kw.a((Activity)this.mContext, localkw, this.d, paramInt + 1);
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
      this.mDataList.clear();
      BasePinnedListAdapter localBasePinnedListAdapter = getAdapter();
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(new ListModel(this.mDataList, null, 1, false));
      localBasePinnedListAdapter.setDataList(localArrayList);
      getAdapter().notifyDataSetChanged();
      this.g = 0;
      this.h = 15;
      this.j = 0;
      this.l = 0;
      this.k = true;
      this.mHandler.sendEmptyMessage(3);
      this.mHandler.sendEmptyMessage(4);
      this.mHandler.sendEmptyMessage(-1);
      continue;
      this.mContext.startActivity(new Intent(this.mContext, DownloadManagerActivity.class));
    }
  }

  public final void onPause()
  {
    super.onPause();
    this.o = false;
  }

  public final void onResume()
  {
    super.onResume();
    if (!this.o)
      getAdapter().notifyDataSetChanged();
  }

  public final void onRetry()
  {
    this.mHandler.sendEmptyMessage(-1);
  }

  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    getListView().onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
    this.i = (-1 + (paramInt1 + paramInt2));
    if (isHasRefreshHeader())
      this.i = (-1 + this.i);
  }

  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if ((this.i == this.mAdapter.getCount()) && (paramInt == 0) && (this.k))
      e();
  }

  public final void refreshListData()
  {
    BasePinnedListAdapter localBasePinnedListAdapter = getAdapter();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 1, false));
    localBasePinnedListAdapter.setDataList(localArrayList);
    getAdapter().notifyDataSetChanged();
    if (this.l >= 3)
    {
      this.k = false;
      this.mHandler.sendEmptyMessage(1);
    }
    if (isHasRefreshHeader())
      getListView().onRefreshComplete();
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(this.e);
    FrameworkTemplateUI localFrameworkTemplateUI = getFrameworkTemplateUI();
    String str = this.mContext.getString(2131429791);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(this.f);
    localFrameworkTemplateUI.updateInfoBarText(String.format(str, arrayOfObject));
    paramFrameworkTemplateUI.setOptionButtonStyle((byte)16);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     awz
 * JD-Core Version:    0.6.2
 */